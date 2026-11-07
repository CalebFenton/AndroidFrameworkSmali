.class public Lcom/android/internal/usb/DumpUtils;
.super Ljava/lang/Object;
.source "DumpUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist writeAccessory(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbAccessory;)V
    .registers 11
    .param p0, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 56
    .local v0, "token":J
    const-wide v2, 0x10900000001L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v4

    const-string v5, "manufacturer"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 57
    const-wide v2, 0x10900000002L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v4

    const-string v5, "model"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 58
    nop

    .line 59
    invoke-virtual {p4}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    .line 58
    const-string v3, "description"

    const-wide v4, 0x10900000003L

    invoke-static {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V

    .line 60
    const-wide v2, 0x10900000004L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "version"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 61
    const-wide v2, 0x10900000005L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbAccessory;->getUri()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "uri"

    invoke-static {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V

    .line 62
    const-wide v2, 0x10900000006L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbAccessory;->getSerial()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "serial"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 64
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 65
    return-void
.end method

.method private static blacklist writeConfiguration(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbConfiguration;)V
    .registers 13
    .param p0, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "configuration"    # Landroid/hardware/usb/UsbConfiguration;

    .line 94
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 95
    .local v0, "token":J
    const-wide v2, 0x10500000001L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbConfiguration;->getId()I

    move-result v4

    const-string v5, "id"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 96
    const-wide v2, 0x10900000002L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbConfiguration;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 97
    const-wide v2, 0x10d00000003L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbConfiguration;->getAttributes()I

    move-result v4

    const-string v5, "attributes"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 98
    const-wide v2, 0x10500000004L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbConfiguration;->getMaxPower()I

    move-result v4

    const-string v5, "max_power"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 100
    invoke-virtual {p4}, Landroid/hardware/usb/UsbConfiguration;->getInterfaceCount()I

    move-result v2

    .line 101
    .local v2, "numInterfaces":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_41
    if-ge v3, v2, :cond_55

    .line 102
    nop

    .line 103
    invoke-virtual {p4, v3}, Landroid/hardware/usb/UsbConfiguration;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v4

    .line 102
    const-string v5, "interfaces"

    const-wide v6, 0x20b00000005L

    invoke-static {p0, v5, v6, v7, v4}, Lcom/android/internal/usb/DumpUtils;->writeInterface(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbInterface;)V

    .line 101
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 105
    .end local v3    # "i":I
    :cond_55
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 106
    return-void
.end method

.method private static blacklist writeContaminantPresenceStatus(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V
    .registers 6
    .param p0, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "contaminantPresenceStatus"    # I

    .line 210
    invoke-virtual {p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 211
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_12

    .line 213
    :cond_a
    nop

    .line 214
    invoke-static {p4}, Landroid/hardware/usb/UsbPort;->contaminantPresenceStatusToString(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 216
    :goto_12
    return-void
.end method

.method private static blacklist writeDataRole(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V
    .registers 6
    .param p0, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "dataRole"    # I

    .line 201
    invoke-virtual {p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 202
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_11

    .line 204
    :cond_a
    invoke-static {p4}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 206
    :goto_11
    return-void
.end method

.method public static blacklist writeDevice(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbDevice;)V
    .registers 13
    .param p0, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "device"    # Landroid/hardware/usb/UsbDevice;

    .line 69
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 71
    .local v0, "token":J
    const-wide v2, 0x10900000001L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 72
    const-wide v2, 0x10500000002L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v4

    const-string/jumbo v5, "vendor_id"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 73
    const-wide v2, 0x10500000003L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v4

    const-string/jumbo v5, "product_id"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 74
    const-wide v2, 0x10500000004L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v4

    const-string v5, "class"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 75
    const-wide v2, 0x10500000005L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v4

    const-string/jumbo v5, "subclass"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 76
    const-wide v2, 0x10500000006L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v4

    const-string/jumbo v5, "protocol"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 77
    nop

    .line 78
    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v2

    .line 77
    const-string v3, "manufacturer_name"

    const-wide v4, 0x10900000007L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 79
    const-wide v2, 0x10900000008L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "product_name"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 80
    const-wide v2, 0x10900000009L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getVersion()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "version"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 81
    const-wide v2, 0x1090000000aL

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "serial_number"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 83
    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getConfigurationCount()I

    move-result v2

    .line 84
    .local v2, "numConfigurations":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9d
    if-ge v3, v2, :cond_b1

    .line 85
    nop

    .line 86
    invoke-virtual {p4, v3}, Landroid/hardware/usb/UsbDevice;->getConfiguration(I)Landroid/hardware/usb/UsbConfiguration;

    move-result-object v4

    .line 85
    const-string v5, "configurations"

    const-wide v6, 0x20b0000000bL

    invoke-static {p0, v5, v6, v7, v4}, Lcom/android/internal/usb/DumpUtils;->writeConfiguration(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbConfiguration;)V

    .line 84
    add-int/lit8 v3, v3, 0x1

    goto :goto_9d

    .line 89
    .end local v3    # "i":I
    :cond_b1
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 90
    return-void
.end method

.method private static blacklist writeEndpoint(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbEndpoint;)V
    .registers 11
    .param p0, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "endpoint"    # Landroid/hardware/usb/UsbEndpoint;

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 131
    .local v0, "token":J
    nop

    .line 132
    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getEndpointNumber()I

    move-result v2

    .line 131
    const-string v3, "endpoint_number"

    const-wide v4, 0x10500000001L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 133
    const-wide v2, 0x10e00000002L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v4

    const-string v5, "direction"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 134
    const-wide v2, 0x10500000003L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v4

    const-string v5, "address"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 135
    const-wide v2, 0x10e00000004L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v4

    const-string/jumbo v5, "type"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 136
    nop

    .line 137
    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getAttributes()I

    move-result v2

    .line 136
    const-string v3, "attributes"

    const-wide v4, 0x10d00000005L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 138
    nop

    .line 139
    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v2

    .line 138
    const-string v3, "max_packet_size"

    const-wide v4, 0x10500000006L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 140
    const-wide v2, 0x10500000007L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getInterval()I

    move-result v4

    const-string v5, "interval"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 142
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 143
    return-void
.end method

.method private static blacklist writeInterface(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbInterface;)V
    .registers 13
    .param p0, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "iface"    # Landroid/hardware/usb/UsbInterface;

    .line 110
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 112
    .local v0, "token":J
    const-wide v2, 0x10500000001L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v4

    const-string v5, "id"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 113
    nop

    .line 114
    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getAlternateSetting()I

    move-result v2

    .line 113
    const-string v3, "alternate_settings"

    const-wide v4, 0x10500000002L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 115
    const-wide v2, 0x10900000003L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 116
    const-wide v2, 0x10500000004L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v4

    const-string v5, "class"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 117
    const-wide v2, 0x10500000005L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v4

    const-string/jumbo v5, "subclass"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 118
    const-wide v2, 0x10500000006L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v4

    const-string/jumbo v5, "protocol"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 120
    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v2

    .line 121
    .local v2, "numEndpoints":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_60
    if-ge v3, v2, :cond_73

    .line 122
    const-wide v4, 0x20b00000007L

    invoke-virtual {p4, v3}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v6

    const-string v7, "endpoints"

    invoke-static {p0, v7, v4, v5, v6}, Lcom/android/internal/usb/DumpUtils;->writeEndpoint(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbEndpoint;)V

    .line 121
    add-int/lit8 v3, v3, 0x1

    goto :goto_60

    .line 124
    .end local v3    # "i":I
    :cond_73
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 125
    return-void
.end method

.method public static blacklist writePort(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbPort;)V
    .registers 14
    .param p0, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "port"    # Landroid/hardware/usb/UsbPort;

    .line 147
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 149
    .local v0, "token":J
    const-wide v2, 0x10900000001L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 151
    invoke-virtual {p4}, Landroid/hardware/usb/UsbPort;->getSupportedModes()I

    move-result v2

    .line 152
    .local v2, "mode":I
    invoke-virtual {p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result v3

    const/4 v4, 0x1

    const-wide v5, 0x20e00000002L

    const-string/jumbo v7, "supported_modes"

    if-eqz v3, :cond_57

    .line 153
    if-nez v2, :cond_2c

    .line 154
    const/4 v3, 0x0

    invoke-virtual {p0, v7, v5, v6, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_5e

    .line 156
    :cond_2c
    and-int/lit8 v3, v2, 0x3

    const/4 v8, 0x3

    if-ne v3, v8, :cond_35

    .line 157
    invoke-virtual {p0, v7, v5, v6, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_45

    .line 159
    :cond_35
    and-int/lit8 v3, v2, 0x2

    const/4 v8, 0x2

    if-ne v3, v8, :cond_3e

    .line 160
    invoke-virtual {p0, v7, v5, v6, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_45

    .line 161
    :cond_3e
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v4, :cond_45

    .line 162
    invoke-virtual {p0, v7, v5, v6, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 166
    :cond_45
    :goto_45
    and-int/lit8 v3, v2, 0x4

    const/4 v8, 0x4

    if-ne v3, v8, :cond_4d

    .line 167
    invoke-virtual {p0, v7, v5, v6, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 171
    :cond_4d
    and-int/lit8 v3, v2, 0x8

    const/16 v8, 0x8

    if-ne v3, v8, :cond_5e

    .line 172
    invoke-virtual {p0, v7, v5, v6, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_5e

    .line 177
    :cond_57
    invoke-static {v2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v7, v5, v6, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 179
    :cond_5e
    :goto_5e
    nop

    .line 181
    invoke-virtual {p4}, Landroid/hardware/usb/UsbPort;->supportsComplianceWarnings()Z

    move-result v3

    .line 179
    const-string/jumbo v5, "supports_compliance_warnings"

    const-wide v6, 0x10800000003L

    invoke-virtual {p0, v5, v6, v7, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 182
    invoke-virtual {p4, v4}, Landroid/hardware/usb/UsbPort;->isAltModeSupported(I)Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 183
    const-string/jumbo v3, "supported_alt_modes"

    const-wide v5, 0x20e00000004L

    invoke-virtual {p0, v3, v5, v6, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 187
    :cond_7f
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 188
    return-void
.end method

.method public static blacklist writePortStatus(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbPortStatus;)V
    .registers 19
    .param p0, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "status"    # Landroid/hardware/usb/UsbPortStatus;

    .line 220
    invoke-virtual/range {p0 .. p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 222
    .local v0, "token":J
    const-wide v2, 0x10800000001L

    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v4

    const-string v5, "connected"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 224
    invoke-virtual {p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result v2

    const-string v3, "current_mode"

    const-wide v4, 0x10e00000002L

    if-eqz v2, :cond_27

    .line 225
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v2

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_33

    .line 227
    :cond_27
    nop

    .line 228
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v2

    invoke-static {v2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 231
    :goto_33
    nop

    .line 232
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v2

    .line 231
    const-string/jumbo v3, "power_role"

    const-wide v6, 0x10e00000003L

    invoke-static {p0, v3, v6, v7, v2}, Lcom/android/internal/usb/DumpUtils;->writePowerRole(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V

    .line 233
    const-wide v6, 0x10e00000004L

    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v2

    const-string v8, "data_role"

    invoke-static {p0, v8, v6, v7, v2}, Lcom/android/internal/usb/DumpUtils;->writeDataRole(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V

    .line 235
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getSupportedRoleCombinations()I

    move-result v2

    .line 236
    .local v2, "undumpedCombinations":I
    :goto_55
    if-eqz v2, :cond_80

    .line 237
    invoke-static {v2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v6

    .line 238
    .local v6, "index":I
    const/4 v7, 0x1

    shl-int/2addr v7, v6

    not-int v7, v7

    and-int/2addr v2, v7

    .line 240
    div-int/lit8 v7, v6, 0x3

    add-int/lit8 v7, v7, 0x0

    .line 242
    .local v7, "powerRole":I
    rem-int/lit8 v9, v6, 0x3

    .line 244
    .local v9, "dataRole":I
    const-string/jumbo v10, "role_combinations"

    const-wide v11, 0x20b00000005L

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v10

    .line 246
    .local v10, "roleCombinationToken":J
    const-wide v12, 0x10e00000001L

    invoke-static {p0, v3, v12, v13, v7}, Lcom/android/internal/usb/DumpUtils;->writePowerRole(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V

    .line 248
    invoke-static {p0, v8, v4, v5, v9}, Lcom/android/internal/usb/DumpUtils;->writeDataRole(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V

    .line 250
    invoke-virtual {p0, v10, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 251
    .end local v6    # "index":I
    .end local v7    # "powerRole":I
    .end local v9    # "dataRole":I
    .end local v10    # "roleCombinationToken":J
    goto :goto_55

    .line 253
    :cond_80
    nop

    .line 255
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v3

    .line 253
    const-string v4, "contaminant_presence_status"

    const-wide v5, 0x10e00000006L

    invoke-static {p0, v4, v5, v6, v3}, Lcom/android/internal/usb/DumpUtils;->writeContaminantPresenceStatus(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V

    .line 256
    nop

    .line 257
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getUsbDataStatus()I

    move-result v3

    invoke-static {v3}, Landroid/hardware/usb/UsbPort;->usbDataStatusToString(I)Ljava/lang/String;

    move-result-object v3

    .line 256
    const-string/jumbo v4, "usb_data_status"

    const-wide v5, 0x10900000007L

    invoke-virtual {p0, v4, v5, v6, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 258
    nop

    .line 259
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->isPowerTransferLimited()Z

    move-result v3

    .line 258
    const-string v4, "is_power_transfer_limited"

    const-wide v5, 0x10800000008L

    invoke-virtual {p0, v4, v5, v6, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 260
    nop

    .line 261
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getPowerBrickConnectionStatus()I

    move-result v3

    invoke-static {v3}, Landroid/hardware/usb/UsbPort;->powerBrickConnectionStatusToString(I)Ljava/lang/String;

    move-result-object v3

    .line 260
    const-string/jumbo v4, "usb_power_brick_status"

    const-wide v5, 0x10900000009L

    invoke-virtual {p0, v4, v5, v6, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 262
    nop

    .line 263
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getComplianceWarnings()[I

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/usb/UsbPort;->complianceWarningsToString([I)Ljava/lang/String;

    move-result-object v3

    .line 262
    const-string v4, "compliance_warning_status"

    const-wide v5, 0x1090000000aL

    invoke-virtual {p0, v4, v5, v6, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 264
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getDisplayPortAltModeInfo()Landroid/hardware/usb/DisplayPortAltModeInfo;

    move-result-object v3

    .line 265
    .local v3, "displayPortAltModeInfo":Landroid/hardware/usb/DisplayPortAltModeInfo;
    if-eqz v3, :cond_f2

    .line 266
    nop

    .line 268
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getDisplayPortAltModeInfo()Landroid/hardware/usb/DisplayPortAltModeInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/usb/DisplayPortAltModeInfo;->toString()Ljava/lang/String;

    move-result-object v4

    .line 266
    const-string v5, "displayport_alt_mode_status"

    const-wide v6, 0x1090000000bL

    invoke-virtual {p0, v5, v6, v7, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 270
    :cond_f2
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 271
    return-void
.end method

.method private static blacklist writePowerRole(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V
    .registers 6
    .param p0, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "powerRole"    # I

    .line 192
    invoke-virtual {p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 193
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_11

    .line 195
    :cond_a
    invoke-static {p4}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 197
    :goto_11
    return-void
.end method
