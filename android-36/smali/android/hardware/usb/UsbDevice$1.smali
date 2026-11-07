.class Landroid/hardware/usb/UsbDevice$1;
.super Ljava/lang/Object;
.source "UsbDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/UsbDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/usb/UsbDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/UsbDevice;
    .registers 21
    .param p1, "in"    # Landroid/os/Parcel;

    .line 350
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "name":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 352
    .local v2, "vendorId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 353
    .local v3, "productId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 354
    .local v4, "clasz":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 355
    .local v5, "subClass":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 356
    .local v6, "protocol":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 357
    .local v7, "manufacturerName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 358
    .local v8, "productName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 359
    .local v9, "version":Ljava/lang/String;
    nop

    .line 360
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/IUsbSerialReader$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbSerialReader;

    move-result-object v11

    .line 361
    .local v11, "serialNumberReader":Landroid/hardware/usb/IUsbSerialReader;
    const-class v0, Landroid/hardware/usb/UsbConfiguration;

    .line 362
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v10, Landroid/hardware/usb/UsbConfiguration;

    .line 361
    move-object/from16 v12, p1

    invoke-virtual {v12, v0, v10}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [Landroid/hardware/usb/UsbConfiguration;

    .line 364
    .local v10, "configurations":[Landroid/hardware/usb/UsbConfiguration;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v14, 0x1

    if-ne v0, v14, :cond_47

    move v0, v14

    goto :goto_48

    :cond_47
    const/4 v0, 0x0

    .line 365
    .local v0, "hasAudioPlayback":Z
    :goto_48
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-ne v15, v14, :cond_50

    move v15, v14

    goto :goto_51

    :cond_50
    const/4 v15, 0x0

    .line 366
    .local v15, "hasAudioCapture":Z
    :goto_51
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-ne v13, v14, :cond_59

    move v13, v14

    goto :goto_5a

    :cond_59
    const/4 v13, 0x0

    .line 367
    .local v13, "hasMidi":Z
    :goto_5a
    move/from16 v17, v0

    .end local v0    # "hasAudioPlayback":Z
    .local v17, "hasAudioPlayback":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v14, :cond_64

    move v0, v14

    goto :goto_65

    :cond_64
    const/4 v0, 0x0

    .line 368
    .local v0, "hasVideoPlayback":Z
    :goto_65
    move/from16 v18, v0

    .end local v0    # "hasVideoPlayback":Z
    .local v18, "hasVideoPlayback":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v14, :cond_70

    move/from16 v16, v14

    goto :goto_72

    :cond_70
    const/16 v16, 0x0

    .line 369
    .local v16, "hasVideoCapture":Z
    :goto_72
    new-instance v0, Landroid/hardware/usb/UsbDevice;

    move/from16 v12, v17

    .end local v17    # "hasAudioPlayback":Z
    .local v12, "hasAudioPlayback":Z
    const/16 v17, 0x0

    move v14, v13

    move v13, v15

    move/from16 v15, v18

    .end local v18    # "hasVideoPlayback":Z
    .local v13, "hasAudioCapture":Z
    .local v14, "hasMidi":Z
    .local v15, "hasVideoPlayback":Z
    invoke-direct/range {v0 .. v17}, Landroid/hardware/usb/UsbDevice;-><init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/hardware/usb/UsbConfiguration;Landroid/hardware/usb/IUsbSerialReader;ZZZZZLandroid/hardware/usb/UsbDevice-IA;)V

    .line 374
    .local v0, "device":Landroid/hardware/usb/UsbDevice;
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

    .line 348
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbDevice$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/UsbDevice;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/usb/UsbDevice;
    .registers 3
    .param p1, "size"    # I

    .line 378
    new-array v0, p1, [Landroid/hardware/usb/UsbDevice;

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

    .line 348
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbDevice$1;->newArray(I)[Landroid/hardware/usb/UsbDevice;

    move-result-object p1

    return-object p1
.end method
