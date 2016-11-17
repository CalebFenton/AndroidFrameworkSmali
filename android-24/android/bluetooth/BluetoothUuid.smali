.class public final Landroid/bluetooth/BluetoothUuid;
.super Ljava/lang/Object;
.source "BluetoothUuid.java"


# static fields
.field public static final AdvAudioDist:Landroid/os/ParcelUuid;

.field public static final AudioSink:Landroid/os/ParcelUuid;

.field public static final AudioSource:Landroid/os/ParcelUuid;

.field public static final AvrcpController:Landroid/os/ParcelUuid;

.field public static final AvrcpTarget:Landroid/os/ParcelUuid;

.field public static final BASE_UUID:Landroid/os/ParcelUuid;

.field public static final BNEP:Landroid/os/ParcelUuid;

.field public static final HSP:Landroid/os/ParcelUuid;

.field public static final HSP_AG:Landroid/os/ParcelUuid;

.field public static final Handsfree:Landroid/os/ParcelUuid;

.field public static final Handsfree_AG:Landroid/os/ParcelUuid;

.field public static final Hid:Landroid/os/ParcelUuid;

.field public static final Hogp:Landroid/os/ParcelUuid;

.field public static final MAP:Landroid/os/ParcelUuid;

.field public static final MAS:Landroid/os/ParcelUuid;

.field public static final MNS:Landroid/os/ParcelUuid;

.field public static final NAP:Landroid/os/ParcelUuid;

.field public static final ObexObjectPush:Landroid/os/ParcelUuid;

.field public static final PANU:Landroid/os/ParcelUuid;

.field public static final PBAP_PCE:Landroid/os/ParcelUuid;

.field public static final PBAP_PSE:Landroid/os/ParcelUuid;

.field public static final RESERVED_UUIDS:[Landroid/os/ParcelUuid;

.field public static final SAP:Landroid/os/ParcelUuid;

.field public static final UUID_BYTES_128_BIT:I = 0x10

.field public static final UUID_BYTES_16_BIT:I = 0x2

.field public static final UUID_BYTES_32_BIT:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 40
    const-string/jumbo v0, "0000110B-0000-1000-8000-00805F9B34FB"

    #@3
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    #@6
    move-result-object v0

    #@7
    .line 39
    sput-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    #@9
    .line 42
    const-string/jumbo v0, "0000110A-0000-1000-8000-00805F9B34FB"

    #@c
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    #@f
    move-result-object v0

    #@10
    .line 41
    sput-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    #@12
    .line 44
    const-string/jumbo v0, "0000110D-0000-1000-8000-00805F9B34FB"

    #@15
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    #@18
    move-result-object v0

    #@19
    .line 43
    sput-object v0, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    #@1b
    .line 46
    const-string/jumbo v0, "00001108-0000-1000-8000-00805F9B34FB"

    #@1e
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    #@21
    move-result-object v0

    #@22
    .line 45
    sput-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    #@24
    .line 48
    const-string/jumbo v0, "00001112-0000-1000-8000-00805F9B34FB"

    #@27
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    #@2a
    move-result-object v0

    #@2b
    .line 47
    sput-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    #@2d
    .line 50
    const-string/jumbo v0, "0000111E-0000-1000-8000-00805F9B34FB"

    #@30
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    #@33
    move-result-object v0

    #@34
    .line 49
    sput-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    #@36
    .line 52
    const-string/jumbo v0, "0000111F-0000-1000-8000-00805F9B34FB"

    #@39
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    #@3c
    move-result-object v0

    #@3d
    .line 51
    sput-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    #@3f
    .line 54
    const-string/jumbo v0, "0000110E-0000-1000-8000-00805F9B34FB"

    #@42
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    #@45
    move-result-object v0

    #@46
    .line 53
    sput-object v0, Landroid/bluetooth/BluetoothUuid;->AvrcpController:Landroid/os/ParcelUuid;

    #@48
    .line 56
    const-string/jumbo v0, "0000110C-0000-1000-8000-00805F9B34FB"

    #@4b
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    #@4e
    move-result-object v0

    #@4f
    .line 55
    sput-object v0, Landroid/bluetooth/BluetoothUuid;->AvrcpTarget:Landroid/os/ParcelUuid;

    #@51
    .line 58
    const-string/jumbo v0, "00001105-0000-1000-8000-00805f9b34fb"

    #@54
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    #@57
    move-result-object v0

    #@58
    .line 57
    sput-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    #@5a
    .line 60
    const-string/jumbo v0, "00001124-0000-1000-8000-00805f9b34fb"

    #@5d
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    #@60
    move-result-object v0

    #@61
    .line 59
    sput-object v0, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    #@63
    .line 62
    const-string/jumbo v0, "00001812-0000-1000-8000-00805f9b34fb"

    #@66
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    #@69
    move-result-object v0

    #@6a
    .line 61
    sput-object v0, Landroid/bluetooth/BluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    #@6c
    .line 64
    const-string/jumbo v0, "00001115-0000-1000-8000-00805F9B34FB"

    #@6f
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    #@72
    move-result-object v0

    #@73
    .line 63
    sput-object v0, Landroid/bluetooth/BluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    #@75
    .line 66
    const-string/jumbo v0, "00001116-0000-1000-8000-00805F9B34FB"

    #@78
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    #@7b
    move-result-object v0

    #@7c
    .line 65
    sput-object v0, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    #@7e
    .line 68
    const-string/jumbo v0, "0000000f-0000-1000-8000-00805F9B34FB"

    #@81
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    #@84
    move-result-object v0

    #@85
    .line 67
    sput-object v0, Landroid/bluetooth/BluetoothUuid;->BNEP:Landroid/os/ParcelUuid;

    #@87
    .line 70
    const-string/jumbo v0, "0000112e-0000-1000-8000-00805F9B34FB"

    #@8a
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    #@8d
    move-result-object v0

    #@8e
    .line 69
    sput-object v0, Landroid/bluetooth/BluetoothUuid;->PBAP_PCE:Landroid/os/ParcelUuid;

    #@90
    .line 72
    const-string/jumbo v0, "0000112f-0000-1000-8000-00805F9B34FB"

    #@93
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    #@96
    move-result-object v0

    #@97
    .line 71
    sput-object v0, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    #@99
    .line 74
    const-string/jumbo v0, "00001134-0000-1000-8000-00805F9B34FB"

    #@9c
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    #@9f
    move-result-object v0

    #@a0
    .line 73
    sput-object v0, Landroid/bluetooth/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    #@a2
    .line 76
    const-string/jumbo v0, "00001133-0000-1000-8000-00805F9B34FB"

    #@a5
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    #@a8
    move-result-object v0

    #@a9
    .line 75
    sput-object v0, Landroid/bluetooth/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    #@ab
    .line 78
    const-string/jumbo v0, "00001132-0000-1000-8000-00805F9B34FB"

    #@ae
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    #@b1
    move-result-object v0

    #@b2
    .line 77
    sput-object v0, Landroid/bluetooth/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    #@b4
    .line 80
    const-string/jumbo v0, "0000112D-0000-1000-8000-00805F9B34FB"

    #@b7
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    #@ba
    move-result-object v0

    #@bb
    .line 79
    sput-object v0, Landroid/bluetooth/BluetoothUuid;->SAP:Landroid/os/ParcelUuid;

    #@bd
    .line 83
    const-string/jumbo v0, "00000000-0000-1000-8000-00805F9B34FB"

    #@c0
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    #@c3
    move-result-object v0

    #@c4
    .line 82
    sput-object v0, Landroid/bluetooth/BluetoothUuid;->BASE_UUID:Landroid/os/ParcelUuid;

    #@c6
    .line 92
    const/16 v0, 0xe

    #@c8
    new-array v0, v0, [Landroid/os/ParcelUuid;

    #@ca
    .line 93
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    #@cc
    const/4 v2, 0x0

    #@cd
    aput-object v1, v0, v2

    #@cf
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    #@d1
    const/4 v2, 0x1

    #@d2
    aput-object v1, v0, v2

    #@d4
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    #@d6
    const/4 v2, 0x2

    #@d7
    aput-object v1, v0, v2

    #@d9
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    #@db
    const/4 v2, 0x3

    #@dc
    aput-object v1, v0, v2

    #@de
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    #@e0
    const/4 v2, 0x4

    #@e1
    aput-object v1, v0, v2

    #@e3
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AvrcpController:Landroid/os/ParcelUuid;

    #@e5
    const/4 v2, 0x5

    #@e6
    aput-object v1, v0, v2

    #@e8
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AvrcpTarget:Landroid/os/ParcelUuid;

    #@ea
    const/4 v2, 0x6

    #@eb
    aput-object v1, v0, v2

    #@ed
    .line 94
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    #@ef
    const/4 v2, 0x7

    #@f0
    aput-object v1, v0, v2

    #@f2
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    #@f4
    const/16 v2, 0x8

    #@f6
    aput-object v1, v0, v2

    #@f8
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    #@fa
    const/16 v2, 0x9

    #@fc
    aput-object v1, v0, v2

    #@fe
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    #@100
    const/16 v2, 0xa

    #@102
    aput-object v1, v0, v2

    #@104
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    #@106
    const/16 v2, 0xb

    #@108
    aput-object v1, v0, v2

    #@10a
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    #@10c
    const/16 v2, 0xc

    #@10e
    aput-object v1, v0, v2

    #@110
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->SAP:Landroid/os/ParcelUuid;

    #@112
    const/16 v2, 0xd

    #@114
    aput-object v1, v0, v2

    #@116
    .line 92
    sput-object v0, Landroid/bluetooth/BluetoothUuid;->RESERVED_UUIDS:[Landroid/os/ParcelUuid;

    #@118
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static containsAllUuids([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z
    .locals 7
    .param p0, "uuidA"    # [Landroid/os/ParcelUuid;
    .param p1, "uuidB"    # [Landroid/os/ParcelUuid;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 205
    if-nez p0, :cond_0

    #@4
    if-nez p1, :cond_0

    #@6
    return v2

    #@7
    .line 207
    :cond_0
    if-nez p0, :cond_2

    #@9
    .line 208
    array-length v4, p1

    #@a
    if-nez v4, :cond_1

    #@c
    :goto_0
    return v2

    #@d
    :cond_1
    move v2, v3

    #@e
    goto :goto_0

    #@f
    .line 211
    :cond_2
    if-nez p1, :cond_3

    #@11
    return v2

    #@12
    .line 213
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    #@14
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@17
    move-result-object v4

    #@18
    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@1b
    .line 214
    .local v1, "uuidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/os/ParcelUuid;>;"
    array-length v5, p1

    #@1c
    move v4, v3

    #@1d
    :goto_1
    if-ge v4, v5, :cond_5

    #@1f
    aget-object v0, p1, v4

    #@21
    .line 215
    .local v0, "uuid":Landroid/os/ParcelUuid;
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@24
    move-result v6

    #@25
    if-nez v6, :cond_4

    #@27
    return v3

    #@28
    .line 214
    :cond_4
    add-int/lit8 v4, v4, 0x1

    #@2a
    goto :goto_1

    #@2b
    .line 217
    .end local v0    # "uuid":Landroid/os/ParcelUuid;
    :cond_5
    return v2
.end method

.method public static containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z
    .locals 7
    .param p0, "uuidA"    # [Landroid/os/ParcelUuid;
    .param p1, "uuidB"    # [Landroid/os/ParcelUuid;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 179
    if-nez p0, :cond_0

    #@4
    if-nez p1, :cond_0

    #@6
    return v2

    #@7
    .line 181
    :cond_0
    if-nez p0, :cond_2

    #@9
    .line 182
    array-length v4, p1

    #@a
    if-nez v4, :cond_1

    #@c
    :goto_0
    return v2

    #@d
    :cond_1
    move v2, v3

    #@e
    goto :goto_0

    #@f
    .line 185
    :cond_2
    if-nez p1, :cond_4

    #@11
    .line 186
    array-length v4, p0

    #@12
    if-nez v4, :cond_3

    #@14
    :goto_1
    return v2

    #@15
    :cond_3
    move v2, v3

    #@16
    goto :goto_1

    #@17
    .line 189
    :cond_4
    new-instance v1, Ljava/util/HashSet;

    #@19
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@1c
    move-result-object v4

    #@1d
    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@20
    .line 190
    .local v1, "uuidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/os/ParcelUuid;>;"
    array-length v5, p1

    #@21
    move v4, v3

    #@22
    :goto_2
    if-ge v4, v5, :cond_6

    #@24
    aget-object v0, p1, v4

    #@26
    .line 191
    .local v0, "uuid":Landroid/os/ParcelUuid;
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@29
    move-result v6

    #@2a
    if-eqz v6, :cond_5

    #@2c
    return v2

    #@2d
    .line 190
    :cond_5
    add-int/lit8 v4, v4, 0x1

    #@2f
    goto :goto_2

    #@30
    .line 193
    .end local v0    # "uuid":Landroid/os/ParcelUuid;
    :cond_6
    return v3
.end method

.method public static getServiceIdentifierFromParcelUuid(Landroid/os/ParcelUuid;)I
    .locals 8
    .param p0, "parcelUuid"    # Landroid/os/ParcelUuid;

    #@0
    .prologue
    .line 228
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@3
    move-result-object v0

    #@4
    .line 229
    .local v0, "uuid":Ljava/util/UUID;
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    #@7
    move-result-wide v4

    #@8
    const-wide v6, 0xffff00000000L

    #@d
    and-long/2addr v4, v6

    #@e
    const/16 v1, 0x20

    #@10
    ushr-long v2, v4, v1

    #@12
    .line 230
    .local v2, "value":J
    long-to-int v1, v2

    #@13
    return v1
.end method

.method public static is16BitUuid(Landroid/os/ParcelUuid;)Z
    .locals 6
    .param p0, "parcelUuid"    # Landroid/os/ParcelUuid;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 284
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@4
    move-result-object v0

    #@5
    .line 285
    .local v0, "uuid":Ljava/util/UUID;
    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    #@8
    move-result-wide v2

    #@9
    sget-object v4, Landroid/bluetooth/BluetoothUuid;->BASE_UUID:Landroid/os/ParcelUuid;

    #@b
    invoke-virtual {v4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@e
    move-result-object v4

    #@f
    invoke-virtual {v4}, Ljava/util/UUID;->getLeastSignificantBits()J

    #@12
    move-result-wide v4

    #@13
    cmp-long v2, v2, v4

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 286
    return v1

    #@18
    .line 288
    :cond_0
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    #@1b
    move-result-wide v2

    #@1c
    const-wide v4, -0xffff00000001L

    #@21
    and-long/2addr v2, v4

    #@22
    const-wide/16 v4, 0x1000

    #@24
    cmp-long v2, v2, v4

    #@26
    if-nez v2, :cond_1

    #@28
    const/4 v1, 0x1

    #@29
    :cond_1
    return v1
.end method

.method public static is32BitUuid(Landroid/os/ParcelUuid;)Z
    .locals 6
    .param p0, "parcelUuid"    # Landroid/os/ParcelUuid;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 299
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@4
    move-result-object v0

    #@5
    .line 300
    .local v0, "uuid":Ljava/util/UUID;
    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    #@8
    move-result-wide v2

    #@9
    sget-object v4, Landroid/bluetooth/BluetoothUuid;->BASE_UUID:Landroid/os/ParcelUuid;

    #@b
    invoke-virtual {v4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@e
    move-result-object v4

    #@f
    invoke-virtual {v4}, Ljava/util/UUID;->getLeastSignificantBits()J

    #@12
    move-result-wide v4

    #@13
    cmp-long v2, v2, v4

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 301
    return v1

    #@18
    .line 303
    :cond_0
    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->is16BitUuid(Landroid/os/ParcelUuid;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_1

    #@1e
    .line 304
    return v1

    #@1f
    .line 306
    :cond_1
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    #@22
    move-result-wide v2

    #@23
    const-wide v4, 0xffffffffL

    #@28
    and-long/2addr v2, v4

    #@29
    const-wide/16 v4, 0x1000

    #@2b
    cmp-long v2, v2, v4

    #@2d
    if-nez v2, :cond_2

    #@2f
    const/4 v1, 0x1

    #@30
    :cond_2
    return v1
.end method

.method public static isAdvAudioDist(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    #@0
    .prologue
    .line 105
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    #@2
    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isAudioSink(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    #@0
    .prologue
    .line 101
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    #@2
    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isAudioSource(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    #@0
    .prologue
    .line 97
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    #@2
    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isAvrcpController(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    #@0
    .prologue
    .line 117
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AvrcpController:Landroid/os/ParcelUuid;

    #@2
    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isAvrcpTarget(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    #@0
    .prologue
    .line 121
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AvrcpTarget:Landroid/os/ParcelUuid;

    #@2
    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isBnep(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    #@0
    .prologue
    .line 137
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->BNEP:Landroid/os/ParcelUuid;

    #@2
    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isHandsfree(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    #@0
    .prologue
    .line 109
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    #@2
    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isHeadset(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    #@0
    .prologue
    .line 113
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    #@2
    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isInputDevice(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    #@0
    .prologue
    .line 125
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    #@2
    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isMap(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    #@0
    .prologue
    .line 140
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    #@2
    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isMas(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    #@0
    .prologue
    .line 146
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    #@2
    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isMns(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    #@0
    .prologue
    .line 143
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    #@2
    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isNap(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    #@0
    .prologue
    .line 133
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    #@2
    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isPanu(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    #@0
    .prologue
    .line 129
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    #@2
    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isSap(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    #@0
    .prologue
    .line 149
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->SAP:Landroid/os/ParcelUuid;

    #@2
    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z
    .locals 6
    .param p0, "uuidArray"    # [Landroid/os/ParcelUuid;
    .param p1, "uuid"    # Landroid/os/ParcelUuid;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 159
    if-eqz p0, :cond_0

    #@4
    array-length v1, p0

    #@5
    if-nez v1, :cond_1

    #@7
    :cond_0
    if-nez p1, :cond_1

    #@9
    .line 160
    return v5

    #@a
    .line 162
    :cond_1
    if-nez p0, :cond_2

    #@c
    .line 163
    return v2

    #@d
    .line 165
    :cond_2
    array-length v3, p0

    #@e
    move v1, v2

    #@f
    :goto_0
    if-ge v1, v3, :cond_4

    #@11
    aget-object v0, p0, v1

    #@13
    .line 166
    .local v0, "element":Landroid/os/ParcelUuid;
    invoke-virtual {v0, p1}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_3

    #@19
    return v5

    #@1a
    .line 165
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 168
    .end local v0    # "element":Landroid/os/ParcelUuid;
    :cond_4
    return v2
.end method

.method public static parseUuidFrom([B)Landroid/os/ParcelUuid;
    .locals 13
    .param p0, "uuidBytes"    # [B

    #@0
    .prologue
    const/16 v12, 0x10

    #@2
    const/4 v9, 0x1

    #@3
    const/4 v11, 0x2

    #@4
    const/4 v10, 0x0

    #@5
    .line 243
    if-nez p0, :cond_0

    #@7
    .line 244
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v9, "uuidBytes cannot be null"

    #@c
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v8

    #@10
    .line 246
    :cond_0
    array-length v1, p0

    #@11
    .line 247
    .local v1, "length":I
    if-eq v1, v11, :cond_1

    #@13
    const/4 v8, 0x4

    #@14
    if-eq v1, v8, :cond_1

    #@16
    .line 248
    if-eq v1, v12, :cond_1

    #@18
    .line 249
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@1a
    new-instance v9, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v10, "uuidBytes length invalid - "

    #@22
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v9

    #@26
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v9

    #@2a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v9

    #@2e
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v8

    #@32
    .line 253
    :cond_1
    if-ne v1, v12, :cond_2

    #@34
    .line 254
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@37
    move-result-object v8

    #@38
    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@3a
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@3d
    move-result-object v0

    #@3e
    .line 255
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/16 v8, 0x8

    #@40
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->getLong(I)J

    #@43
    move-result-wide v4

    #@44
    .line 256
    .local v4, "msb":J
    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->getLong(I)J

    #@47
    move-result-wide v2

    #@48
    .line 257
    .local v2, "lsb":J
    new-instance v8, Landroid/os/ParcelUuid;

    #@4a
    new-instance v9, Ljava/util/UUID;

    #@4c
    invoke-direct {v9, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    #@4f
    invoke-direct {v8, v9}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    #@52
    return-object v8

    #@53
    .line 263
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v2    # "lsb":J
    .end local v4    # "msb":J
    :cond_2
    if-ne v1, v11, :cond_3

    #@55
    .line 264
    aget-byte v8, p0, v10

    #@57
    and-int/lit16 v8, v8, 0xff

    #@59
    int-to-long v6, v8

    #@5a
    .line 265
    .local v6, "shortUuid":J
    aget-byte v8, p0, v9

    #@5c
    and-int/lit16 v8, v8, 0xff

    #@5e
    shl-int/lit8 v8, v8, 0x8

    #@60
    int-to-long v8, v8

    #@61
    add-long/2addr v6, v8

    #@62
    .line 272
    :goto_0
    sget-object v8, Landroid/bluetooth/BluetoothUuid;->BASE_UUID:Landroid/os/ParcelUuid;

    #@64
    invoke-virtual {v8}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@67
    move-result-object v8

    #@68
    invoke-virtual {v8}, Ljava/util/UUID;->getMostSignificantBits()J

    #@6b
    move-result-wide v8

    #@6c
    const/16 v10, 0x20

    #@6e
    shl-long v10, v6, v10

    #@70
    add-long v4, v8, v10

    #@72
    .line 273
    .restart local v4    # "msb":J
    sget-object v8, Landroid/bluetooth/BluetoothUuid;->BASE_UUID:Landroid/os/ParcelUuid;

    #@74
    invoke-virtual {v8}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@77
    move-result-object v8

    #@78
    invoke-virtual {v8}, Ljava/util/UUID;->getLeastSignificantBits()J

    #@7b
    move-result-wide v2

    #@7c
    .line 274
    .restart local v2    # "lsb":J
    new-instance v8, Landroid/os/ParcelUuid;

    #@7e
    new-instance v9, Ljava/util/UUID;

    #@80
    invoke-direct {v9, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    #@83
    invoke-direct {v8, v9}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    #@86
    return-object v8

    #@87
    .line 267
    .end local v2    # "lsb":J
    .end local v4    # "msb":J
    .end local v6    # "shortUuid":J
    :cond_3
    aget-byte v8, p0, v10

    #@89
    and-int/lit16 v8, v8, 0xff

    #@8b
    int-to-long v6, v8

    #@8c
    .line 268
    .restart local v6    # "shortUuid":J
    aget-byte v8, p0, v9

    #@8e
    and-int/lit16 v8, v8, 0xff

    #@90
    shl-int/lit8 v8, v8, 0x8

    #@92
    int-to-long v8, v8

    #@93
    add-long/2addr v6, v8

    #@94
    .line 269
    aget-byte v8, p0, v11

    #@96
    and-int/lit16 v8, v8, 0xff

    #@98
    shl-int/lit8 v8, v8, 0x10

    #@9a
    int-to-long v8, v8

    #@9b
    add-long/2addr v6, v8

    #@9c
    .line 270
    const/4 v8, 0x3

    #@9d
    aget-byte v8, p0, v8

    #@9f
    and-int/lit16 v8, v8, 0xff

    #@a1
    shl-int/lit8 v8, v8, 0x18

    #@a3
    int-to-long v8, v8

    #@a4
    add-long/2addr v6, v8

    #@a5
    goto :goto_0
.end method
