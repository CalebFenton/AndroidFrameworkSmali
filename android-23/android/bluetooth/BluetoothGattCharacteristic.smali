.class public Landroid/bluetooth/BluetoothGattCharacteristic;
.super Ljava/lang/Object;
.source "BluetoothGattCharacteristic.java"


# static fields
.field public static final FORMAT_FLOAT:I = 0x34

.field public static final FORMAT_SFLOAT:I = 0x32

.field public static final FORMAT_SINT16:I = 0x22

.field public static final FORMAT_SINT32:I = 0x24

.field public static final FORMAT_SINT8:I = 0x21

.field public static final FORMAT_UINT16:I = 0x12

.field public static final FORMAT_UINT32:I = 0x14

.field public static final FORMAT_UINT8:I = 0x11

.field public static final PERMISSION_READ:I = 0x1

.field public static final PERMISSION_READ_ENCRYPTED:I = 0x2

.field public static final PERMISSION_READ_ENCRYPTED_MITM:I = 0x4

.field public static final PERMISSION_WRITE:I = 0x10

.field public static final PERMISSION_WRITE_ENCRYPTED:I = 0x20

.field public static final PERMISSION_WRITE_ENCRYPTED_MITM:I = 0x40

.field public static final PERMISSION_WRITE_SIGNED:I = 0x80

.field public static final PERMISSION_WRITE_SIGNED_MITM:I = 0x100

.field public static final PROPERTY_BROADCAST:I = 0x1

.field public static final PROPERTY_EXTENDED_PROPS:I = 0x80

.field public static final PROPERTY_INDICATE:I = 0x20

.field public static final PROPERTY_NOTIFY:I = 0x10

.field public static final PROPERTY_READ:I = 0x2

.field public static final PROPERTY_SIGNED_WRITE:I = 0x40

.field public static final PROPERTY_WRITE:I = 0x8

.field public static final PROPERTY_WRITE_NO_RESPONSE:I = 0x4

.field public static final WRITE_TYPE_DEFAULT:I = 0x2

.field public static final WRITE_TYPE_NO_RESPONSE:I = 0x1

.field public static final WRITE_TYPE_SIGNED:I = 0x4


# instance fields
.field protected mDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field protected mInstance:I

.field protected mKeySize:I

.field protected mPermissions:I

.field protected mProperties:I

.field protected mService:Landroid/bluetooth/BluetoothGattService;

.field protected mUuid:Ljava/util/UUID;

.field protected mValue:[B

.field protected mWriteType:I


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;III)V
    .locals 1
    .param p1, "service"    # Landroid/bluetooth/BluetoothGattService;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "instanceId"    # I
    .param p4, "properties"    # I
    .param p5, "permissions"    # I

    #@0
    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 197
    const/16 v0, 0x10

    #@5
    iput v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mKeySize:I

    #@7
    .line 242
    invoke-direct/range {p0 .. p5}, Landroid/bluetooth/BluetoothGattCharacteristic;->initCharacteristic(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;III)V

    #@a
    .line 241
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;II)V
    .locals 6
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "properties"    # I
    .param p3, "permissions"    # I

    #@0
    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 197
    const/16 v0, 0x10

    #@5
    iput v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mKeySize:I

    #@7
    .line 232
    const/4 v1, 0x0

    #@8
    const/4 v3, 0x0

    #@9
    move-object v0, p0

    #@a
    move-object v2, p1

    #@b
    move v4, p2

    #@c
    move v5, p3

    #@d
    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->initCharacteristic(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;III)V

    #@10
    .line 231
    return-void
.end method

.method private bytesToFloat(BB)F
    .locals 8
    .param p1, "b0"    # B
    .param p2, "b1"    # B

    #@0
    .prologue
    .line 659
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    #@3
    move-result v2

    #@4
    .line 660
    invoke-direct {p0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    #@7
    move-result v3

    #@8
    and-int/lit8 v3, v3, 0xf

    #@a
    shl-int/lit8 v3, v3, 0x8

    #@c
    .line 659
    add-int/2addr v2, v3

    #@d
    .line 660
    const/16 v3, 0xc

    #@f
    .line 659
    invoke-direct {p0, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedToSigned(II)I

    #@12
    move-result v1

    #@13
    .line 661
    .local v1, "mantissa":I
    invoke-direct {p0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    #@16
    move-result v2

    #@17
    shr-int/lit8 v2, v2, 0x4

    #@19
    const/4 v3, 0x4

    #@1a
    invoke-direct {p0, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedToSigned(II)I

    #@1d
    move-result v0

    #@1e
    .line 662
    .local v0, "exponent":I
    int-to-double v2, v1

    #@1f
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    #@21
    int-to-double v6, v0

    #@22
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    #@25
    move-result-wide v4

    #@26
    mul-double/2addr v2, v4

    #@27
    double-to-float v2, v2

    #@28
    return v2
.end method

.method private bytesToFloat(BBBB)F
    .locals 8
    .param p1, "b0"    # B
    .param p2, "b1"    # B
    .param p3, "b2"    # B
    .param p4, "b3"    # B

    #@0
    .prologue
    .line 669
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    #@3
    move-result v1

    #@4
    .line 670
    invoke-direct {p0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    #@7
    move-result v2

    #@8
    shl-int/lit8 v2, v2, 0x8

    #@a
    .line 669
    add-int/2addr v1, v2

    #@b
    .line 671
    invoke-direct {p0, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    #@e
    move-result v2

    #@f
    shl-int/lit8 v2, v2, 0x10

    #@11
    .line 669
    add-int/2addr v1, v2

    #@12
    .line 671
    const/16 v2, 0x18

    #@14
    .line 669
    invoke-direct {p0, v1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedToSigned(II)I

    #@17
    move-result v0

    #@18
    .line 672
    .local v0, "mantissa":I
    int-to-double v2, v0

    #@19
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    #@1b
    int-to-double v6, p4

    #@1c
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    #@1f
    move-result-wide v4

    #@20
    mul-double/2addr v2, v4

    #@21
    double-to-float v1, v2

    #@22
    return v1
.end method

.method private getTypeLen(I)I
    .locals 1
    .param p1, "formatType"    # I

    #@0
    .prologue
    .line 630
    and-int/lit8 v0, p1, 0xf

    #@2
    return v0
.end method

.method private initCharacteristic(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;III)V
    .locals 1
    .param p1, "service"    # Landroid/bluetooth/BluetoothGattService;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "instanceId"    # I
    .param p4, "properties"    # I
    .param p5, "permissions"    # I

    #@0
    .prologue
    .line 248
    iput-object p2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mUuid:Ljava/util/UUID;

    #@2
    .line 249
    iput p3, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mInstance:I

    #@4
    .line 250
    iput p4, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mProperties:I

    #@6
    .line 251
    iput p5, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mPermissions:I

    #@8
    .line 252
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mService:Landroid/bluetooth/BluetoothGattService;

    #@a
    .line 253
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@d
    .line 254
    new-instance v0, Ljava/util/ArrayList;

    #@f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@12
    iput-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    #@14
    .line 256
    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mProperties:I

    #@16
    and-int/lit8 v0, v0, 0x4

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 257
    const/4 v0, 0x1

    #@1b
    iput v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mWriteType:I

    #@1d
    .line 247
    :goto_0
    return-void

    #@1e
    .line 259
    :cond_0
    const/4 v0, 0x2

    #@1f
    iput v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mWriteType:I

    #@21
    goto :goto_0
.end method

.method private intToSignedBits(II)I
    .locals 3
    .param p1, "i"    # I
    .param p2, "size"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 690
    if-gez p1, :cond_0

    #@3
    .line 691
    add-int/lit8 v0, p2, -0x1

    #@5
    shl-int v0, v2, v0

    #@7
    add-int/lit8 v1, p2, -0x1

    #@9
    shl-int v1, v2, v1

    #@b
    add-int/lit8 v1, v1, -0x1

    #@d
    and-int/2addr v1, p1

    #@e
    add-int p1, v0, v1

    #@10
    .line 693
    :cond_0
    return p1
.end method

.method private unsignedByteToInt(B)I
    .locals 1
    .param p1, "b"    # B

    #@0
    .prologue
    .line 637
    and-int/lit16 v0, p1, 0xff

    #@2
    return v0
.end method

.method private unsignedBytesToInt(BB)I
    .locals 2
    .param p1, "b0"    # B
    .param p2, "b1"    # B

    #@0
    .prologue
    .line 644
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    #@7
    move-result v1

    #@8
    shl-int/lit8 v1, v1, 0x8

    #@a
    add-int/2addr v0, v1

    #@b
    return v0
.end method

.method private unsignedBytesToInt(BBBB)I
    .locals 2
    .param p1, "b0"    # B
    .param p2, "b1"    # B
    .param p3, "b2"    # B
    .param p4, "b3"    # B

    #@0
    .prologue
    .line 651
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    #@7
    move-result v1

    #@8
    shl-int/lit8 v1, v1, 0x8

    #@a
    add-int/2addr v0, v1

    #@b
    .line 652
    invoke-direct {p0, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    #@e
    move-result v1

    #@f
    shl-int/lit8 v1, v1, 0x10

    #@11
    .line 651
    add-int/2addr v0, v1

    #@12
    .line 652
    invoke-direct {p0, p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    #@15
    move-result v1

    #@16
    shl-int/lit8 v1, v1, 0x18

    #@18
    .line 651
    add-int/2addr v0, v1

    #@19
    return v0
.end method

.method private unsignedToSigned(II)I
    .locals 3
    .param p1, "unsigned"    # I
    .param p2, "size"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 680
    add-int/lit8 v0, p2, -0x1

    #@3
    shl-int v0, v2, v0

    #@5
    and-int/2addr v0, p1

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 681
    add-int/lit8 v0, p2, -0x1

    #@a
    shl-int v0, v2, v0

    #@c
    add-int/lit8 v1, p2, -0x1

    #@e
    shl-int v1, v2, v1

    #@10
    add-int/lit8 v1, v1, -0x1

    #@12
    and-int/2addr v1, p1

    #@13
    sub-int/2addr v0, v1

    #@14
    mul-int/lit8 p1, v0, -0x1

    #@16
    .line 683
    :cond_0
    return p1
.end method


# virtual methods
.method public addDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 1
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    #@0
    .prologue
    .line 279
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 280
    invoke-virtual {p1, p0}, Landroid/bluetooth/BluetoothGattDescriptor;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    #@8
    .line 281
    const/4 v0, 0x1

    #@9
    return v0
.end method

.method public getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;

    #@0
    .prologue
    .line 407
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "descriptor$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/bluetooth/BluetoothGattDescriptor;

    #@12
    .line 408
    .local v0, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 409
    return-object v0

    #@1d
    .line 412
    .end local v0    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    :cond_1
    const/4 v2, 0x0

    #@1e
    return-object v2
.end method

.method getDescriptor(Ljava/util/UUID;I)Landroid/bluetooth/BluetoothGattDescriptor;
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "instanceId"    # I

    #@0
    .prologue
    .line 289
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "descriptor$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/bluetooth/BluetoothGattDescriptor;

    #@12
    .line 290
    .local v0, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 291
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattDescriptor;->getInstanceId()I

    #@1f
    move-result v2

    #@20
    if-ne v2, p2, :cond_0

    #@22
    .line 292
    return-object v0

    #@23
    .line 295
    .end local v0    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    :cond_1
    const/4 v2, 0x0

    #@24
    return-object v2
.end method

.method public getDescriptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 396
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getFloatValue(II)Ljava/lang/Float;
    .locals 5
    .param p1, "formatType"    # I
    .param p2, "offset"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 483
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getTypeLen(I)I

    #@4
    move-result v0

    #@5
    add-int/2addr v0, p2

    #@6
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@8
    array-length v1, v1

    #@9
    if-le v0, v1, :cond_0

    #@b
    return-object v2

    #@c
    .line 485
    :cond_0
    packed-switch p1, :pswitch_data_0

    #@f
    .line 494
    :pswitch_0
    return-object v2

    #@10
    .line 487
    :pswitch_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@12
    aget-byte v0, v0, p2

    #@14
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@16
    add-int/lit8 v2, p2, 0x1

    #@18
    aget-byte v1, v1, v2

    #@1a
    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->bytesToFloat(BB)F

    #@1d
    move-result v0

    #@1e
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@21
    move-result-object v0

    #@22
    return-object v0

    #@23
    .line 490
    :pswitch_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@25
    aget-byte v0, v0, p2

    #@27
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@29
    add-int/lit8 v2, p2, 0x1

    #@2b
    aget-byte v1, v1, v2

    #@2d
    .line 491
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@2f
    add-int/lit8 v3, p2, 0x2

    #@31
    aget-byte v2, v2, v3

    #@33
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@35
    add-int/lit8 v4, p2, 0x3

    #@37
    aget-byte v3, v3, v4

    #@39
    .line 490
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->bytesToFloat(BBBB)F

    #@3c
    move-result v0

    #@3d
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@40
    move-result-object v0

    #@41
    return-object v0

    #@42
    .line 485
    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getInstanceId()I
    .locals 1

    #@0
    .prologue
    .line 332
    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mInstance:I

    #@2
    return v0
.end method

.method public getIntValue(II)Ljava/lang/Integer;
    .locals 5
    .param p1, "formatType"    # I
    .param p2, "offset"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 445
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getTypeLen(I)I

    #@4
    move-result v0

    #@5
    add-int/2addr v0, p2

    #@6
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@8
    array-length v1, v1

    #@9
    if-le v0, v1, :cond_0

    #@b
    return-object v2

    #@c
    .line 447
    :cond_0
    sparse-switch p1, :sswitch_data_0

    #@f
    .line 469
    return-object v2

    #@10
    .line 449
    :sswitch_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@12
    aget-byte v0, v0, p2

    #@14
    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    #@17
    move-result v0

    #@18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v0

    #@1c
    return-object v0

    #@1d
    .line 452
    :sswitch_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@1f
    aget-byte v0, v0, p2

    #@21
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@23
    add-int/lit8 v2, p2, 0x1

    #@25
    aget-byte v1, v1, v2

    #@27
    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedBytesToInt(BB)I

    #@2a
    move-result v0

    #@2b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2e
    move-result-object v0

    #@2f
    return-object v0

    #@30
    .line 455
    :sswitch_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@32
    aget-byte v0, v0, p2

    #@34
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@36
    add-int/lit8 v2, p2, 0x1

    #@38
    aget-byte v1, v1, v2

    #@3a
    .line 456
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@3c
    add-int/lit8 v3, p2, 0x2

    #@3e
    aget-byte v2, v2, v3

    #@40
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@42
    add-int/lit8 v4, p2, 0x3

    #@44
    aget-byte v3, v3, v4

    #@46
    .line 455
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedBytesToInt(BBBB)I

    #@49
    move-result v0

    #@4a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4d
    move-result-object v0

    #@4e
    return-object v0

    #@4f
    .line 458
    :sswitch_3
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@51
    aget-byte v0, v0, p2

    #@53
    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    #@56
    move-result v0

    #@57
    const/16 v1, 0x8

    #@59
    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedToSigned(II)I

    #@5c
    move-result v0

    #@5d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@60
    move-result-object v0

    #@61
    return-object v0

    #@62
    .line 461
    :sswitch_4
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@64
    aget-byte v0, v0, p2

    #@66
    .line 462
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@68
    add-int/lit8 v2, p2, 0x1

    #@6a
    aget-byte v1, v1, v2

    #@6c
    .line 461
    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedBytesToInt(BB)I

    #@6f
    move-result v0

    #@70
    .line 462
    const/16 v1, 0x10

    #@72
    .line 461
    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedToSigned(II)I

    #@75
    move-result v0

    #@76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@79
    move-result-object v0

    #@7a
    return-object v0

    #@7b
    .line 465
    :sswitch_5
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@7d
    aget-byte v0, v0, p2

    #@7f
    .line 466
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@81
    add-int/lit8 v2, p2, 0x1

    #@83
    aget-byte v1, v1, v2

    #@85
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@87
    add-int/lit8 v3, p2, 0x2

    #@89
    aget-byte v2, v2, v3

    #@8b
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@8d
    add-int/lit8 v4, p2, 0x3

    #@8f
    aget-byte v3, v3, v4

    #@91
    .line 465
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedBytesToInt(BBBB)I

    #@94
    move-result v0

    #@95
    .line 466
    const/16 v1, 0x20

    #@97
    .line 465
    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedToSigned(II)I

    #@9a
    move-result v0

    #@9b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9e
    move-result-object v0

    #@9f
    return-object v0

    #@a0
    .line 447
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x12 -> :sswitch_1
        0x14 -> :sswitch_2
        0x21 -> :sswitch_3
        0x22 -> :sswitch_4
        0x24 -> :sswitch_5
    .end sparse-switch
.end method

.method getKeySize()I
    .locals 1

    #@0
    .prologue
    .line 268
    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mKeySize:I

    #@2
    return v0
.end method

.method public getPermissions()I
    .locals 1

    #@0
    .prologue
    .line 353
    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mPermissions:I

    #@2
    return v0
.end method

.method public getProperties()I
    .locals 1

    #@0
    .prologue
    .line 344
    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mProperties:I

    #@2
    return v0
.end method

.method public getService()Landroid/bluetooth/BluetoothGattService;
    .locals 1

    #@0
    .prologue
    .line 303
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mService:Landroid/bluetooth/BluetoothGattService;

    #@2
    return-object v0
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 4
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 505
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@3
    if-eqz v2, :cond_0

    #@5
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@7
    array-length v2, v2

    #@8
    if-le p1, v2, :cond_1

    #@a
    :cond_0
    return-object v3

    #@b
    .line 506
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@d
    array-length v2, v2

    #@e
    sub-int/2addr v2, p1

    #@f
    new-array v1, v2, [B

    #@11
    .line 507
    .local v1, "strBytes":[B
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@14
    array-length v2, v2

    #@15
    sub-int/2addr v2, p1

    #@16
    if-eq v0, v2, :cond_2

    #@18
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@1a
    add-int v3, p1, v0

    #@1c
    aget-byte v2, v2, v3

    #@1e
    aput-byte v2, v1, v0

    #@20
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 508
    :cond_2
    new-instance v2, Ljava/lang/String;

    #@25
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    #@28
    return-object v2
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    #@0
    .prologue
    .line 320
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mUuid:Ljava/util/UUID;

    #@2
    return-object v0
.end method

.method public getValue()[B
    .locals 1

    #@0
    .prologue
    .line 426
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@2
    return-object v0
.end method

.method public getWriteType()I
    .locals 1

    #@0
    .prologue
    .line 362
    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mWriteType:I

    #@2
    return v0
.end method

.method public setKeySize(I)V
    .locals 0
    .param p1, "keySize"    # I

    #@0
    .prologue
    .line 387
    iput p1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mKeySize:I

    #@2
    .line 386
    return-void
.end method

.method setService(Landroid/bluetooth/BluetoothGattService;)V
    .locals 0
    .param p1, "service"    # Landroid/bluetooth/BluetoothGattService;

    #@0
    .prologue
    .line 311
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mService:Landroid/bluetooth/BluetoothGattService;

    #@2
    .line 310
    return-void
.end method

.method public setValue(III)Z
    .locals 4
    .param p1, "value"    # I
    .param p2, "formatType"    # I
    .param p3, "offset"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 538
    invoke-direct {p0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getTypeLen(I)I

    #@4
    move-result v2

    #@5
    add-int v0, p3, v2

    #@7
    .line 539
    .local v0, "len":I
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@9
    if-nez v2, :cond_0

    #@b
    new-array v2, v0, [B

    #@d
    iput-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@f
    .line 540
    :cond_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@11
    array-length v2, v2

    #@12
    if-le v0, v2, :cond_1

    #@14
    return v3

    #@15
    .line 542
    :cond_1
    sparse-switch p2, :sswitch_data_0

    #@18
    .line 569
    return v3

    #@19
    .line 544
    :sswitch_0
    const/16 v2, 0x8

    #@1b
    invoke-direct {p0, p1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->intToSignedBits(II)I

    #@1e
    move-result p1

    #@1f
    .line 547
    :sswitch_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@21
    and-int/lit16 v3, p1, 0xff

    #@23
    int-to-byte v3, v3

    #@24
    aput-byte v3, v2, p3

    #@26
    .line 571
    :goto_0
    const/4 v2, 0x1

    #@27
    return v2

    #@28
    .line 551
    :sswitch_2
    const/16 v2, 0x10

    #@2a
    invoke-direct {p0, p1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->intToSignedBits(II)I

    #@2d
    move-result p1

    #@2e
    .line 554
    :sswitch_3
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@30
    add-int/lit8 v1, p3, 0x1

    #@32
    .end local p3    # "offset":I
    .local v1, "offset":I
    and-int/lit16 v3, p1, 0xff

    #@34
    int-to-byte v3, v3

    #@35
    aput-byte v3, v2, p3

    #@37
    .line 555
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@39
    shr-int/lit8 v3, p1, 0x8

    #@3b
    and-int/lit16 v3, v3, 0xff

    #@3d
    int-to-byte v3, v3

    #@3e
    aput-byte v3, v2, v1

    #@40
    move p3, v1

    #@41
    .line 556
    .end local v1    # "offset":I
    .restart local p3    # "offset":I
    goto :goto_0

    #@42
    .line 559
    :sswitch_4
    const/16 v2, 0x20

    #@44
    invoke-direct {p0, p1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->intToSignedBits(II)I

    #@47
    move-result p1

    #@48
    .line 562
    :sswitch_5
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@4a
    add-int/lit8 v1, p3, 0x1

    #@4c
    .end local p3    # "offset":I
    .restart local v1    # "offset":I
    and-int/lit16 v3, p1, 0xff

    #@4e
    int-to-byte v3, v3

    #@4f
    aput-byte v3, v2, p3

    #@51
    .line 563
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@53
    add-int/lit8 p3, v1, 0x1

    #@55
    .end local v1    # "offset":I
    .restart local p3    # "offset":I
    shr-int/lit8 v3, p1, 0x8

    #@57
    and-int/lit16 v3, v3, 0xff

    #@59
    int-to-byte v3, v3

    #@5a
    aput-byte v3, v2, v1

    #@5c
    .line 564
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@5e
    add-int/lit8 v1, p3, 0x1

    #@60
    .end local p3    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v3, p1, 0x10

    #@62
    and-int/lit16 v3, v3, 0xff

    #@64
    int-to-byte v3, v3

    #@65
    aput-byte v3, v2, p3

    #@67
    .line 565
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@69
    shr-int/lit8 v3, p1, 0x18

    #@6b
    and-int/lit16 v3, v3, 0xff

    #@6d
    int-to-byte v3, v3

    #@6e
    aput-byte v3, v2, v1

    #@70
    move p3, v1

    #@71
    .line 566
    .end local v1    # "offset":I
    .restart local p3    # "offset":I
    goto :goto_0

    #@72
    .line 542
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_1
        0x12 -> :sswitch_3
        0x14 -> :sswitch_5
        0x21 -> :sswitch_0
        0x22 -> :sswitch_2
        0x24 -> :sswitch_4
    .end sparse-switch
.end method

.method public setValue(IIII)Z
    .locals 5
    .param p1, "mantissa"    # I
    .param p2, "exponent"    # I
    .param p3, "formatType"    # I
    .param p4, "offset"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 585
    invoke-direct {p0, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getTypeLen(I)I

    #@4
    move-result v2

    #@5
    add-int v0, p4, v2

    #@7
    .line 586
    .local v0, "len":I
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@9
    if-nez v2, :cond_0

    #@b
    new-array v2, v0, [B

    #@d
    iput-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@f
    .line 587
    :cond_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@11
    array-length v2, v2

    #@12
    if-le v0, v2, :cond_1

    #@14
    return v3

    #@15
    .line 589
    :cond_1
    packed-switch p3, :pswitch_data_0

    #@18
    .line 608
    :pswitch_0
    return v3

    #@19
    .line 591
    :pswitch_1
    const/16 v2, 0xc

    #@1b
    invoke-direct {p0, p1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->intToSignedBits(II)I

    #@1e
    move-result p1

    #@1f
    .line 592
    const/4 v2, 0x4

    #@20
    invoke-direct {p0, p2, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->intToSignedBits(II)I

    #@23
    move-result p2

    #@24
    .line 593
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@26
    add-int/lit8 v1, p4, 0x1

    #@28
    .end local p4    # "offset":I
    .local v1, "offset":I
    and-int/lit16 v3, p1, 0xff

    #@2a
    int-to-byte v3, v3

    #@2b
    aput-byte v3, v2, p4

    #@2d
    .line 594
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@2f
    shr-int/lit8 v3, p1, 0x8

    #@31
    and-int/lit8 v3, v3, 0xf

    #@33
    int-to-byte v3, v3

    #@34
    aput-byte v3, v2, v1

    #@36
    .line 595
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@38
    aget-byte v3, v2, v1

    #@3a
    and-int/lit8 v4, p2, 0xf

    #@3c
    shl-int/lit8 v4, v4, 0x4

    #@3e
    int-to-byte v4, v4

    #@3f
    add-int/2addr v3, v4

    #@40
    int-to-byte v3, v3

    #@41
    aput-byte v3, v2, v1

    #@43
    move p4, v1

    #@44
    .line 611
    .end local v1    # "offset":I
    .restart local p4    # "offset":I
    :goto_0
    const/4 v2, 0x1

    #@45
    return v2

    #@46
    .line 599
    :pswitch_2
    const/16 v2, 0x18

    #@48
    invoke-direct {p0, p1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->intToSignedBits(II)I

    #@4b
    move-result p1

    #@4c
    .line 600
    const/16 v2, 0x8

    #@4e
    invoke-direct {p0, p2, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->intToSignedBits(II)I

    #@51
    move-result p2

    #@52
    .line 601
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@54
    add-int/lit8 v1, p4, 0x1

    #@56
    .end local p4    # "offset":I
    .restart local v1    # "offset":I
    and-int/lit16 v3, p1, 0xff

    #@58
    int-to-byte v3, v3

    #@59
    aput-byte v3, v2, p4

    #@5b
    .line 602
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@5d
    add-int/lit8 p4, v1, 0x1

    #@5f
    .end local v1    # "offset":I
    .restart local p4    # "offset":I
    shr-int/lit8 v3, p1, 0x8

    #@61
    and-int/lit16 v3, v3, 0xff

    #@63
    int-to-byte v3, v3

    #@64
    aput-byte v3, v2, v1

    #@66
    .line 603
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@68
    add-int/lit8 v1, p4, 0x1

    #@6a
    .end local p4    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v3, p1, 0x10

    #@6c
    and-int/lit16 v3, v3, 0xff

    #@6e
    int-to-byte v3, v3

    #@6f
    aput-byte v3, v2, p4

    #@71
    .line 604
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@73
    aget-byte v3, v2, v1

    #@75
    and-int/lit16 v4, p2, 0xff

    #@77
    int-to-byte v4, v4

    #@78
    add-int/2addr v3, v4

    #@79
    int-to-byte v3, v3

    #@7a
    aput-byte v3, v2, v1

    #@7c
    move p4, v1

    #@7d
    .line 605
    .end local v1    # "offset":I
    .restart local p4    # "offset":I
    goto :goto_0

    #@7e
    .line 589
    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setValue(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 622
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@6
    .line 623
    const/4 v0, 0x1

    #@7
    return v0
.end method

.method public setValue([B)Z
    .locals 1
    .param p1, "value"    # [B

    #@0
    .prologue
    .line 524
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    #@2
    .line 525
    const/4 v0, 0x1

    #@3
    return v0
.end method

.method public setWriteType(I)V
    .locals 0
    .param p1, "writeType"    # I

    #@0
    .prologue
    .line 379
    iput p1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mWriteType:I

    #@2
    .line 378
    return-void
.end method
