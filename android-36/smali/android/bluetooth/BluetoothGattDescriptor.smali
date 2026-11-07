.class public Landroid/bluetooth/BluetoothGattDescriptor;
.super Ljava/lang/Object;
.source "BluetoothGattDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DISABLE_NOTIFICATION_VALUE:[B

.field public static final whitelist ENABLE_INDICATION_VALUE:[B

.field public static final whitelist ENABLE_NOTIFICATION_VALUE:[B

.field public static final whitelist PERMISSION_READ:I = 0x1

.field public static final whitelist PERMISSION_READ_ENCRYPTED:I = 0x2

.field public static final whitelist PERMISSION_READ_ENCRYPTED_MITM:I = 0x4

.field public static final whitelist PERMISSION_WRITE:I = 0x10

.field public static final whitelist PERMISSION_WRITE_ENCRYPTED:I = 0x20

.field public static final whitelist PERMISSION_WRITE_ENCRYPTED_MITM:I = 0x40

.field public static final whitelist PERMISSION_WRITE_SIGNED:I = 0x80

.field public static final whitelist PERMISSION_WRITE_SIGNED_MITM:I = 0x100


# instance fields
.field protected greylist mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field protected greylist mInstance:I

.field protected blacklist mPermissions:I

.field protected blacklist mUuid:Ljava/util/UUID;

.field protected blacklist mValue:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 37
    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_1e

    sput-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    .line 40
    new-array v1, v0, [B

    fill-array-data v1, :array_24

    sput-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    .line 43
    new-array v0, v0, [B

    fill-array-data v0, :array_2a

    sput-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    .line 151
    new-instance v0, Landroid/bluetooth/BluetoothGattDescriptor$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothGattDescriptor$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_1e
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_24
    .array-data 1
        0x2t
        0x0t
    .end array-data

    nop

    :array_2a
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method constructor blacklist <init>(Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/util/UUID;II)V
    .registers 5
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "instance"    # I
    .param p4, "permissions"    # I

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothGattDescriptor;->initDescriptor(Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/util/UUID;II)V

    .line 124
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mUuid:Ljava/util/UUID;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mInstance:I

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mPermissions:I

    .line 166
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothGattDescriptor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGattDescriptor;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/UUID;I)V
    .registers 5
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "permissions"    # I

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Landroid/bluetooth/BluetoothGattDescriptor;->initDescriptor(Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/util/UUID;II)V

    .line 112
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/UUID;II)V
    .registers 5
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "instance"    # I
    .param p3, "permissions"    # I

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattDescriptor;->initDescriptor(Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/util/UUID;II)V

    .line 129
    return-void
.end method

.method private blacklist initDescriptor(Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/util/UUID;II)V
    .registers 5
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "instance"    # I
    .param p4, "permissions"    # I

    .line 133
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 134
    iput-object p2, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mUuid:Ljava/util/UUID;

    .line 135
    iput p3, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mInstance:I

    .line 136
    iput p4, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mPermissions:I

    .line 137
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;
    .registers 2

    .line 174
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method public blacklist getInstanceId()I
    .registers 2

    .line 206
    iget v0, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mInstance:I

    return v0
.end method

.method public whitelist getPermissions()I
    .registers 2

    .line 224
    iget v0, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mPermissions:I

    return v0
.end method

.method public whitelist getUuid()Ljava/util/UUID;
    .registers 2

    .line 193
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public whitelist getValue()[B
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 239
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mValue:[B

    return-object v0
.end method

.method greylist setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 2
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 184
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 185
    return-void
.end method

.method public blacklist setInstanceId(I)V
    .registers 2
    .param p1, "instanceId"    # I

    .line 215
    iput p1, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mInstance:I

    .line 216
    return-void
.end method

.method public whitelist setValue([B)Z
    .registers 3
    .param p1, "value"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 257
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mValue:[B

    .line 258
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 146
    new-instance v0, Landroid/os/ParcelUuid;

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mUuid:Ljava/util/UUID;

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 147
    iget v0, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mInstance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget v0, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mPermissions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    return-void
.end method
