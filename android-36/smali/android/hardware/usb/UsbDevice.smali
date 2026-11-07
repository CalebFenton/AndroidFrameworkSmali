.class public Landroid/hardware/usb/UsbDevice;
.super Ljava/lang/Object;
.source "UsbDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/UsbDevice$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "UsbDevice"


# instance fields
.field private final greylist-max-o mClass:I

.field private final blacklist mConfigurations:[Landroid/hardware/usb/UsbConfiguration;

.field private final blacklist mHasAudioCapture:Z

.field private final blacklist mHasAudioPlayback:Z

.field private final blacklist mHasMidi:Z

.field private final blacklist mHasVideoCapture:Z

.field private final blacklist mHasVideoPlayback:Z

.field private greylist mInterfaces:[Landroid/hardware/usb/UsbInterface;

.field private final greylist-max-o mManufacturerName:Ljava/lang/String;

.field private final greylist-max-o mName:Ljava/lang/String;

.field private final greylist-max-o mProductId:I

.field private final greylist-max-o mProductName:Ljava/lang/String;

.field private final greylist-max-o mProtocol:I

.field private final blacklist mSerialNumberReader:Landroid/hardware/usb/IUsbSerialReader;

.field private final greylist-max-o mSubclass:I

.field private final greylist-max-o mVendorId:I

.field private final greylist-max-o mVersion:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 347
    new-instance v0, Landroid/hardware/usb/UsbDevice$1;

    invoke-direct {v0}, Landroid/hardware/usb/UsbDevice$1;-><init>()V

    sput-object v0, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/hardware/usb/UsbConfiguration;Landroid/hardware/usb/IUsbSerialReader;ZZZZZ)V
    .registers 31
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vendorId"    # I
    .param p3, "productId"    # I
    .param p4, "Class"    # I
    .param p5, "subClass"    # I
    .param p6, "protocol"    # I
    .param p7, "manufacturerName"    # Ljava/lang/String;
    .param p8, "productName"    # Ljava/lang/String;
    .param p9, "version"    # Ljava/lang/String;
    .param p10, "configurations"    # [Landroid/hardware/usb/UsbConfiguration;
    .param p11, "serialNumberReader"    # Landroid/hardware/usb/IUsbSerialReader;
    .param p12, "hasAudioPlayback"    # Z
    .param p13, "hasAudioCapture"    # Z
    .param p14, "hasMidi"    # Z
    .param p15, "hasVideoPlayback"    # Z
    .param p16, "hasVideoCapture"    # Z

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    .line 87
    move/from16 v0, p2

    iput v0, p0, Landroid/hardware/usb/UsbDevice;->mVendorId:I

    .line 88
    move/from16 v1, p3

    iput v1, p0, Landroid/hardware/usb/UsbDevice;->mProductId:I

    .line 89
    move/from16 v2, p4

    iput v2, p0, Landroid/hardware/usb/UsbDevice;->mClass:I

    .line 90
    move/from16 v3, p5

    iput v3, p0, Landroid/hardware/usb/UsbDevice;->mSubclass:I

    .line 91
    move/from16 v4, p6

    iput v4, p0, Landroid/hardware/usb/UsbDevice;->mProtocol:I

    .line 92
    move-object/from16 v5, p7

    iput-object v5, p0, Landroid/hardware/usb/UsbDevice;->mManufacturerName:Ljava/lang/String;

    .line 93
    move-object/from16 v6, p8

    iput-object v6, p0, Landroid/hardware/usb/UsbDevice;->mProductName:Ljava/lang/String;

    .line 94
    invoke-static/range {p9 .. p9}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Landroid/hardware/usb/UsbDevice;->mVersion:Ljava/lang/String;

    .line 95
    const-string v7, "configurations"

    move-object/from16 v8, p10

    invoke-static {v8, v7}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/hardware/usb/UsbConfiguration;

    iput-object v7, p0, Landroid/hardware/usb/UsbDevice;->mConfigurations:[Landroid/hardware/usb/UsbConfiguration;

    .line 96
    invoke-static/range {p11 .. p11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/usb/IUsbSerialReader;

    iput-object v7, p0, Landroid/hardware/usb/UsbDevice;->mSerialNumberReader:Landroid/hardware/usb/IUsbSerialReader;

    .line 97
    move/from16 v7, p12

    iput-boolean v7, p0, Landroid/hardware/usb/UsbDevice;->mHasAudioPlayback:Z

    .line 98
    move/from16 v9, p13

    iput-boolean v9, p0, Landroid/hardware/usb/UsbDevice;->mHasAudioCapture:Z

    .line 99
    move/from16 v10, p14

    iput-boolean v10, p0, Landroid/hardware/usb/UsbDevice;->mHasMidi:Z

    .line 100
    move/from16 v11, p15

    iput-boolean v11, p0, Landroid/hardware/usb/UsbDevice;->mHasVideoPlayback:Z

    .line 101
    move/from16 v12, p16

    iput-boolean v12, p0, Landroid/hardware/usb/UsbDevice;->mHasVideoCapture:Z

    .line 104
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v13

    if-eqz v13, :cond_64

    .line 105
    iget-object v13, p0, Landroid/hardware/usb/UsbDevice;->mSerialNumberReader:Landroid/hardware/usb/IUsbSerialReader;

    instance-of v13, v13, Landroid/hardware/usb/IUsbSerialReader$Stub;

    invoke-static {v13}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 107
    :cond_64
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/hardware/usb/UsbConfiguration;Landroid/hardware/usb/IUsbSerialReader;ZZZZZLandroid/hardware/usb/UsbDevice-IA;)V
    .registers 18

    invoke-direct/range {p0 .. p16}, Landroid/hardware/usb/UsbDevice;-><init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/hardware/usb/UsbConfiguration;Landroid/hardware/usb/IUsbSerialReader;ZZZZZ)V

    return-void
.end method

.method public static whitelist getDeviceId(Ljava/lang/String;)I
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 406
    invoke-static {p0}, Landroid/hardware/usb/UsbDevice;->native_get_device_id(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static whitelist getDeviceName(I)Ljava/lang/String;
    .registers 2
    .param p0, "id"    # I

    .line 410
    invoke-static {p0}, Landroid/hardware/usb/UsbDevice;->native_get_device_name(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getInterfaceList()[Landroid/hardware/usb/UsbInterface;
    .registers 10

    .line 266
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mInterfaces:[Landroid/hardware/usb/UsbInterface;

    if-nez v0, :cond_3b

    .line 267
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mConfigurations:[Landroid/hardware/usb/UsbConfiguration;

    array-length v0, v0

    .line 268
    .local v0, "configurationCount":I
    const/4 v1, 0x0

    .line 269
    .local v1, "interfaceCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_17

    .line 270
    iget-object v3, p0, Landroid/hardware/usb/UsbDevice;->mConfigurations:[Landroid/hardware/usb/UsbConfiguration;

    aget-object v3, v3, v2

    .line 271
    .local v3, "configuration":Landroid/hardware/usb/UsbConfiguration;
    invoke-virtual {v3}, Landroid/hardware/usb/UsbConfiguration;->getInterfaceCount()I

    move-result v4

    add-int/2addr v1, v4

    .line 269
    .end local v3    # "configuration":Landroid/hardware/usb/UsbConfiguration;
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 274
    .end local v2    # "i":I
    :cond_17
    new-array v2, v1, [Landroid/hardware/usb/UsbInterface;

    iput-object v2, p0, Landroid/hardware/usb/UsbDevice;->mInterfaces:[Landroid/hardware/usb/UsbInterface;

    .line 275
    const/4 v2, 0x0

    .line 276
    .local v2, "offset":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    if-ge v3, v0, :cond_3b

    .line 277
    iget-object v4, p0, Landroid/hardware/usb/UsbDevice;->mConfigurations:[Landroid/hardware/usb/UsbConfiguration;

    aget-object v4, v4, v3

    .line 278
    .local v4, "configuration":Landroid/hardware/usb/UsbConfiguration;
    invoke-virtual {v4}, Landroid/hardware/usb/UsbConfiguration;->getInterfaceCount()I

    move-result v1

    .line 279
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_28
    if-ge v5, v1, :cond_38

    .line 280
    iget-object v6, p0, Landroid/hardware/usb/UsbDevice;->mInterfaces:[Landroid/hardware/usb/UsbInterface;

    add-int/lit8 v7, v2, 0x1

    .end local v2    # "offset":I
    .local v7, "offset":I
    invoke-virtual {v4, v5}, Landroid/hardware/usb/UsbConfiguration;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v8

    aput-object v8, v6, v2

    .line 279
    add-int/lit8 v5, v5, 0x1

    move v2, v7

    goto :goto_28

    .line 276
    .end local v4    # "configuration":Landroid/hardware/usb/UsbConfiguration;
    .end local v5    # "j":I
    .end local v7    # "offset":I
    .restart local v2    # "offset":I
    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 285
    .end local v0    # "configurationCount":I
    .end local v1    # "interfaceCount":I
    .end local v2    # "offset":I
    .end local v3    # "i":I
    :cond_3b
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mInterfaces:[Landroid/hardware/usb/UsbInterface;

    return-object v0
.end method

.method private static native greylist-max-o native_get_device_id(Ljava/lang/String;)I
.end method

.method private static native greylist-max-o native_get_device_name(I)Ljava/lang/String;
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 312
    instance-of v0, p1, Landroid/hardware/usb/UsbDevice;

    if-eqz v0, :cond_10

    .line 313
    move-object v0, p1

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    iget-object v0, v0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    iget-object v1, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 314
    :cond_10
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 315
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 317
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getConfiguration(I)Landroid/hardware/usb/UsbConfiguration;
    .registers 3
    .param p1, "index"    # I

    .line 262
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mConfigurations:[Landroid/hardware/usb/UsbConfiguration;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public whitelist getConfigurationCount()I
    .registers 2

    .line 228
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mConfigurations:[Landroid/hardware/usb/UsbConfiguration;

    array-length v0, v0

    return v0
.end method

.method public whitelist getDeviceClass()I
    .registers 2

    .line 201
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mClass:I

    return v0
.end method

.method public whitelist getDeviceId()I
    .registers 2

    .line 173
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getDeviceName()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDeviceProtocol()I
    .registers 2

    .line 219
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mProtocol:I

    return v0
.end method

.method public whitelist getDeviceSubclass()I
    .registers 2

    .line 210
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mSubclass:I

    return v0
.end method

.method public blacklist getHasAudioCapture()Z
    .registers 2

    .line 238
    iget-boolean v0, p0, Landroid/hardware/usb/UsbDevice;->mHasAudioCapture:Z

    return v0
.end method

.method public blacklist getHasAudioPlayback()Z
    .registers 2

    .line 233
    iget-boolean v0, p0, Landroid/hardware/usb/UsbDevice;->mHasAudioPlayback:Z

    return v0
.end method

.method public blacklist getHasMidi()Z
    .registers 2

    .line 243
    iget-boolean v0, p0, Landroid/hardware/usb/UsbDevice;->mHasMidi:Z

    return v0
.end method

.method public blacklist getHasVideoCapture()Z
    .registers 2

    .line 253
    iget-boolean v0, p0, Landroid/hardware/usb/UsbDevice;->mHasVideoCapture:Z

    return v0
.end method

.method public blacklist getHasVideoPlayback()Z
    .registers 2

    .line 248
    iget-boolean v0, p0, Landroid/hardware/usb/UsbDevice;->mHasVideoPlayback:Z

    return v0
.end method

.method public whitelist getInterface(I)Landroid/hardware/usb/UsbInterface;
    .registers 3
    .param p1, "index"    # I

    .line 307
    invoke-direct {p0}, Landroid/hardware/usb/UsbDevice;->getInterfaceList()[Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public whitelist getInterfaceCount()I
    .registers 2

    .line 296
    invoke-direct {p0}, Landroid/hardware/usb/UsbDevice;->getInterfaceList()[Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public whitelist getManufacturerName()Ljava/lang/String;
    .registers 2

    .line 126
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mManufacturerName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getProductId()I
    .registers 2

    .line 191
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mProductId:I

    return v0
.end method

.method public whitelist getProductName()Ljava/lang/String;
    .registers 2

    .line 135
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mProductName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSerialNumber()Ljava/lang/String;
    .registers 3

    .line 157
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mSerialNumberReader:Landroid/hardware/usb/IUsbSerialReader;

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/usb/IUsbSerialReader;->getSerial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 158
    :catch_b
    move-exception v0

    .line 159
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 160
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getVendorId()I
    .registers 2

    .line 182
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mVendorId:I

    return v0
.end method

.method public whitelist getVersion()Ljava/lang/String;
    .registers 2

    .line 144
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 323
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UsbDevice[mName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mVendorId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/usb/UsbDevice;->mVendorId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mProductId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/usb/UsbDevice;->mProductId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mClass="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/usb/UsbDevice;->mClass:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mSubclass="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/usb/UsbDevice;->mSubclass:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mProtocol="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/usb/UsbDevice;->mProtocol:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mManufacturerName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/usb/UsbDevice;->mManufacturerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mProductName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/usb/UsbDevice;->mProductName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/usb/UsbDevice;->mVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mSerialNumberReader="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/usb/UsbDevice;->mSerialNumberReader:Landroid/hardware/usb/IUsbSerialReader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mHasAudioPlayback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/usb/UsbDevice;->mHasAudioPlayback:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mHasAudioCapture="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/usb/UsbDevice;->mHasAudioCapture:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mHasMidi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/usb/UsbDevice;->mHasMidi:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mHasVideoCapture="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/usb/UsbDevice;->mHasVideoCapture:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mHasVideoPlayback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/usb/UsbDevice;->mHasVideoPlayback:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mConfigurations=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c9
    iget-object v2, p0, Landroid/hardware/usb/UsbDevice;->mConfigurations:[Landroid/hardware/usb/UsbConfiguration;

    array-length v2, v2

    if-ge v1, v2, :cond_e1

    .line 340
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    iget-object v2, p0, Landroid/hardware/usb/UsbDevice;->mConfigurations:[Landroid/hardware/usb/UsbConfiguration;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/hardware/usb/UsbConfiguration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_c9

    .line 343
    .end local v1    # "i":I
    :cond_e1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 387
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 388
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mVendorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mProductId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mSubclass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mProtocol:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mManufacturerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mProductName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mSerialNumberReader:Landroid/hardware/usb/IUsbSerialReader;

    invoke-interface {v0}, Landroid/hardware/usb/IUsbSerialReader;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 397
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mConfigurations:[Landroid/hardware/usb/UsbConfiguration;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 398
    iget-boolean v0, p0, Landroid/hardware/usb/UsbDevice;->mHasAudioPlayback:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    iget-boolean v0, p0, Landroid/hardware/usb/UsbDevice;->mHasAudioCapture:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    iget-boolean v0, p0, Landroid/hardware/usb/UsbDevice;->mHasMidi:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    iget-boolean v0, p0, Landroid/hardware/usb/UsbDevice;->mHasVideoPlayback:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    iget-boolean v0, p0, Landroid/hardware/usb/UsbDevice;->mHasVideoCapture:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    return-void
.end method
