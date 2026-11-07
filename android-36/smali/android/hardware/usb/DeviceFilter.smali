.class public Landroid/hardware/usb/DeviceFilter;
.super Ljava/lang/Object;
.source "DeviceFilter.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String;


# instance fields
.field public final greylist-max-o mClass:I

.field public final blacklist mInterfaceName:Ljava/lang/String;

.field public final greylist-max-o mManufacturerName:Ljava/lang/String;

.field public final greylist-max-o mProductId:I

.field public final greylist-max-o mProductName:Ljava/lang/String;

.field public final greylist-max-o mProtocol:I

.field public final greylist-max-o mSerialNumber:Ljava/lang/String;

.field public final greylist-max-o mSubclass:I

.field public final greylist-max-o mVendorId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    const-class v0, Landroid/hardware/usb/DeviceFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/usb/DeviceFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "vid"    # I
    .param p2, "pid"    # I
    .param p3, "clasz"    # I
    .param p4, "subclass"    # I
    .param p5, "protocol"    # I
    .param p6, "manufacturer"    # Ljava/lang/String;
    .param p7, "product"    # Ljava/lang/String;
    .param p8, "serialnum"    # Ljava/lang/String;
    .param p9, "interfaceName"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    .line 68
    iput p2, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    .line 69
    iput p3, p0, Landroid/hardware/usb/DeviceFilter;->mClass:I

    .line 70
    iput p4, p0, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    .line 71
    iput p5, p0, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    .line 72
    iput-object p6, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    .line 73
    iput-object p7, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    .line 74
    iput-object p8, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    .line 75
    iput-object p9, p0, Landroid/hardware/usb/DeviceFilter;->mInterfaceName:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/usb/DeviceFilter;)V
    .registers 3
    .param p1, "filter"    # Landroid/hardware/usb/DeviceFilter;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iget v0, p1, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    iput v0, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    .line 92
    iget v0, p1, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    iput v0, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    .line 93
    iget v0, p1, Landroid/hardware/usb/DeviceFilter;->mClass:I

    iput v0, p0, Landroid/hardware/usb/DeviceFilter;->mClass:I

    .line 94
    iget v0, p1, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    iput v0, p0, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    .line 95
    iget v0, p1, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    iput v0, p0, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    .line 96
    iget-object v0, p1, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    .line 97
    iget-object v0, p1, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    .line 98
    iget-object v0, p1, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    .line 99
    iget-object v0, p1, Landroid/hardware/usb/DeviceFilter;->mInterfaceName:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mInterfaceName:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/hardware/usb/UsbDevice;)V
    .registers 3
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    iput v0, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    .line 80
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    iput v0, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    .line 81
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v0

    iput v0, p0, Landroid/hardware/usb/DeviceFilter;->mClass:I

    .line 82
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v0

    iput v0, p0, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    .line 83
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v0

    iput v0, p0, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    .line 84
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mInterfaceName:Ljava/lang/String;

    .line 88
    return-void
.end method

.method private greylist-max-o matches(III)Z
    .registers 6
    .param p1, "usbClass"    # I
    .param p2, "subclass"    # I
    .param p3, "protocol"    # I

    .line 192
    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mClass:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mClass:I

    if-ne p1, v0, :cond_1a

    :cond_9
    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    if-eq v0, v1, :cond_11

    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    if-ne p2, v0, :cond_1a

    :cond_11
    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    if-eq v0, v1, :cond_1c

    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    if-ne p3, v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    :goto_1d
    return v0
.end method

.method private blacklist matches(IIILjava/lang/String;)Z
    .registers 6
    .param p1, "usbClass"    # I
    .param p2, "subclass"    # I
    .param p3, "protocol"    # I
    .param p4, "interfaceName"    # Ljava/lang/String;

    .line 198
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/Flags;->enableInterfaceNameDeviceFilter()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 199
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/usb/DeviceFilter;->matches(III)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mInterfaceName:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mInterfaceName:Ljava/lang/String;

    .line 200
    invoke-virtual {v0, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 199
    :goto_1b
    return v0

    .line 202
    :cond_1c
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/usb/DeviceFilter;->matches(III)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/DeviceFilter;
    .registers 23
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    move-object/from16 v1, p0

    const/4 v0, -0x1

    .line 105
    .local v0, "vendorId":I
    const/4 v2, -0x1

    .line 106
    .local v2, "productId":I
    const/4 v3, -0x1

    .line 107
    .local v3, "deviceClass":I
    const/4 v4, -0x1

    .line 108
    .local v4, "deviceSubclass":I
    const/4 v5, -0x1

    .line 109
    .local v5, "deviceProtocol":I
    const/4 v6, 0x0

    .line 110
    .local v6, "manufacturerName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 111
    .local v7, "productName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 112
    .local v8, "serialNumber":Ljava/lang/String;
    const/4 v9, 0x0

    .line 113
    .local v9, "interfaceName":Ljava/lang/String;
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v10

    .line 114
    .local v10, "count":I
    const/4 v11, 0x0

    move v13, v0

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    .end local v0    # "vendorId":I
    .end local v2    # "productId":I
    .end local v3    # "deviceClass":I
    .end local v4    # "deviceSubclass":I
    .end local v5    # "deviceProtocol":I
    .end local v6    # "manufacturerName":Ljava/lang/String;
    .end local v7    # "productName":Ljava/lang/String;
    .end local v8    # "serialNumber":Ljava/lang/String;
    .end local v9    # "interfaceName":Ljava/lang/String;
    .local v11, "i":I
    .local v13, "vendorId":I
    .local v14, "productId":I
    .local v15, "deviceClass":I
    .local v16, "deviceSubclass":I
    .local v17, "deviceProtocol":I
    .local v18, "manufacturerName":Ljava/lang/String;
    .local v19, "productName":Ljava/lang/String;
    .local v20, "serialNumber":Ljava/lang/String;
    .local v21, "interfaceName":Ljava/lang/String;
    :goto_1f
    if-ge v11, v10, :cond_e9

    .line 115
    invoke-interface {v1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "name":Ljava/lang/String;
    invoke-interface {v1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "value":Ljava/lang/String;
    const-string v3, "manufacturer-name"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 119
    move-object v3, v0

    move-object/from16 v18, v3

    .end local v18    # "manufacturerName":Ljava/lang/String;
    .local v3, "manufacturerName":Ljava/lang/String;
    goto/16 :goto_e5

    .line 120
    .end local v3    # "manufacturerName":Ljava/lang/String;
    .restart local v18    # "manufacturerName":Ljava/lang/String;
    :cond_36
    const-string v3, "product-name"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 121
    move-object v3, v0

    move-object/from16 v19, v3

    .end local v19    # "productName":Ljava/lang/String;
    .local v3, "productName":Ljava/lang/String;
    goto/16 :goto_e5

    .line 122
    .end local v3    # "productName":Ljava/lang/String;
    .restart local v19    # "productName":Ljava/lang/String;
    :cond_43
    const-string v3, "serial-number"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 123
    move-object v3, v0

    move-object/from16 v20, v3

    .end local v20    # "serialNumber":Ljava/lang/String;
    .local v3, "serialNumber":Ljava/lang/String;
    goto/16 :goto_e5

    .line 124
    .end local v3    # "serialNumber":Ljava/lang/String;
    .restart local v20    # "serialNumber":Ljava/lang/String;
    :cond_50
    const-string v3, "interface-name"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 125
    move-object v3, v0

    move-object/from16 v21, v3

    .end local v21    # "interfaceName":Ljava/lang/String;
    .local v3, "interfaceName":Ljava/lang/String;
    goto/16 :goto_e5

    .line 128
    .end local v3    # "interfaceName":Ljava/lang/String;
    .restart local v21    # "interfaceName":Ljava/lang/String;
    :cond_5d
    const/16 v3, 0xa

    .line 129
    .local v3, "radix":I
    if-eqz v0, :cond_8b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_8b

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x30

    if-ne v4, v6, :cond_8b

    .line 130
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x78

    if-eq v6, v7, :cond_82

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x58

    if-ne v4, v6, :cond_8b

    .line 132
    :cond_82
    const/16 v3, 0x10

    .line 133
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move v4, v3

    move-object v3, v0

    goto :goto_8d

    .line 136
    :cond_8b
    move v4, v3

    move-object v3, v0

    .end local v0    # "value":Ljava/lang/String;
    .local v3, "value":Ljava/lang/String;
    .local v4, "radix":I
    :goto_8d
    :try_start_8d
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_91
    .catch Ljava/lang/NumberFormatException; {:try_start_8d .. :try_end_91} :catch_cb

    .line 140
    .local v0, "intValue":I
    nop

    .line 141
    const-string v5, "vendor-id"

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 142
    move v5, v0

    move v13, v5

    .end local v13    # "vendorId":I
    .local v5, "vendorId":I
    goto :goto_e5

    .line 143
    .end local v5    # "vendorId":I
    .restart local v13    # "vendorId":I
    :cond_9d
    const-string v5, "product-id"

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a8

    .line 144
    move v5, v0

    move v14, v5

    .end local v14    # "productId":I
    .local v5, "productId":I
    goto :goto_e5

    .line 145
    .end local v5    # "productId":I
    .restart local v14    # "productId":I
    :cond_a8
    const-string v5, "class"

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b3

    .line 146
    move v5, v0

    move v15, v5

    .end local v15    # "deviceClass":I
    .local v5, "deviceClass":I
    goto :goto_e5

    .line 147
    .end local v5    # "deviceClass":I
    .restart local v15    # "deviceClass":I
    :cond_b3
    const-string v5, "subclass"

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bf

    .line 148
    move v5, v0

    move/from16 v16, v5

    .end local v16    # "deviceSubclass":I
    .local v5, "deviceSubclass":I
    goto :goto_e5

    .line 149
    .end local v5    # "deviceSubclass":I
    .restart local v16    # "deviceSubclass":I
    :cond_bf
    const-string v5, "protocol"

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e5

    .line 150
    move v5, v0

    move/from16 v17, v5

    .end local v17    # "deviceProtocol":I
    .local v5, "deviceProtocol":I
    goto :goto_e5

    .line 137
    .end local v0    # "intValue":I
    .end local v5    # "deviceProtocol":I
    .restart local v17    # "deviceProtocol":I
    :catch_cb
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v5, Landroid/hardware/usb/DeviceFilter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid number for field "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    nop

    .line 114
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "radix":I
    :cond_e5
    :goto_e5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1f

    .line 154
    .end local v11    # "i":I
    :cond_e9
    new-instance v12, Landroid/hardware/usb/DeviceFilter;

    invoke-direct/range {v12 .. v21}, Landroid/hardware/usb/DeviceFilter;-><init>(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v12
.end method


# virtual methods
.method public greylist-max-o contains(Landroid/hardware/usb/DeviceFilter;)Z
    .registers 6
    .param p1, "device"    # Landroid/hardware/usb/DeviceFilter;

    .line 244
    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_d

    iget v0, p1, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    iget v3, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    if-eq v0, v3, :cond_d

    return v1

    .line 245
    :cond_d
    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    if-eq v0, v2, :cond_18

    iget v0, p1, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    iget v2, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    if-eq v0, v2, :cond_18

    return v1

    .line 246
    :cond_18
    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v0, :cond_27

    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    iget-object v2, p1, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 248
    return v1

    .line 250
    :cond_27
    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v0, :cond_36

    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    iget-object v2, p1, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 251
    return v1

    .line 253
    :cond_36
    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v0, :cond_45

    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    iget-object v2, p1, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    .line 254
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 255
    return v1

    .line 259
    :cond_45
    iget v0, p1, Landroid/hardware/usb/DeviceFilter;->mClass:I

    iget v1, p1, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    iget v2, p1, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/usb/DeviceFilter;->matches(III)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 11
    .param p1, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J

    .line 356
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 358
    .local v0, "token":J
    const-wide v2, 0x10500000001L

    iget v4, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    const-string v5, "vendor_id"

    invoke-virtual {p1, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 359
    const-wide v2, 0x10500000002L

    iget v4, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    const-string v5, "product_id"

    invoke-virtual {p1, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 360
    const-wide v2, 0x10500000003L

    iget v4, p0, Landroid/hardware/usb/DeviceFilter;->mClass:I

    const-string v5, "class"

    invoke-virtual {p1, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 361
    const-wide v2, 0x10500000004L

    iget v4, p0, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    const-string v5, "subclass"

    invoke-virtual {p1, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 362
    const-wide v2, 0x10500000005L

    iget v4, p0, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    const-string v5, "protocol"

    invoke-virtual {p1, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 363
    const-wide v2, 0x10900000006L

    iget-object v4, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    const-string v5, "manufacturer_name"

    invoke-virtual {p1, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 364
    const-wide v2, 0x10900000007L

    iget-object v4, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    const-string v5, "product_name"

    invoke-virtual {p1, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 365
    const-wide v2, 0x10900000008L

    iget-object v4, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    const-string v5, "serial_number"

    invoke-virtual {p1, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 367
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 368
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 265
    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_152

    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    if-eq v0, v2, :cond_152

    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mClass:I

    if-eq v0, v2, :cond_152

    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    if-eq v0, v2, :cond_152

    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    if-ne v0, v2, :cond_18

    goto/16 :goto_152

    .line 269
    :cond_18
    instance-of v0, p1, Landroid/hardware/usb/DeviceFilter;

    const/4 v2, 0x1

    if-eqz v0, :cond_aa

    .line 270
    move-object v0, p1

    check-cast v0, Landroid/hardware/usb/DeviceFilter;

    .line 272
    .local v0, "filter":Landroid/hardware/usb/DeviceFilter;
    iget v3, v0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    iget v4, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    if-ne v3, v4, :cond_a9

    iget v3, v0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    iget v4, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    if-ne v3, v4, :cond_a9

    iget v3, v0, Landroid/hardware/usb/DeviceFilter;->mClass:I

    iget v4, p0, Landroid/hardware/usb/DeviceFilter;->mClass:I

    if-ne v3, v4, :cond_a9

    iget v3, v0, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    iget v4, p0, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    if-ne v3, v4, :cond_a9

    iget v3, v0, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    iget v4, p0, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    if-eq v3, v4, :cond_40

    goto/16 :goto_a9

    .line 279
    :cond_40
    iget-object v3, v0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v3, :cond_48

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v3, :cond_70

    :cond_48
    iget-object v3, v0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-nez v3, :cond_50

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-nez v3, :cond_70

    :cond_50
    iget-object v3, v0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v3, :cond_58

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v3, :cond_70

    :cond_58
    iget-object v3, v0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-nez v3, :cond_60

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-nez v3, :cond_70

    :cond_60
    iget-object v3, v0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v3, :cond_68

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v3, :cond_70

    :cond_68
    iget-object v3, v0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-nez v3, :cond_71

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v3, :cond_71

    .line 291
    :cond_70
    return v1

    .line 293
    :cond_71
    iget-object v3, v0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v3, :cond_83

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v3, :cond_83

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    iget-object v4, v0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    .line 295
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    :cond_83
    iget-object v3, v0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v3, :cond_95

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v3, :cond_95

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    iget-object v4, v0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    .line 298
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    :cond_95
    iget-object v3, v0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v3, :cond_a8

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v3, :cond_a8

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    iget-object v4, v0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    .line 301
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a8

    .line 302
    :cond_a7
    return v1

    .line 304
    :cond_a8
    return v2

    .line 277
    :cond_a9
    :goto_a9
    return v1

    .line 306
    .end local v0    # "filter":Landroid/hardware/usb/DeviceFilter;
    :cond_aa
    instance-of v0, p1, Landroid/hardware/usb/UsbDevice;

    if-eqz v0, :cond_151

    .line 307
    move-object v0, p1

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 308
    .local v0, "device":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v3

    iget v4, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    if-ne v3, v4, :cond_150

    .line 309
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v3

    iget v4, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    if-ne v3, v4, :cond_150

    .line 310
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v3

    iget v4, p0, Landroid/hardware/usb/DeviceFilter;->mClass:I

    if-ne v3, v4, :cond_150

    .line 311
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v3

    iget v4, p0, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    if-ne v3, v4, :cond_150

    .line 312
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v3

    iget v4, p0, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    if-eq v3, v4, :cond_db

    goto/16 :goto_150

    .line 315
    :cond_db
    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v3, :cond_e5

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_117

    :cond_e5
    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-nez v3, :cond_ef

    .line 316
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_117

    :cond_ef
    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v3, :cond_f9

    .line 317
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_117

    :cond_f9
    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-nez v3, :cond_103

    .line 318
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_117

    :cond_103
    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v3, :cond_10d

    .line 319
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_117

    :cond_10d
    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-nez v3, :cond_118

    .line 320
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_118

    .line 321
    :cond_117
    return v1

    .line 323
    :cond_118
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_12a

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    .line 324
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14e

    .line 325
    :cond_12a
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_13c

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    .line 326
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14e

    .line 327
    :cond_13c
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14f

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    .line 328
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14f

    .line 329
    :cond_14e
    return v1

    .line 331
    :cond_14f
    return v2

    .line 313
    :cond_150
    :goto_150
    return v1

    .line 333
    .end local v0    # "device":Landroid/hardware/usb/UsbDevice;
    :cond_151
    return v1

    .line 267
    :cond_152
    :goto_152
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 338
    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/hardware/usb/DeviceFilter;->mClass:I

    shl-int/lit8 v1, v1, 0x10

    iget v2, p0, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget v2, p0, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public greylist-max-o matches(Landroid/hardware/usb/UsbDevice;)Z
    .registers 11
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .line 207
    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_f

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    iget v3, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    if-eq v0, v3, :cond_f

    return v1

    .line 208
    :cond_f
    iget v0, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    if-eq v0, v2, :cond_1c

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    iget v2, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    if-eq v0, v2, :cond_1c

    return v1

    .line 209
    :cond_1c
    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_27

    return v1

    .line 210
    :cond_27
    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v0, :cond_32

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_32

    return v1

    .line 211
    :cond_32
    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v0, :cond_3d

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3d

    return v1

    .line 212
    :cond_3d
    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v0, :cond_54

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    return v1

    .line 214
    :cond_54
    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v0, :cond_6b

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6b

    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    return v1

    .line 216
    :cond_6b
    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v0, :cond_82

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_82

    iget-object v0, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    .line 217
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    return v1

    .line 220
    :cond_82
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v2

    .line 221
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v3

    .line 220
    invoke-direct {p0, v0, v2, v3}, Landroid/hardware/usb/DeviceFilter;->matches(III)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_96

    .line 221
    return v2

    .line 224
    :cond_96
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v0

    .line 225
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9b
    if-ge v3, v0, :cond_bb

    .line 226
    invoke-virtual {p1, v3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v4

    .line 227
    .local v4, "intf":Landroid/hardware/usb/UsbInterface;
    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v5

    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v6

    .line 228
    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v7

    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getName()Ljava/lang/String;

    move-result-object v8

    .line 227
    invoke-direct {p0, v5, v6, v7, v8}, Landroid/hardware/usb/DeviceFilter;->matches(IIILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b8

    .line 228
    return v2

    .line 225
    .end local v4    # "intf":Landroid/hardware/usb/UsbInterface;
    :cond_b8
    add-int/lit8 v3, v3, 0x1

    goto :goto_9b

    .line 231
    .end local v3    # "i":I
    :cond_bb
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceFilter[mVendorId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mProductId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/DeviceFilter;->mClass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mSubclass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mManufacturerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mProductName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mSerialNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mInterfaceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/DeviceFilter;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o write(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 7
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    const/4 v0, 0x0

    const-string v1, "usb-device"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 161
    iget v2, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_16

    .line 162
    iget v2, p0, Landroid/hardware/usb/DeviceFilter;->mVendorId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "vendor-id"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 164
    :cond_16
    iget v2, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    if-eq v2, v3, :cond_25

    .line 165
    iget v2, p0, Landroid/hardware/usb/DeviceFilter;->mProductId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "product-id"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 167
    :cond_25
    iget v2, p0, Landroid/hardware/usb/DeviceFilter;->mClass:I

    if-eq v2, v3, :cond_34

    .line 168
    iget v2, p0, Landroid/hardware/usb/DeviceFilter;->mClass:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "class"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 170
    :cond_34
    iget v2, p0, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    if-eq v2, v3, :cond_43

    .line 171
    iget v2, p0, Landroid/hardware/usb/DeviceFilter;->mSubclass:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "subclass"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 173
    :cond_43
    iget v2, p0, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    if-eq v2, v3, :cond_52

    .line 174
    iget v2, p0, Landroid/hardware/usb/DeviceFilter;->mProtocol:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "protocol"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 176
    :cond_52
    iget-object v2, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v2, :cond_5d

    .line 177
    const-string v2, "manufacturer-name"

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 179
    :cond_5d
    iget-object v2, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v2, :cond_68

    .line 180
    const-string v2, "product-name"

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 182
    :cond_68
    iget-object v2, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v2, :cond_73

    .line 183
    const-string v2, "serial-number"

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 185
    :cond_73
    iget-object v2, p0, Landroid/hardware/usb/DeviceFilter;->mInterfaceName:Ljava/lang/String;

    if-eqz v2, :cond_7e

    .line 186
    const-string v2, "interface-name"

    iget-object v3, p0, Landroid/hardware/usb/DeviceFilter;->mInterfaceName:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 188
    :cond_7e
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 189
    return-void
.end method
