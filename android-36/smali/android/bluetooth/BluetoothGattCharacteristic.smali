.class public Landroid/bluetooth/BluetoothGattCharacteristic;
.super Ljava/lang/Object;
.source "BluetoothGattCharacteristic.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothGattCharacteristic$WriteType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FORMAT_FLOAT:I = 0x34

.field public static final whitelist FORMAT_SFLOAT:I = 0x32

.field public static final whitelist FORMAT_SINT16:I = 0x22

.field public static final whitelist FORMAT_SINT32:I = 0x24

.field public static final whitelist FORMAT_SINT8:I = 0x21

.field public static final whitelist FORMAT_UINT16:I = 0x12

.field public static final whitelist FORMAT_UINT32:I = 0x14

.field public static final whitelist FORMAT_UINT8:I = 0x11

.field public static final whitelist PERMISSION_READ:I = 0x1

.field public static final whitelist PERMISSION_READ_ENCRYPTED:I = 0x2

.field public static final whitelist PERMISSION_READ_ENCRYPTED_MITM:I = 0x4

.field public static final whitelist PERMISSION_WRITE:I = 0x10

.field public static final whitelist PERMISSION_WRITE_ENCRYPTED:I = 0x20

.field public static final whitelist PERMISSION_WRITE_ENCRYPTED_MITM:I = 0x40

.field public static final whitelist PERMISSION_WRITE_SIGNED:I = 0x80

.field public static final whitelist PERMISSION_WRITE_SIGNED_MITM:I = 0x100

.field public static final whitelist PROPERTY_BROADCAST:I = 0x1

.field public static final whitelist PROPERTY_EXTENDED_PROPS:I = 0x80

.field public static final whitelist PROPERTY_INDICATE:I = 0x20

.field public static final whitelist PROPERTY_NOTIFY:I = 0x10

.field public static final whitelist PROPERTY_READ:I = 0x2

.field public static final whitelist PROPERTY_SIGNED_WRITE:I = 0x40

.field public static final whitelist PROPERTY_WRITE:I = 0x8

.field public static final whitelist PROPERTY_WRITE_NO_RESPONSE:I = 0x4

.field public static final whitelist WRITE_TYPE_DEFAULT:I = 0x2

.field public static final whitelist WRITE_TYPE_NO_RESPONSE:I = 0x1

.field public static final whitelist WRITE_TYPE_SIGNED:I = 0x4


# instance fields
.field protected whitelist mDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field protected greylist mInstance:I

.field protected blacklist mKeySize:I

.field protected blacklist mPermissions:I

.field protected blacklist mProperties:I

.field protected greylist mService:Landroid/bluetooth/BluetoothGattService;

.field protected blacklist mUuid:Ljava/util/UUID;

.field protected blacklist mValue:[B

.field protected blacklist mWriteType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 260
    new-instance v0, Landroid/bluetooth/BluetoothGattCharacteristic$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothGattCharacteristic$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothGattCharacteristic;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;III)V
    .registers 7
    .param p1, "service"    # Landroid/bluetooth/BluetoothGattService;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "instanceId"    # I
    .param p4, "properties"    # I
    .param p5, "permissions"    # I

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/16 v0, 0x10

    iput v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mKeySize:I

    .line 211
    invoke-direct/range {p0 .. p5}, Landroid/bluetooth/BluetoothGattCharacteristic;->initCharacteristic(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;III)V

    .line 212
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/16 v0, 0x10

    iput v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mKeySize:I

    .line 272
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mUuid:Ljava/util/UUID;

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mInstance:I

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mProperties:I

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mPermissions:I

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mKeySize:I

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mWriteType:I

    .line 279
    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    .line 280
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattDescriptor;

    .line 281
    .local v1, "desc":Landroid/bluetooth/BluetoothGattDescriptor;
    invoke-virtual {v1, p0}, Landroid/bluetooth/BluetoothGattDescriptor;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 282
    .end local v1    # "desc":Landroid/bluetooth/BluetoothGattDescriptor;
    goto :goto_41

    .line 283
    :cond_51
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothGattCharacteristic-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/UUID;II)V
    .registers 11
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "properties"    # I
    .param p3, "permissions"    # I

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/16 v0, 0x10

    iput v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mKeySize:I

    .line 197
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    .end local p1    # "uuid":Ljava/util/UUID;
    .end local p2    # "properties":I
    .end local p3    # "permissions":I
    .local v3, "uuid":Ljava/util/UUID;
    .local v5, "properties":I
    .local v6, "permissions":I
    invoke-direct/range {v1 .. v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->initCharacteristic(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;III)V

    .line 198
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/UUID;III)V
    .registers 12
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "instanceId"    # I
    .param p3, "properties"    # I
    .param p4, "permissions"    # I

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/16 v0, 0x10

    iput v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mKeySize:I

    .line 220
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .end local p1    # "uuid":Ljava/util/UUID;
    .end local p2    # "instanceId":I
    .end local p3    # "properties":I
    .end local p4    # "permissions":I
    .local v3, "uuid":Ljava/util/UUID;
    .local v4, "instanceId":I
    .local v5, "properties":I
    .local v6, "permissions":I
    invoke-direct/range {v1 .. v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->initCharacteristic(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;III)V

    .line 221
    return-void
.end method

.method private static blacklist bytesToFloat(BB)F
    .registers 10
    .param p0, "b0"    # B
    .param p1, "b1"    # B

    .line 707
    nop

    .line 708
    invoke-static {p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v0

    invoke-static {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/16 v1, 0xc

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedToSigned(II)I

    move-result v0

    .line 709
    .local v0, "mantissa":I
    invoke-static {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v1

    const/4 v2, 0x4

    shr-int/2addr v1, v2

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedToSigned(II)I

    move-result v1

    .line 710
    .local v1, "exponent":I
    int-to-double v2, v0

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    int-to-double v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    return v2
.end method

.method private static blacklist bytesToFloat(BBBB)F
    .registers 11
    .param p0, "b0"    # B
    .param p1, "b1"    # B
    .param p2, "b2"    # B
    .param p3, "b3"    # B

    .line 715
    nop

    .line 717
    invoke-static {p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v0

    .line 718
    invoke-static {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 719
    invoke-static {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 716
    const/16 v1, 0x18

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedToSigned(II)I

    move-result v0

    .line 721
    .local v0, "mantissa":I
    int-to-double v1, v0

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    int-to-double v5, p3

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-float v1, v1

    return v1
.end method

.method private static blacklist getTypeLen(I)I
    .registers 2
    .param p0, "formatType"    # I

    .line 685
    and-int/lit8 v0, p0, 0xf

    return v0
.end method

.method private blacklist initCharacteristic(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;III)V
    .registers 7
    .param p1, "service"    # Landroid/bluetooth/BluetoothGattService;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "instanceId"    # I
    .param p4, "properties"    # I
    .param p5, "permissions"    # I

    .line 229
    iput-object p2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mUuid:Ljava/util/UUID;

    .line 230
    iput p3, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mInstance:I

    .line 231
    iput p4, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mProperties:I

    .line 232
    iput p5, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mPermissions:I

    .line 233
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mService:Landroid/bluetooth/BluetoothGattService;

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    .line 237
    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mProperties:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1e

    .line 238
    const/4 v0, 0x1

    iput v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mWriteType:I

    goto :goto_21

    .line 240
    :cond_1e
    const/4 v0, 0x2

    iput v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mWriteType:I

    .line 242
    :goto_21
    return-void
.end method

.method private static blacklist intToSignedBits(II)I
    .registers 5
    .param p0, "i"    # I
    .param p1, "size"    # I

    .line 734
    if-gez p0, :cond_10

    .line 735
    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    add-int/lit8 v2, p1, -0x1

    shl-int v2, v1, v2

    sub-int/2addr v2, v1

    and-int v1, p0, v2

    add-int p0, v0, v1

    .line 737
    :cond_10
    return p0
.end method

.method private static blacklist unsignedByteToInt(B)I
    .registers 2
    .param p0, "b"    # B

    .line 690
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method private static blacklist unsignedBytesToInt(BB)I
    .registers 4
    .param p0, "b0"    # B
    .param p1, "b1"    # B

    .line 695
    invoke-static {p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v0

    invoke-static {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    return v0
.end method

.method private static blacklist unsignedBytesToInt(BBBB)I
    .registers 6
    .param p0, "b0"    # B
    .param p1, "b1"    # B
    .param p2, "b2"    # B
    .param p3, "b3"    # B

    .line 700
    invoke-static {p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v0

    invoke-static {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 701
    invoke-static {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 702
    invoke-static {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    .line 700
    return v0
.end method

.method private static blacklist unsignedToSigned(II)I
    .registers 5
    .param p0, "unsigned"    # I
    .param p1, "size"    # I

    .line 726
    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    and-int/2addr v0, p0

    if-eqz v0, :cond_16

    .line 727
    add-int/lit8 v0, p1, -0x1

    shl-int v0, v1, v0

    add-int/lit8 v2, p1, -0x1

    shl-int v2, v1, v2

    sub-int/2addr v2, v1

    and-int v1, p0, v2

    sub-int/2addr v0, v1

    mul-int/lit8 p0, v0, -0x1

    .line 729
    :cond_16
    return p0
.end method


# virtual methods
.method public whitelist addDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .registers 3
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    .line 301
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-virtual {p1, p0}, Landroid/bluetooth/BluetoothGattDescriptor;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 303
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;
    .registers 5
    .param p1, "uuid"    # Ljava/util/UUID;

    .line 438
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattDescriptor;

    .line 439
    .local v1, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 440
    return-object v1

    .line 442
    .end local v1    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    :cond_1d
    goto :goto_6

    .line 443
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist getDescriptor(Ljava/util/UUID;I)Landroid/bluetooth/BluetoothGattDescriptor;
    .registers 6
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "instanceId"    # I

    .line 312
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattDescriptor;

    .line 313
    .local v1, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattDescriptor;->getInstanceId()I

    move-result v2

    if-ne v2, p2, :cond_23

    .line 314
    return-object v1

    .line 316
    .end local v1    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    :cond_23
    goto :goto_6

    .line 317
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDescriptors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            ">;"
        }
    .end annotation

    .line 428
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getFloatValue(II)Ljava/lang/Float;
    .registers 8
    .param p1, "formatType"    # I
    .param p2, "offset"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 522
    invoke-static {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getTypeLen(I)I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_c

    return-object v2

    .line 524
    :cond_c
    packed-switch p1, :pswitch_data_42

    .line 533
    :pswitch_f
    return-object v2

    .line 529
    :pswitch_10
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    aget-byte v0, v0, p2

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v2, p2, 0x1

    aget-byte v1, v1, v2

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v3, p2, 0x2

    aget-byte v2, v2, v3

    iget-object v3, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v4, p2, 0x3

    aget-byte v3, v3, v4

    invoke-static {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->bytesToFloat(BBBB)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 526
    :pswitch_2f
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    aget-byte v0, v0, p2

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v2, p2, 0x1

    aget-byte v1, v1, v2

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->bytesToFloat(BB)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :pswitch_data_42
    .packed-switch 0x32
        :pswitch_2f
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public whitelist getInstanceId()I
    .registers 2

    .line 357
    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mInstance:I

    return v0
.end method

.method public whitelist getIntValue(II)Ljava/lang/Integer;
    .registers 8
    .param p1, "formatType"    # I
    .param p2, "offset"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 477
    invoke-static {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getTypeLen(I)I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_c

    return-object v2

    .line 479
    :cond_c
    sparse-switch p1, :sswitch_data_a0

    .line 505
    return-object v2

    .line 496
    :sswitch_10
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    aget-byte v0, v0, p2

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v2, p2, 0x1

    aget-byte v1, v1, v2

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v3, p2, 0x2

    aget-byte v2, v2, v3

    iget-object v3, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v4, p2, 0x3

    aget-byte v3, v3, v4

    .line 497
    invoke-static {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedBytesToInt(BBBB)I

    move-result v0

    .line 496
    const/16 v1, 0x20

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedToSigned(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 493
    :sswitch_35
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    aget-byte v0, v0, p2

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v2, p2, 0x1

    aget-byte v1, v1, v2

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedBytesToInt(BB)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedToSigned(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 490
    :sswitch_4e
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    aget-byte v0, v0, p2

    invoke-static {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedToSigned(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 487
    :sswitch_61
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    aget-byte v0, v0, p2

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v2, p2, 0x1

    aget-byte v1, v1, v2

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v3, p2, 0x2

    aget-byte v2, v2, v3

    iget-object v3, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v4, p2, 0x3

    aget-byte v3, v3, v4

    invoke-static {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedBytesToInt(BBBB)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 484
    :sswitch_80
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    aget-byte v0, v0, p2

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v2, p2, 0x1

    aget-byte v1, v1, v2

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedBytesToInt(BB)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 481
    :sswitch_93
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    aget-byte v0, v0, p2

    invoke-static {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :sswitch_data_a0
    .sparse-switch
        0x11 -> :sswitch_93
        0x12 -> :sswitch_80
        0x14 -> :sswitch_61
        0x21 -> :sswitch_4e
        0x22 -> :sswitch_35
        0x24 -> :sswitch_10
    .end sparse-switch
.end method

.method public blacklist getKeySize()I
    .registers 2

    .line 291
    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mKeySize:I

    return v0
.end method

.method public whitelist getPermissions()I
    .registers 2

    .line 387
    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mPermissions:I

    return v0
.end method

.method public whitelist getProperties()I
    .registers 2

    .line 378
    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mProperties:I

    return v0
.end method

.method public whitelist getService()Landroid/bluetooth/BluetoothGattService;
    .registers 2

    .line 326
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mService:Landroid/bluetooth/BluetoothGattService;

    return-object v0
.end method

.method public whitelist getStringValue(I)Ljava/lang/String;
    .registers 6
    .param p1, "offset"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 548
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    array-length v0, v0

    if-le p1, v0, :cond_a

    goto :goto_28

    .line 549
    :cond_a
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    array-length v0, v0

    sub-int/2addr v0, p1

    new-array v0, v0, [B

    .line 550
    .local v0, "strBytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    array-length v2, v2

    sub-int/2addr v2, p1

    if-eq v1, v2, :cond_22

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int v3, p1, v1

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 551
    .end local v1    # "i":I
    :cond_22
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    .line 548
    .end local v0    # "strBytes":[B
    :cond_28
    :goto_28
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getUuid()Ljava/util/UUID;
    .registers 2

    .line 345
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public whitelist getValue()[B
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 459
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    return-object v0
.end method

.method public whitelist getWriteType()I
    .registers 2

    .line 396
    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mWriteType:I

    return v0
.end method

.method public blacklist setInstanceId(I)V
    .registers 2
    .param p1, "instanceId"    # I

    .line 366
    iput p1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mInstance:I

    .line 367
    return-void
.end method

.method public greylist setKeySize(I)V
    .registers 2
    .param p1, "keySize"    # I

    .line 419
    iput p1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mKeySize:I

    .line 420
    return-void
.end method

.method greylist setService(Landroid/bluetooth/BluetoothGattService;)V
    .registers 2
    .param p1, "service"    # Landroid/bluetooth/BluetoothGattService;

    .line 336
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mService:Landroid/bluetooth/BluetoothGattService;

    .line 337
    return-void
.end method

.method public whitelist setValue(III)Z
    .registers 8
    .param p1, "value"    # I
    .param p2, "formatType"    # I
    .param p3, "offset"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 587
    invoke-static {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getTypeLen(I)I

    move-result v0

    add-int/2addr v0, p3

    .line 588
    .local v0, "len":I
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    if-nez v1, :cond_d

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    .line 589
    :cond_d
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_14

    return v2

    .line 591
    :cond_14
    sparse-switch p2, :sswitch_data_76

    .line 618
    return v2

    .line 608
    :sswitch_18
    const/16 v1, 0x20

    invoke-static {p1, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->intToSignedBits(II)I

    move-result p1

    goto :goto_2d

    .line 600
    :sswitch_1f
    const/16 v1, 0x10

    invoke-static {p1, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->intToSignedBits(II)I

    move-result p1

    goto :goto_57

    .line 593
    :sswitch_26
    const/16 v1, 0x8

    invoke-static {p1, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->intToSignedBits(II)I

    move-result p1

    goto :goto_6b

    .line 611
    :goto_2d
    :sswitch_2d
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v2, p3, 0x1

    .end local p3    # "offset":I
    .local v2, "offset":I
    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, p3

    .line 612
    iget-object p3, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .local v1, "offset":I
    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 613
    iget-object p3, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p3, v1

    .line 614
    iget-object p3, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p3, v2

    .line 615
    move p3, v2

    goto :goto_73

    .line 603
    .end local v2    # "offset":I
    .restart local p3    # "offset":I
    :goto_57
    :sswitch_57
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v2, p3, 0x1

    .end local p3    # "offset":I
    .restart local v2    # "offset":I
    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, p3

    .line 604
    iget-object p3, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p3, v2

    .line 605
    move p3, v2

    goto :goto_73

    .line 596
    .end local v2    # "offset":I
    .restart local p3    # "offset":I
    :goto_6b
    :sswitch_6b
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, p3

    .line 597
    nop

    .line 620
    :goto_73
    const/4 v1, 0x1

    return v1

    nop

    :sswitch_data_76
    .sparse-switch
        0x11 -> :sswitch_6b
        0x12 -> :sswitch_57
        0x14 -> :sswitch_2d
        0x21 -> :sswitch_26
        0x22 -> :sswitch_1f
        0x24 -> :sswitch_18
    .end sparse-switch
.end method

.method public whitelist setValue(IIII)Z
    .registers 10
    .param p1, "mantissa"    # I
    .param p2, "exponent"    # I
    .param p3, "formatType"    # I
    .param p4, "offset"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 638
    invoke-static {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getTypeLen(I)I

    move-result v0

    add-int/2addr v0, p4

    .line 639
    .local v0, "len":I
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    if-nez v1, :cond_d

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    .line 640
    :cond_d
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_14

    return v2

    .line 642
    :cond_14
    packed-switch p3, :pswitch_data_7c

    .line 661
    :pswitch_17
    return v2

    .line 652
    :pswitch_18
    const/16 v1, 0x18

    invoke-static {p1, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->intToSignedBits(II)I

    move-result p1

    .line 653
    const/16 v1, 0x8

    invoke-static {p2, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->intToSignedBits(II)I

    move-result p2

    .line 654
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v2, p4, 0x1

    .end local p4    # "offset":I
    .local v2, "offset":I
    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, p4

    .line 655
    iget-object p4, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .local v1, "offset":I
    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p4, v2

    .line 656
    iget-object p4, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p4, v1

    .line 657
    iget-object p4, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    aget-byte v1, p4, v2

    and-int/lit16 v3, p2, 0xff

    int-to-byte v3, v3

    add-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p4, v2

    .line 658
    goto :goto_7a

    .line 644
    .end local v2    # "offset":I
    .restart local p4    # "offset":I
    :pswitch_4f
    const/16 v1, 0xc

    invoke-static {p1, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->intToSignedBits(II)I

    move-result p1

    .line 645
    const/4 v1, 0x4

    invoke-static {p2, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->intToSignedBits(II)I

    move-result p2

    .line 646
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v3, p4, 0x1

    .end local p4    # "offset":I
    .local v3, "offset":I
    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, p4

    .line 647
    iget-object p4, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    shr-int/lit8 v2, p1, 0x8

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    aput-byte v2, p4, v3

    .line 648
    iget-object p4, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    aget-byte v2, p4, v3

    and-int/lit8 v4, p2, 0xf

    shl-int/lit8 v1, v4, 0x4

    int-to-byte v1, v1

    add-int/2addr v2, v1

    int-to-byte v1, v2

    aput-byte v1, p4, v3

    .line 649
    move v2, v3

    .line 664
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    :goto_7a
    const/4 p4, 0x1

    return p4

    :pswitch_data_7c
    .packed-switch 0x32
        :pswitch_4f
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method public whitelist setValue(Ljava/lang/String;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 679
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    .line 680
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist setValue([B)Z
    .registers 3
    .param p1, "value"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 569
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    .line 570
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist setWriteType(I)V
    .registers 2
    .param p1, "writeType"    # I

    .line 409
    iput p1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mWriteType:I

    .line 410
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 251
    new-instance v0, Landroid/os/ParcelUuid;

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mUuid:Ljava/util/UUID;

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 252
    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mInstance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mProperties:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mPermissions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mKeySize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mWriteType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 258
    return-void
.end method
