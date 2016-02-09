.class Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
.super Ljava/lang/Object;
.source "UsbSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceFilter"
.end annotation


# instance fields
.field public final mClass:I

.field public final mManufacturerName:Ljava/lang/String;

.field public final mProductId:I

.field public final mProductName:Ljava/lang/String;

.field public final mProtocol:I

.field public final mSerialNumber:Ljava/lang/String;

.field public final mSubclass:I

.field public final mVendorId:I


# direct methods
.method public constructor <init>(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "vid"    # I
    .param p2, "pid"    # I
    .param p3, "clasz"    # I
    .param p4, "subclass"    # I
    .param p5, "protocol"    # I
    .param p6, "manufacturer"    # Ljava/lang/String;
    .param p7, "product"    # Ljava/lang/String;
    .param p8, "serialnum"    # Ljava/lang/String;

    #@0
    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 123
    iput p1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    #@5
    .line 124
    iput p2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    #@7
    .line 125
    iput p3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    #@9
    .line 126
    iput p4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    #@b
    .line 127
    iput p5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    #@d
    .line 128
    iput-object p6, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    #@f
    .line 129
    iput-object p7, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    #@11
    .line 130
    iput-object p8, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    #@13
    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 1
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    #@0
    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 134
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    #@9
    .line 135
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    #@f
    .line 136
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    #@15
    .line 137
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    #@18
    move-result v0

    #@19
    iput v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    #@1b
    .line 138
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    #@21
    .line 139
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    #@27
    .line 140
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    #@2d
    .line 141
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    #@33
    .line 133
    return-void
.end method

.method private matches(III)Z
    .locals 4
    .param p1, "clasz"    # I
    .param p2, "subclass"    # I
    .param p3, "protocol"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v3, -0x1

    #@3
    .line 229
    iget v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    #@5
    if-eq v2, v3, :cond_0

    #@7
    iget v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    #@9
    if-ne p1, v2, :cond_4

    #@b
    .line 230
    :cond_0
    iget v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    #@d
    if-eq v2, v3, :cond_1

    #@f
    iget v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    #@11
    if-ne p2, v2, :cond_4

    #@13
    .line 231
    :cond_1
    iget v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    #@15
    if-eq v2, v3, :cond_2

    #@17
    iget v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    #@19
    if-ne p3, v2, :cond_3

    #@1b
    .line 229
    :cond_2
    :goto_0
    return v0

    #@1c
    :cond_3
    move v0, v1

    #@1d
    .line 231
    goto :goto_0

    #@1e
    :cond_4
    move v0, v1

    #@1f
    .line 229
    goto :goto_0
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    .locals 19
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 146
    const/4 v2, -0x1

    #@1
    .line 147
    .local v2, "vendorId":I
    const/4 v3, -0x1

    #@2
    .line 148
    .local v3, "productId":I
    const/4 v4, -0x1

    #@3
    .line 149
    .local v4, "deviceClass":I
    const/4 v5, -0x1

    #@4
    .line 150
    .local v5, "deviceSubclass":I
    const/4 v6, -0x1

    #@5
    .line 151
    .local v6, "deviceProtocol":I
    const/4 v7, 0x0

    #@6
    .line 152
    .local v7, "manufacturerName":Ljava/lang/String;
    const/4 v8, 0x0

    #@7
    .line 153
    .local v8, "productName":Ljava/lang/String;
    const/4 v9, 0x0

    #@8
    .line 155
    .local v9, "serialNumber":Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    #@b
    move-result v10

    #@c
    .line 156
    .local v10, "count":I
    const/4 v12, 0x0

    #@d
    .end local v7    # "manufacturerName":Ljava/lang/String;
    .end local v8    # "productName":Ljava/lang/String;
    .end local v9    # "serialNumber":Ljava/lang/String;
    .local v12, "i":I
    :goto_0
    if-ge v12, v10, :cond_a

    #@f
    .line 157
    move-object/from16 v0, p0

    #@11
    invoke-interface {v0, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    #@14
    move-result-object v14

    #@15
    .line 158
    .local v14, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    #@17
    invoke-interface {v0, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    #@1a
    move-result-object v16

    #@1b
    .line 160
    .local v16, "value":Ljava/lang/String;
    const-string/jumbo v1, "manufacturer-name"

    #@1e
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_1

    #@24
    .line 161
    move-object/from16 v7, v16

    #@26
    .line 156
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    #@28
    goto :goto_0

    #@29
    .line 162
    :cond_1
    const-string/jumbo v1, "product-name"

    #@2c
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v1

    #@30
    if-eqz v1, :cond_2

    #@32
    .line 163
    move-object/from16 v8, v16

    #@34
    .local v8, "productName":Ljava/lang/String;
    goto :goto_1

    #@35
    .line 164
    .end local v8    # "productName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "serial-number"

    #@38
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v1

    #@3c
    if-eqz v1, :cond_3

    #@3e
    .line 165
    move-object/from16 v9, v16

    #@40
    .local v9, "serialNumber":Ljava/lang/String;
    goto :goto_1

    #@41
    .line 167
    .end local v9    # "serialNumber":Ljava/lang/String;
    :cond_3
    const/4 v13, -0x1

    #@42
    .line 168
    .local v13, "intValue":I
    const/16 v15, 0xa

    #@44
    .line 169
    .local v15, "radix":I
    if-eqz v16, :cond_5

    #@46
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    #@49
    move-result v1

    #@4a
    const/16 v17, 0x2

    #@4c
    move/from16 v0, v17

    #@4e
    if-le v1, v0, :cond_5

    #@50
    const/4 v1, 0x0

    #@51
    move-object/from16 v0, v16

    #@53
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@56
    move-result v1

    #@57
    const/16 v17, 0x30

    #@59
    move/from16 v0, v17

    #@5b
    if-ne v1, v0, :cond_5

    #@5d
    .line 170
    const/4 v1, 0x1

    #@5e
    move-object/from16 v0, v16

    #@60
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@63
    move-result v1

    #@64
    const/16 v17, 0x78

    #@66
    move/from16 v0, v17

    #@68
    if-eq v1, v0, :cond_4

    #@6a
    const/4 v1, 0x1

    #@6b
    move-object/from16 v0, v16

    #@6d
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@70
    move-result v1

    #@71
    const/16 v17, 0x58

    #@73
    move/from16 v0, v17

    #@75
    if-ne v1, v0, :cond_5

    #@77
    .line 172
    :cond_4
    const/16 v15, 0x10

    #@79
    .line 173
    const/4 v1, 0x2

    #@7a
    move-object/from16 v0, v16

    #@7c
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@7f
    move-result-object v16

    #@80
    .line 176
    :cond_5
    :try_start_0
    move-object/from16 v0, v16

    #@82
    invoke-static {v0, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@85
    move-result v13

    #@86
    .line 181
    const-string/jumbo v1, "vendor-id"

    #@89
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8c
    move-result v1

    #@8d
    if-eqz v1, :cond_6

    #@8f
    .line 182
    move v2, v13

    #@90
    goto :goto_1

    #@91
    .line 177
    :catch_0
    move-exception v11

    #@92
    .line 178
    .local v11, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "UsbSettingsManager"

    #@95
    new-instance v17, Ljava/lang/StringBuilder;

    #@97
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@9a
    const-string/jumbo v18, "invalid number for field "

    #@9d
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v17

    #@a1
    move-object/from16 v0, v17

    #@a3
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v17

    #@a7
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v17

    #@ab
    move-object/from16 v0, v17

    #@ad
    invoke-static {v1, v0, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@b0
    goto/16 :goto_1

    #@b2
    .line 183
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    const-string/jumbo v1, "product-id"

    #@b5
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b8
    move-result v1

    #@b9
    if-eqz v1, :cond_7

    #@bb
    .line 184
    move v3, v13

    #@bc
    goto/16 :goto_1

    #@be
    .line 185
    :cond_7
    const-string/jumbo v1, "class"

    #@c1
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c4
    move-result v1

    #@c5
    if-eqz v1, :cond_8

    #@c7
    .line 186
    move v4, v13

    #@c8
    goto/16 :goto_1

    #@ca
    .line 187
    :cond_8
    const-string/jumbo v1, "subclass"

    #@cd
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d0
    move-result v1

    #@d1
    if-eqz v1, :cond_9

    #@d3
    .line 188
    move v5, v13

    #@d4
    goto/16 :goto_1

    #@d6
    .line 189
    :cond_9
    const-string/jumbo v1, "protocol"

    #@d9
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@dc
    move-result v1

    #@dd
    if-eqz v1, :cond_0

    #@df
    .line 190
    move v6, v13

    #@e0
    goto/16 :goto_1

    #@e2
    .line 194
    .end local v13    # "intValue":I
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "radix":I
    .end local v16    # "value":Ljava/lang/String;
    :cond_a
    new-instance v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    #@e4
    invoke-direct/range {v1 .. v9}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;-><init>(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@e7
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v3, -0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 282
    iget v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    #@5
    if-eq v2, v3, :cond_0

    #@7
    iget v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    #@9
    if-ne v2, v3, :cond_1

    #@b
    .line 284
    :cond_0
    return v4

    #@c
    .line 283
    :cond_1
    iget v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    #@e
    if-eq v2, v3, :cond_0

    #@10
    iget v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    #@12
    if-eq v2, v3, :cond_0

    #@14
    iget v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    #@16
    if-eq v2, v3, :cond_0

    #@18
    .line 286
    instance-of v2, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    #@1a
    if-eqz v2, :cond_f

    #@1c
    move-object v1, p1

    #@1d
    .line 287
    check-cast v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    #@1f
    .line 289
    .local v1, "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    iget v2, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    #@21
    iget v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    #@23
    if-ne v2, v3, :cond_2

    #@25
    .line 290
    iget v2, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    #@27
    iget v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    #@29
    if-eq v2, v3, :cond_3

    #@2b
    .line 294
    :cond_2
    return v4

    #@2c
    .line 291
    :cond_3
    iget v2, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    #@2e
    iget v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    #@30
    if-ne v2, v3, :cond_2

    #@32
    .line 292
    iget v2, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    #@34
    iget v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    #@36
    if-ne v2, v3, :cond_2

    #@38
    .line 293
    iget v2, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    #@3a
    iget v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    #@3c
    if-ne v2, v3, :cond_2

    #@3e
    .line 296
    iget-object v2, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    #@40
    if-eqz v2, :cond_5

    #@42
    .line 297
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    #@44
    if-nez v2, :cond_5

    #@46
    .line 308
    :cond_4
    return v4

    #@47
    .line 298
    :cond_5
    iget-object v2, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    #@49
    if-nez v2, :cond_6

    #@4b
    .line 299
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    #@4d
    if-nez v2, :cond_4

    #@4f
    .line 300
    :cond_6
    iget-object v2, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    #@51
    if-eqz v2, :cond_7

    #@53
    .line 301
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    #@55
    if-eqz v2, :cond_4

    #@57
    .line 302
    :cond_7
    iget-object v2, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    #@59
    if-nez v2, :cond_8

    #@5b
    .line 303
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    #@5d
    if-nez v2, :cond_4

    #@5f
    .line 304
    :cond_8
    iget-object v2, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    #@61
    if-eqz v2, :cond_9

    #@63
    .line 305
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    #@65
    if-eqz v2, :cond_4

    #@67
    .line 306
    :cond_9
    iget-object v2, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    #@69
    if-nez v2, :cond_a

    #@6b
    .line 307
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    #@6d
    if-nez v2, :cond_4

    #@6f
    .line 310
    :cond_a
    iget-object v2, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    #@71
    if-eqz v2, :cond_b

    #@73
    .line 311
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    #@75
    if-eqz v2, :cond_b

    #@77
    .line 312
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    #@79
    iget-object v3, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    #@7b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v2

    #@7f
    if-eqz v2, :cond_e

    #@81
    .line 313
    :cond_b
    iget-object v2, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    #@83
    if-eqz v2, :cond_c

    #@85
    .line 314
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    #@87
    if-eqz v2, :cond_c

    #@89
    .line 315
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    #@8b
    iget-object v3, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    #@8d
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@90
    move-result v2

    #@91
    if-eqz v2, :cond_e

    #@93
    .line 316
    :cond_c
    iget-object v2, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    #@95
    if-eqz v2, :cond_d

    #@97
    .line 317
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    #@99
    if-eqz v2, :cond_d

    #@9b
    .line 318
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    #@9d
    iget-object v3, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    #@9f
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a2
    move-result v2

    #@a3
    if-eqz v2, :cond_e

    #@a5
    .line 321
    :cond_d
    return v5

    #@a6
    .line 319
    :cond_e
    return v4

    #@a7
    .line 323
    .end local v1    # "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    :cond_f
    instance-of v2, p1, Landroid/hardware/usb/UsbDevice;

    #@a9
    if-eqz v2, :cond_1d

    #@ab
    move-object v0, p1

    #@ac
    .line 324
    check-cast v0, Landroid/hardware/usb/UsbDevice;

    #@ae
    .line 325
    .local v0, "device":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    #@b1
    move-result v2

    #@b2
    iget v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    #@b4
    if-ne v2, v3, :cond_10

    #@b6
    .line 326
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    #@b9
    move-result v2

    #@ba
    iget v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    #@bc
    if-eq v2, v3, :cond_11

    #@be
    .line 330
    :cond_10
    return v4

    #@bf
    .line 327
    :cond_11
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    #@c2
    move-result v2

    #@c3
    iget v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    #@c5
    if-ne v2, v3, :cond_10

    #@c7
    .line 328
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    #@ca
    move-result v2

    #@cb
    iget v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    #@cd
    if-ne v2, v3, :cond_10

    #@cf
    .line 329
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    #@d2
    move-result v2

    #@d3
    iget v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    #@d5
    if-ne v2, v3, :cond_10

    #@d7
    .line 332
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    #@d9
    if-eqz v2, :cond_13

    #@db
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    #@de
    move-result-object v2

    #@df
    if-nez v2, :cond_13

    #@e1
    .line 338
    :cond_12
    return v4

    #@e2
    .line 333
    :cond_13
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    #@e4
    if-nez v2, :cond_14

    #@e6
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    #@e9
    move-result-object v2

    #@ea
    if-nez v2, :cond_12

    #@ec
    .line 334
    :cond_14
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    #@ee
    if-eqz v2, :cond_15

    #@f0
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    #@f3
    move-result-object v2

    #@f4
    if-eqz v2, :cond_12

    #@f6
    .line 335
    :cond_15
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    #@f8
    if-nez v2, :cond_16

    #@fa
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    #@fd
    move-result-object v2

    #@fe
    if-nez v2, :cond_12

    #@100
    .line 336
    :cond_16
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    #@102
    if-eqz v2, :cond_17

    #@104
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    #@107
    move-result-object v2

    #@108
    if-eqz v2, :cond_12

    #@10a
    .line 337
    :cond_17
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    #@10c
    if-nez v2, :cond_18

    #@10e
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    #@111
    move-result-object v2

    #@112
    if-nez v2, :cond_12

    #@114
    .line 340
    :cond_18
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    #@117
    move-result-object v2

    #@118
    if-eqz v2, :cond_19

    #@11a
    .line 341
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    #@11c
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    #@11f
    move-result-object v3

    #@120
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@123
    move-result v2

    #@124
    if-eqz v2, :cond_1c

    #@126
    .line 342
    :cond_19
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    #@129
    move-result-object v2

    #@12a
    if-eqz v2, :cond_1a

    #@12c
    .line 343
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    #@12e
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    #@131
    move-result-object v3

    #@132
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@135
    move-result v2

    #@136
    if-eqz v2, :cond_1c

    #@138
    .line 344
    :cond_1a
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    #@13b
    move-result-object v2

    #@13c
    if-eqz v2, :cond_1b

    #@13e
    .line 345
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    #@140
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    #@143
    move-result-object v3

    #@144
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@147
    move-result v2

    #@148
    if-eqz v2, :cond_1c

    #@14a
    .line 348
    :cond_1b
    return v5

    #@14b
    .line 346
    :cond_1c
    return v4

    #@14c
    .line 350
    .end local v0    # "device":Landroid/hardware/usb/UsbDevice;
    :cond_1d
    return v4
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 355
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    #@2
    shl-int/lit8 v0, v0, 0x10

    #@4
    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    #@6
    or-int/2addr v0, v1

    #@7
    .line 356
    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    #@9
    shl-int/lit8 v1, v1, 0x10

    #@b
    iget v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    #@d
    shl-int/lit8 v2, v2, 0x8

    #@f
    or-int/2addr v1, v2

    #@10
    iget v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    #@12
    or-int/2addr v1, v2

    #@13
    .line 355
    xor-int/2addr v0, v1

    #@14
    return v0
.end method

.method public matches(Landroid/hardware/usb/UsbDevice;)Z
    .locals 8
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v5, -0x1

    #@2
    const/4 v6, 0x0

    #@3
    .line 235
    iget v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    #@5
    if-eq v3, v5, :cond_0

    #@7
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    #@a
    move-result v3

    #@b
    iget v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    #@d
    if-eq v3, v4, :cond_0

    #@f
    return v6

    #@10
    .line 236
    :cond_0
    iget v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    #@12
    if-eq v3, v5, :cond_1

    #@14
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    #@17
    move-result v3

    #@18
    iget v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    #@1a
    if-eq v3, v4, :cond_1

    #@1c
    return v6

    #@1d
    .line 237
    :cond_1
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    #@1f
    if-eqz v3, :cond_2

    #@21
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    if-nez v3, :cond_2

    #@27
    return v6

    #@28
    .line 238
    :cond_2
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    #@2a
    if-eqz v3, :cond_3

    #@2c
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    if-nez v3, :cond_3

    #@32
    return v6

    #@33
    .line 239
    :cond_3
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    #@35
    if-eqz v3, :cond_4

    #@37
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    if-nez v3, :cond_4

    #@3d
    return v6

    #@3e
    .line 240
    :cond_4
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    #@40
    if-eqz v3, :cond_5

    #@42
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    if-eqz v3, :cond_5

    #@48
    .line 241
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    #@4a
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v3

    #@52
    if-eqz v3, :cond_8

    #@54
    .line 242
    :cond_5
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    #@56
    if-eqz v3, :cond_6

    #@58
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    if-eqz v3, :cond_6

    #@5e
    .line 243
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    #@60
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    #@63
    move-result-object v4

    #@64
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@67
    move-result v3

    #@68
    if-eqz v3, :cond_9

    #@6a
    .line 244
    :cond_6
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    #@6c
    if-eqz v3, :cond_7

    #@6e
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    #@71
    move-result-object v3

    #@72
    if-eqz v3, :cond_7

    #@74
    .line 245
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    #@76
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    #@79
    move-result-object v4

    #@7a
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7d
    move-result v3

    #@7e
    if-eqz v3, :cond_a

    #@80
    .line 248
    :cond_7
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    #@83
    move-result v3

    #@84
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    #@87
    move-result v4

    #@88
    .line 249
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    #@8b
    move-result v5

    #@8c
    .line 248
    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->matches(III)Z

    #@8f
    move-result v3

    #@90
    if-eqz v3, :cond_b

    #@92
    .line 249
    return v7

    #@93
    .line 241
    :cond_8
    return v6

    #@94
    .line 243
    :cond_9
    return v6

    #@95
    .line 245
    :cond_a
    return v6

    #@96
    .line 252
    :cond_b
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    #@99
    move-result v0

    #@9a
    .line 253
    .local v0, "count":I
    const/4 v1, 0x0

    #@9b
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_d

    #@9d
    .line 254
    invoke-virtual {p1, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    #@a0
    move-result-object v2

    #@a1
    .line 255
    .local v2, "intf":Landroid/hardware/usb/UsbInterface;
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    #@a4
    move-result v3

    #@a5
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    #@a8
    move-result v4

    #@a9
    .line 256
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    #@ac
    move-result v5

    #@ad
    .line 255
    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->matches(III)Z

    #@b0
    move-result v3

    #@b1
    if-eqz v3, :cond_c

    #@b3
    .line 256
    return v7

    #@b4
    .line 253
    :cond_c
    add-int/lit8 v1, v1, 0x1

    #@b6
    goto :goto_0

    #@b7
    .line 259
    .end local v2    # "intf":Landroid/hardware/usb/UsbInterface;
    :cond_d
    return v6
.end method

.method public matches(Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;)Z
    .locals 4
    .param p1, "f"    # Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 263
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    #@4
    if-eq v0, v3, :cond_0

    #@6
    iget v0, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    #@8
    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    #@a
    if-eq v0, v1, :cond_0

    #@c
    return v2

    #@d
    .line 264
    :cond_0
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    #@f
    if-eq v0, v3, :cond_1

    #@11
    iget v0, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    #@13
    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    #@15
    if-eq v0, v1, :cond_1

    #@17
    return v2

    #@18
    .line 265
    :cond_1
    iget-object v0, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    #@1a
    if-eqz v0, :cond_2

    #@1c
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    #@1e
    if-nez v0, :cond_2

    #@20
    return v2

    #@21
    .line 266
    :cond_2
    iget-object v0, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    #@23
    if-eqz v0, :cond_3

    #@25
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    #@27
    if-nez v0, :cond_3

    #@29
    return v2

    #@2a
    .line 267
    :cond_3
    iget-object v0, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    #@2c
    if-eqz v0, :cond_4

    #@2e
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    #@30
    if-nez v0, :cond_4

    #@32
    return v2

    #@33
    .line 268
    :cond_4
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    #@35
    if-eqz v0, :cond_5

    #@37
    iget-object v0, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    #@39
    if-eqz v0, :cond_5

    #@3b
    .line 269
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    #@3d
    iget-object v1, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v0

    #@43
    if-eqz v0, :cond_8

    #@45
    .line 270
    :cond_5
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    #@47
    if-eqz v0, :cond_6

    #@49
    iget-object v0, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    #@4b
    if-eqz v0, :cond_6

    #@4d
    .line 271
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    #@4f
    iget-object v1, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    #@51
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v0

    #@55
    if-eqz v0, :cond_9

    #@57
    .line 272
    :cond_6
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    #@59
    if-eqz v0, :cond_7

    #@5b
    iget-object v0, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    #@5d
    if-eqz v0, :cond_7

    #@5f
    .line 273
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    #@61
    iget-object v1, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    #@63
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@66
    move-result v0

    #@67
    if-eqz v0, :cond_a

    #@69
    .line 276
    :cond_7
    iget v0, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    #@6b
    iget v1, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    #@6d
    iget v2, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    #@6f
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->matches(III)Z

    #@72
    move-result v0

    #@73
    return v0

    #@74
    .line 269
    :cond_8
    return v2

    #@75
    .line 271
    :cond_9
    return v2

    #@76
    .line 273
    :cond_a
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "DeviceFilter[mVendorId="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ",mProductId="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 362
    const-string/jumbo v1, ",mClass="

    #@22
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 362
    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    #@28
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 362
    const-string/jumbo v1, ",mSubclass="

    #@2f
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 362
    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    #@35
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 363
    const-string/jumbo v1, ",mProtocol="

    #@3c
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 363
    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    #@42
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 363
    const-string/jumbo v1, ",mManufacturerName="

    #@49
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 363
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    #@4f
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    .line 364
    const-string/jumbo v1, ",mProductName="

    #@56
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    .line 364
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    #@5c
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    .line 364
    const-string/jumbo v1, ",mSerialNumber="

    #@63
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    .line 364
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    #@69
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v0

    #@6d
    .line 365
    const-string/jumbo v1, "]"

    #@70
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v0

    #@74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v0

    #@78
    return-object v0
.end method

.method public write(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 200
    const-string/jumbo v0, "usb-device"

    #@5
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@8
    .line 201
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    #@a
    if-eq v0, v3, :cond_0

    #@c
    .line 202
    const-string/jumbo v0, "vendor-id"

    #@f
    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    #@11
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@18
    .line 204
    :cond_0
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    #@1a
    if-eq v0, v3, :cond_1

    #@1c
    .line 205
    const-string/jumbo v0, "product-id"

    #@1f
    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    #@21
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@28
    .line 207
    :cond_1
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    #@2a
    if-eq v0, v3, :cond_2

    #@2c
    .line 208
    const-string/jumbo v0, "class"

    #@2f
    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    #@31
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@38
    .line 210
    :cond_2
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    #@3a
    if-eq v0, v3, :cond_3

    #@3c
    .line 211
    const-string/jumbo v0, "subclass"

    #@3f
    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    #@41
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@48
    .line 213
    :cond_3
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    #@4a
    if-eq v0, v3, :cond_4

    #@4c
    .line 214
    const-string/jumbo v0, "protocol"

    #@4f
    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    #@51
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@54
    move-result-object v1

    #@55
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@58
    .line 216
    :cond_4
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    #@5a
    if-eqz v0, :cond_5

    #@5c
    .line 217
    const-string/jumbo v0, "manufacturer-name"

    #@5f
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    #@61
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@64
    .line 219
    :cond_5
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    #@66
    if-eqz v0, :cond_6

    #@68
    .line 220
    const-string/jumbo v0, "product-name"

    #@6b
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    #@6d
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@70
    .line 222
    :cond_6
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    #@72
    if-eqz v0, :cond_7

    #@74
    .line 223
    const-string/jumbo v0, "serial-number"

    #@77
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    #@79
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7c
    .line 225
    :cond_7
    const-string/jumbo v0, "usb-device"

    #@7f
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@82
    .line 199
    return-void
.end method
