.class public Landroid/companion/BluetoothDeviceFilterUtils;
.super Ljava/lang/Object;
.source "BluetoothDeviceFilterUtils.java"


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "CDM_BluetoothDeviceFilterUtils"


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o debugLogMatchResult(ZLandroid/bluetooth/BluetoothDevice;Ljava/lang/Object;)V
    .registers 5
    .param p0, "result"    # Z
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "criteria"    # Ljava/lang/Object;

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/companion/BluetoothDeviceFilterUtils;->getDeviceDisplayNameInternal(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p0, :cond_12

    const-string v1, " ~ "

    goto :goto_14

    :cond_12
    const-string v1, " !~ "

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_BluetoothDeviceFilterUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method private static greylist-max-o debugLogMatchResult(ZLandroid/net/wifi/ScanResult;Ljava/lang/Object;)V
    .registers 5
    .param p0, "result"    # Z
    .param p1, "device"    # Landroid/net/wifi/ScanResult;
    .param p2, "criteria"    # Ljava/lang/Object;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/companion/BluetoothDeviceFilterUtils;->getDeviceDisplayNameInternal(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p0, :cond_12

    const-string v1, " ~ "

    goto :goto_14

    :cond_12
    const-string v1, " !~ "

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_BluetoothDeviceFilterUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method

.method public static greylist-max-r getDeviceDisplayNameInternal(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .registers 3
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 136
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->firstNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-r getDeviceDisplayNameInternal(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .registers 3
    .param p0, "device"    # Landroid/net/wifi/ScanResult;

    .line 141
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->firstNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-r getDeviceMacAddress(Landroid/os/Parcelable;)Ljava/lang/String;
    .registers 4
    .param p0, "device"    # Landroid/os/Parcelable;

    .line 146
    instance-of v0, p0, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_c

    .line 147
    move-object v0, p0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 148
    :cond_c
    instance-of v0, p0, Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_16

    .line 149
    move-object v0, p0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    return-object v0

    .line 150
    :cond_16
    instance-of v0, p0, Landroid/bluetooth/le/ScanResult;

    if-eqz v0, :cond_26

    .line 151
    move-object v0, p0

    check-cast v0, Landroid/bluetooth/le/ScanResult;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-static {v0}, Landroid/companion/BluetoothDeviceFilterUtils;->getDeviceMacAddress(Landroid/os/Parcelable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 153
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown device type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist-max-o matchesAddress(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 3
    .param p0, "deviceAddress"    # Ljava/lang/String;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 59
    if-eqz p0, :cond_11

    if-eqz p1, :cond_f

    .line 60
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    .line 62
    .local v0, "result":Z
    :goto_12
    return v0
.end method

.method static greylist-max-o matchesName(Ljava/util/regex/Pattern;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 4
    .param p0, "namePattern"    # Ljava/util/regex/Pattern;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 98
    if-nez p0, :cond_4

    .line 99
    const/4 v0, 0x1

    .local v0, "result":Z
    goto :goto_1c

    .line 100
    .end local v0    # "result":Z
    :cond_4
    if-nez p1, :cond_8

    .line 101
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_1c

    .line 103
    .end local v0    # "result":Z
    :cond_8
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_1a

    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    move v0, v1

    .line 107
    .local v0, "result":Z
    :goto_1c
    return v0
.end method

.method static greylist-max-o matchesName(Ljava/util/regex/Pattern;Landroid/net/wifi/ScanResult;)Z
    .registers 4
    .param p0, "namePattern"    # Ljava/util/regex/Pattern;
    .param p1, "device"    # Landroid/net/wifi/ScanResult;

    .line 112
    if-nez p0, :cond_4

    .line 113
    const/4 v0, 0x1

    .local v0, "result":Z
    goto :goto_1a

    .line 114
    .end local v0    # "result":Z
    :cond_4
    if-nez p1, :cond_8

    .line 115
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_1a

    .line 117
    .end local v0    # "result":Z
    :cond_8
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 118
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_18

    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    move v0, v1

    .line 121
    .local v0, "result":Z
    :goto_1a
    return v0
.end method

.method static greylist-max-o matchesServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 10
    .param p0, "serviceUuid"    # Landroid/os/ParcelUuid;
    .param p1, "serviceUuidMask"    # Landroid/os/ParcelUuid;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "result":Z
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    if-nez v1, :cond_c

    .line 81
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_14

    :cond_c
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 82
    .local v1, "deviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :goto_14
    if-nez p0, :cond_18

    .line 83
    const/4 v0, 0x1

    goto :goto_40

    .line 85
    :cond_18
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 86
    .local v3, "parcelUuid":Landroid/os/ParcelUuid;
    if-nez p1, :cond_2c

    const/4 v4, 0x0

    goto :goto_30

    :cond_2c
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    .line 87
    .local v4, "uuidMask":Ljava/util/UUID;
    :goto_30
    invoke-virtual {v3}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/companion/BluetoothDeviceFilterUtils;->uuidsMaskedEquals(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 88
    const/4 v0, 0x1

    .line 90
    .end local v3    # "parcelUuid":Landroid/os/ParcelUuid;
    .end local v4    # "uuidMask":Ljava/util/UUID;
    :cond_3f
    goto :goto_1c

    .line 93
    :cond_40
    :goto_40
    return v0
.end method

.method static greylist-max-o matchesServiceUuids(Ljava/util/List;Ljava/util/List;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Landroid/bluetooth/BluetoothDevice;",
            ")Z"
        }
    .end annotation

    .line 67
    .local p0, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local p1, "serviceUuidMasks":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 68
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 69
    .local v1, "uuid":Landroid/os/ParcelUuid;
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 70
    .local v2, "uuidMask":Landroid/os/ParcelUuid;
    invoke-static {v1, v2, p2}, Landroid/companion/BluetoothDeviceFilterUtils;->matchesServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 71
    const/4 v3, 0x0

    return v3

    .line 67
    .end local v1    # "uuid":Landroid/os/ParcelUuid;
    .end local v2    # "uuidMask":Landroid/os/ParcelUuid;
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 74
    .end local v0    # "i":I
    :cond_1e
    const/4 v0, 0x1

    return v0
.end method

.method static greylist-max-o patternFromString(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 55
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    :goto_8
    return-object v0
.end method

.method static greylist-max-o patternToString(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .registers 2
    .param p0, "p"    # Ljava/util/regex/Pattern;

    .line 50
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0
.end method

.method public static blacklist uuidsMaskedEquals(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z
    .registers 9
    .param p0, "data"    # Ljava/util/UUID;
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "mask"    # Ljava/util/UUID;

    .line 167
    if-nez p2, :cond_7

    .line 168
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 170
    :cond_7
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    and-long/2addr v0, v2

    .line 171
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    and-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_35

    .line 172
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    and-long/2addr v0, v2

    .line 173
    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    and-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_35

    const/4 v0, 0x1

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    .line 170
    :goto_36
    return v0
.end method
