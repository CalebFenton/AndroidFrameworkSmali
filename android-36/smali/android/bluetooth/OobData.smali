.class public final Landroid/bluetooth/OobData;
.super Ljava/lang/Object;
.source "OobData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/OobData$ClassicBuilder;,
        Landroid/bluetooth/OobData$LeBuilder;,
        Landroid/bluetooth/OobData$LeFlag;,
        Landroid/bluetooth/OobData$LeRole;
    }
.end annotation


# static fields
.field public static final whitelist CLASS_OF_DEVICE_OCTETS:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CONFIRMATION_OCTETS:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/OobData;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEVICE_ADDRESS_OCTETS:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LE_APPEARANCE_OCTETS:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LE_DEVICE_FLAG_OCTETS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LE_DEVICE_ROLE_BOTH_PREFER_CENTRAL:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LE_DEVICE_ROLE_BOTH_PREFER_PERIPHERAL:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LE_DEVICE_ROLE_CENTRAL_ONLY:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LE_DEVICE_ROLE_OCTETS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LE_DEVICE_ROLE_PERIPHERAL_ONLY:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LE_FLAG_BREDR_NOT_SUPPORTED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LE_FLAG_GENERAL_DISCOVERY_MODE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LE_FLAG_LIMITED_DISCOVERY_MODE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LE_FLAG_SIMULTANEOUS_CONTROLLER:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LE_FLAG_SIMULTANEOUS_HOST:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LE_TK_OCTETS:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OOB_LENGTH_OCTETS:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RANDOMIZER_OCTETS:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mClassOfDevice:[B

.field private final blacklist mClassicLength:[B

.field private final blacklist mConfirmationHash:[B

.field private final blacklist mDeviceAddressWithType:[B

.field private blacklist mDeviceName:[B

.field private blacklist mLeAppearance:[B

.field private final blacklist mLeDeviceRole:I

.field private blacklist mLeFlags:I

.field private blacklist mLeTemporaryKey:[B

.field private blacklist mRandomizerHash:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmClassOfDevice(Landroid/bluetooth/OobData;)[B
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/OobData;->mClassOfDevice:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceName(Landroid/bluetooth/OobData;)[B
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/OobData;->mDeviceName:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLeAppearance(Landroid/bluetooth/OobData;)[B
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/OobData;->mLeAppearance:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLeFlags(Landroid/bluetooth/OobData;)I
    .registers 1

    iget p0, p0, Landroid/bluetooth/OobData;->mLeFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLeTemporaryKey(Landroid/bluetooth/OobData;)[B
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/OobData;->mLeTemporaryKey:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmClassOfDevice(Landroid/bluetooth/OobData;[B)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/OobData;->mClassOfDevice:[B

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDeviceName(Landroid/bluetooth/OobData;[B)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/OobData;->mDeviceName:[B

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLeAppearance(Landroid/bluetooth/OobData;[B)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/OobData;->mLeAppearance:[B

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLeFlags(Landroid/bluetooth/OobData;I)V
    .registers 2

    iput p1, p0, Landroid/bluetooth/OobData;->mLeFlags:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLeTemporaryKey(Landroid/bluetooth/OobData;[B)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/OobData;->mLeTemporaryKey:[B

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRandomizerHash(Landroid/bluetooth/OobData;[B)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/OobData;->mRandomizerHash:[B

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 56
    const-class v0, Landroid/bluetooth/OobData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/OobData;->TAG:Ljava/lang/String;

    .line 849
    new-instance v0, Landroid/bluetooth/OobData$1;

    invoke-direct {v0}, Landroid/bluetooth/OobData$1;-><init>()V

    sput-object v0, Landroid/bluetooth/OobData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    const/16 v0, 0x10

    new-array v1, v0, [B

    fill-array-data v1, :array_62

    iput-object v1, p0, Landroid/bluetooth/OobData;->mRandomizerHash:[B

    .line 620
    new-array v1, v0, [B

    fill-array-data v1, :array_6e

    iput-object v1, p0, Landroid/bluetooth/OobData;->mDeviceName:[B

    .line 644
    const/4 v1, 0x3

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/bluetooth/OobData;->mClassOfDevice:[B

    .line 648
    new-array v0, v0, [B

    iput-object v0, p0, Landroid/bluetooth/OobData;->mLeTemporaryKey:[B

    .line 649
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/bluetooth/OobData;->mLeAppearance:[B

    .line 650
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/OobData;->mLeFlags:I

    .line 796
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->mDeviceAddressWithType:[B

    .line 797
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->mConfirmationHash:[B

    .line 798
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->mRandomizerHash:[B

    .line 799
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->mDeviceName:[B

    .line 802
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->mClassicLength:[B

    .line 803
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->mClassOfDevice:[B

    .line 806
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/OobData;->mLeDeviceRole:I

    .line 807
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->mLeTemporaryKey:[B

    .line 808
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->mLeAppearance:[B

    .line 809
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/OobData;->mLeFlags:I

    .line 810
    return-void

    nop

    :array_62
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_6e
    .array-data 1
        0x42t
        0x6ct
        0x75t
        0x65t
        0x74t
        0x6ft
        0x6ft
        0x74t
        0x68t
        0x20t
        0x44t
        0x65t
        0x76t
        0x69t
        0x63t
        0x65t
    .end array-data
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/OobData-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/OobData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>([BI[B)V
    .registers 6
    .param p1, "deviceAddressWithType"    # [B
    .param p2, "leDeviceRole"    # I
    .param p3, "confirmationHash"    # [B

    .line 787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    const/16 v0, 0x10

    new-array v1, v0, [B

    fill-array-data v1, :array_30

    iput-object v1, p0, Landroid/bluetooth/OobData;->mRandomizerHash:[B

    .line 620
    new-array v1, v0, [B

    fill-array-data v1, :array_3c

    iput-object v1, p0, Landroid/bluetooth/OobData;->mDeviceName:[B

    .line 644
    const/4 v1, 0x3

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/bluetooth/OobData;->mClassOfDevice:[B

    .line 648
    new-array v0, v0, [B

    iput-object v0, p0, Landroid/bluetooth/OobData;->mLeTemporaryKey:[B

    .line 649
    const/4 v0, 0x2

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/bluetooth/OobData;->mLeAppearance:[B

    .line 650
    const/4 v1, 0x0

    iput v1, p0, Landroid/bluetooth/OobData;->mLeFlags:I

    .line 788
    iput-object p1, p0, Landroid/bluetooth/OobData;->mDeviceAddressWithType:[B

    .line 789
    iput p2, p0, Landroid/bluetooth/OobData;->mLeDeviceRole:I

    .line 790
    iput-object p3, p0, Landroid/bluetooth/OobData;->mConfirmationHash:[B

    .line 791
    new-array v0, v0, [B

    iput-object v0, p0, Landroid/bluetooth/OobData;->mClassicLength:[B

    .line 792
    return-void

    nop

    :array_30
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_3c
    .array-data 1
        0x42t
        0x6ct
        0x75t
        0x65t
        0x74t
        0x6ft
        0x6ft
        0x74t
        0x68t
        0x20t
        0x44t
        0x65t
        0x76t
        0x69t
        0x63t
        0x65t
    .end array-data
.end method

.method synthetic constructor blacklist <init>([BI[BLandroid/bluetooth/OobData-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/OobData;-><init>([BI[B)V

    return-void
.end method

.method private constructor blacklist <init>([B[B[B)V
    .registers 6
    .param p1, "classicLength"    # [B
    .param p2, "deviceAddressWithType"    # [B
    .param p3, "confirmationHash"    # [B

    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    const/16 v0, 0x10

    new-array v1, v0, [B

    fill-array-data v1, :array_2e

    iput-object v1, p0, Landroid/bluetooth/OobData;->mRandomizerHash:[B

    .line 620
    new-array v1, v0, [B

    fill-array-data v1, :array_3a

    iput-object v1, p0, Landroid/bluetooth/OobData;->mDeviceName:[B

    .line 644
    const/4 v1, 0x3

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/bluetooth/OobData;->mClassOfDevice:[B

    .line 648
    new-array v0, v0, [B

    iput-object v0, p0, Landroid/bluetooth/OobData;->mLeTemporaryKey:[B

    .line 649
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/bluetooth/OobData;->mLeAppearance:[B

    .line 650
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/OobData;->mLeFlags:I

    .line 777
    iput-object p1, p0, Landroid/bluetooth/OobData;->mClassicLength:[B

    .line 778
    iput-object p2, p0, Landroid/bluetooth/OobData;->mDeviceAddressWithType:[B

    .line 779
    iput-object p3, p0, Landroid/bluetooth/OobData;->mConfirmationHash:[B

    .line 780
    const/4 v0, -0x1

    iput v0, p0, Landroid/bluetooth/OobData;->mLeDeviceRole:I

    .line 781
    return-void

    :array_2e
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_3a
    .array-data 1
        0x42t
        0x6ct
        0x75t
        0x65t
        0x74t
        0x6ft
        0x6ft
        0x74t
        0x68t
        0x20t
        0x44t
        0x65t
        0x76t
        0x69t
        0x63t
        0x65t
    .end array-data
.end method

.method synthetic constructor blacklist <init>([B[B[BLandroid/bluetooth/OobData-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/OobData;-><init>([B[B[B)V

    return-void
.end method

.method private static blacklist toHexString(I)Ljava/lang/String;
    .registers 4
    .param p0, "b"    # I

    .line 903
    int-to-byte v0, p0

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    invoke-static {v1}, Landroid/bluetooth/OobData;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist toHexString([B)Ljava/lang/String;
    .registers 7
    .param p0, "array"    # [B

    .line 907
    if-nez p0, :cond_5

    const-string v0, "null"

    return-object v0

    .line 908
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 909
    .local v0, "builder":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_27

    aget-byte v3, p0, v2

    .line 910
    .local v3, "b":B
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%02x"

    invoke-static {v5, v4}, Landroid/bluetooth/BluetoothUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 912
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 815
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getClassOfDevice()[B
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 717
    iget-object v0, p0, Landroid/bluetooth/OobData;->mClassOfDevice:[B

    return-object v0
.end method

.method public whitelist getClassicLength()[B
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 706
    iget-object v0, p0, Landroid/bluetooth/OobData;->mClassicLength:[B

    return-object v0
.end method

.method public whitelist getConfirmationHash()[B
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 673
    iget-object v0, p0, Landroid/bluetooth/OobData;->mConfirmationHash:[B

    return-object v0
.end method

.method public whitelist getDeviceAddressWithType()[B
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 662
    iget-object v0, p0, Landroid/bluetooth/OobData;->mDeviceAddressWithType:[B

    return-object v0
.end method

.method public whitelist getDeviceName()[B
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 695
    iget-object v0, p0, Landroid/bluetooth/OobData;->mDeviceName:[B

    return-object v0
.end method

.method public whitelist getLeAppearance()[B
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 738
    iget-object v0, p0, Landroid/bluetooth/OobData;->mLeAppearance:[B

    return-object v0
.end method

.method public whitelist getLeDeviceRole()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 769
    iget v0, p0, Landroid/bluetooth/OobData;->mLeDeviceRole:I

    return v0
.end method

.method public whitelist getLeFlags()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 755
    iget v0, p0, Landroid/bluetooth/OobData;->mLeFlags:I

    return v0
.end method

.method public whitelist getLeTemporaryKey()[B
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 727
    iget-object v0, p0, Landroid/bluetooth/OobData;->mLeTemporaryKey:[B

    return-object v0
.end method

.method public whitelist getRandomizerHash()[B
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 684
    iget-object v0, p0, Landroid/bluetooth/OobData;->mRandomizerHash:[B

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OobData: \n\tDevice Address With Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/OobData;->mDeviceAddressWithType:[B

    .line 869
    invoke-static {v1}, Landroid/bluetooth/OobData;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tConfirmation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/OobData;->mConfirmationHash:[B

    .line 872
    invoke-static {v1}, Landroid/bluetooth/OobData;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tRandomizer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/OobData;->mRandomizerHash:[B

    .line 875
    invoke-static {v1}, Landroid/bluetooth/OobData;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tDevice Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/OobData;->mDeviceName:[B

    .line 878
    invoke-static {v1}, Landroid/bluetooth/OobData;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tOobData Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/OobData;->mClassicLength:[B

    .line 882
    invoke-static {v1}, Landroid/bluetooth/OobData;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tClass of Device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/OobData;->mClassOfDevice:[B

    .line 885
    invoke-static {v1}, Landroid/bluetooth/OobData;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tLE Device Role: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/OobData;->mLeDeviceRole:I

    .line 889
    invoke-static {v1}, Landroid/bluetooth/OobData;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tLE Temporary Key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/OobData;->mLeTemporaryKey:[B

    .line 892
    invoke-static {v1}, Landroid/bluetooth/OobData;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tLE Appearance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/OobData;->mLeAppearance:[B

    .line 895
    invoke-static {v1}, Landroid/bluetooth/OobData;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tLE Flags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/OobData;->mLeFlags:I

    .line 898
    invoke-static {v1}, Landroid/bluetooth/OobData;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 866
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 823
    iget-object v0, p0, Landroid/bluetooth/OobData;->mDeviceAddressWithType:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 825
    iget-object v0, p0, Landroid/bluetooth/OobData;->mConfirmationHash:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 827
    iget-object v0, p0, Landroid/bluetooth/OobData;->mRandomizerHash:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 829
    iget-object v0, p0, Landroid/bluetooth/OobData;->mDeviceName:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 833
    iget-object v0, p0, Landroid/bluetooth/OobData;->mClassicLength:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 835
    iget-object v0, p0, Landroid/bluetooth/OobData;->mClassOfDevice:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 839
    iget v0, p0, Landroid/bluetooth/OobData;->mLeDeviceRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 841
    iget-object v0, p0, Landroid/bluetooth/OobData;->mLeTemporaryKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 843
    iget-object v0, p0, Landroid/bluetooth/OobData;->mLeAppearance:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 845
    iget v0, p0, Landroid/bluetooth/OobData;->mLeFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 846
    return-void
.end method
