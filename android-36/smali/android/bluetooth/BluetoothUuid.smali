.class public final Landroid/bluetooth/BluetoothUuid;
.super Ljava/lang/Object;
.source "BluetoothUuid.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist A2DP_SINK:Landroid/os/ParcelUuid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist A2DP_SOURCE:Landroid/os/ParcelUuid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ADV_AUDIO_DIST:Landroid/os/ParcelUuid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AVRCP:Landroid/os/ParcelUuid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AVRCP_CONTROLLER:Landroid/os/ParcelUuid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AVRCP_TARGET:Landroid/os/ParcelUuid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BASE_UUID:Landroid/os/ParcelUuid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BASS:Landroid/os/ParcelUuid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist BATTERY:Landroid/os/ParcelUuid;

.field public static final whitelist BNEP:Landroid/os/ParcelUuid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAP:Landroid/os/ParcelUuid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist COORDINATED_SET:Landroid/os/ParcelUuid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DIP:Landroid/os/ParcelUuid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist GENERIC_MEDIA_CONTROL:Landroid/os/ParcelUuid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist GMAP:Landroid/os/ParcelUuid;

.field public static final whitelist HAS:Landroid/os/ParcelUuid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist HEARING_AID:Landroid/os/ParcelUuid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist HFP:Landroid/os/ParcelUuid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist HFP_AG:Landroid/os/ParcelUuid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist HID:Landroid/os/ParcelUuid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist HOGP:Landroid/os/ParcelUuid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist HSP:Landroid/os/ParcelUuid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist HSP_AG:Landroid/os/ParcelUuid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LE_AUDIO:Landroid/os/ParcelUuid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MAP:Landroid/os/ParcelUuid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MAS:Landroid/os/ParcelUuid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MEDIA_CONTROL:Landroid/os/ParcelUuid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MFI_HAS:Landroid/os/ParcelUuid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MNS:Landroid/os/ParcelUuid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAP:Landroid/os/ParcelUuid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OBEX_OBJECT_PUSH:Landroid/os/ParcelUuid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PANU:Landroid/os/ParcelUuid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PBAP_PCE:Landroid/os/ParcelUuid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PBAP_PSE:Landroid/os/ParcelUuid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SAP:Landroid/os/ParcelUuid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist TMAP:Landroid/os/ParcelUuid;

.field public static final whitelist UUID_BYTES_128_BIT:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist UUID_BYTES_16_BIT:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist UUID_BYTES_32_BIT:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist VOLUME_CONTROL:Landroid/os/ParcelUuid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    nop

    .line 50
    const-string v0, "0000110B-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->A2DP_SINK:Landroid/os/ParcelUuid;

    .line 58
    nop

    .line 59
    const-string v0, "0000110A-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->A2DP_SOURCE:Landroid/os/ParcelUuid;

    .line 67
    nop

    .line 68
    const-string v0, "0000110D-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->ADV_AUDIO_DIST:Landroid/os/ParcelUuid;

    .line 76
    nop

    .line 77
    const-string v0, "00001108-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    .line 85
    nop

    .line 86
    const-string v0, "00001112-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    .line 94
    nop

    .line 95
    const-string v0, "0000111E-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->HFP:Landroid/os/ParcelUuid;

    .line 103
    nop

    .line 104
    const-string v0, "0000111F-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->HFP_AG:Landroid/os/ParcelUuid;

    .line 112
    nop

    .line 113
    const-string v0, "0000110E-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->AVRCP:Landroid/os/ParcelUuid;

    .line 121
    nop

    .line 122
    const-string v0, "0000110F-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->AVRCP_CONTROLLER:Landroid/os/ParcelUuid;

    .line 130
    nop

    .line 131
    const-string v0, "0000110C-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->AVRCP_TARGET:Landroid/os/ParcelUuid;

    .line 139
    nop

    .line 140
    const-string v0, "00001105-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->OBEX_OBJECT_PUSH:Landroid/os/ParcelUuid;

    .line 148
    nop

    .line 149
    const-string v0, "00001124-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->HID:Landroid/os/ParcelUuid;

    .line 157
    nop

    .line 158
    const-string v0, "00001812-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->HOGP:Landroid/os/ParcelUuid;

    .line 166
    nop

    .line 167
    const-string v0, "00001115-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    .line 175
    nop

    .line 176
    const-string v0, "00001116-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    .line 184
    nop

    .line 185
    const-string v0, "0000000f-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->BNEP:Landroid/os/ParcelUuid;

    .line 193
    nop

    .line 194
    const-string v0, "0000112e-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->PBAP_PCE:Landroid/os/ParcelUuid;

    .line 202
    nop

    .line 203
    const-string v0, "0000112f-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    .line 211
    nop

    .line 212
    const-string v0, "00001134-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    .line 220
    nop

    .line 221
    const-string v0, "00001133-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    .line 229
    nop

    .line 230
    const-string v0, "00001132-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    .line 238
    nop

    .line 239
    const-string v0, "0000112D-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->SAP:Landroid/os/ParcelUuid;

    .line 247
    nop

    .line 248
    const-string v0, "0000FDF0-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->HEARING_AID:Landroid/os/ParcelUuid;

    .line 256
    nop

    .line 257
    const-string v0, "00001854-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->HAS:Landroid/os/ParcelUuid;

    .line 265
    nop

    .line 266
    const-string v0, "7D74F4BD-C74A-4431-862C-CCE884371592"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->MFI_HAS:Landroid/os/ParcelUuid;

    .line 274
    nop

    .line 275
    const-string v0, "0000184E-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->LE_AUDIO:Landroid/os/ParcelUuid;

    .line 283
    nop

    .line 284
    const-string v0, "00001200-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->DIP:Landroid/os/ParcelUuid;

    .line 292
    nop

    .line 293
    const-string v0, "00001844-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->VOLUME_CONTROL:Landroid/os/ParcelUuid;

    .line 301
    nop

    .line 302
    const-string v0, "00001849-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->GENERIC_MEDIA_CONTROL:Landroid/os/ParcelUuid;

    .line 310
    nop

    .line 311
    const-string v0, "00001858-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->GMAP:Landroid/os/ParcelUuid;

    .line 319
    nop

    .line 320
    const-string v0, "00001848-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->MEDIA_CONTROL:Landroid/os/ParcelUuid;

    .line 328
    nop

    .line 329
    const-string v0, "00001846-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->COORDINATED_SET:Landroid/os/ParcelUuid;

    .line 337
    nop

    .line 338
    const-string v0, "00001853-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->CAP:Landroid/os/ParcelUuid;

    .line 346
    nop

    .line 347
    const-string v0, "0000180F-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->BATTERY:Landroid/os/ParcelUuid;

    .line 356
    nop

    .line 357
    const-string v0, "0000184F-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->BASS:Landroid/os/ParcelUuid;

    .line 365
    nop

    .line 366
    const-string v0, "00001855-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->TMAP:Landroid/os/ParcelUuid;

    .line 370
    nop

    .line 371
    const-string v0, "00000000-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->BASE_UUID:Landroid/os/ParcelUuid;

    .line 370
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z
    .registers 9
    .param p0, "uuidA"    # [Landroid/os/ParcelUuid;
    .param p1, "uuidB"    # [Landroid/os/ParcelUuid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 404
    const/4 v0, 0x1

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    return v0

    .line 406
    :cond_6
    const/4 v1, 0x0

    if-nez p0, :cond_f

    .line 407
    array-length v2, p1

    if-nez v2, :cond_d

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    return v0

    .line 410
    :cond_f
    if-nez p1, :cond_17

    .line 411
    array-length v2, p0

    if-nez v2, :cond_15

    goto :goto_16

    :cond_15
    move v0, v1

    :goto_16
    return v0

    .line 414
    :cond_17
    new-instance v2, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 415
    .local v2, "uuidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/os/ParcelUuid;>;"
    array-length v3, p1

    move v4, v1

    :goto_22
    if-ge v4, v3, :cond_30

    aget-object v5, p1, v4

    .line 416
    .local v5, "uuid":Landroid/os/ParcelUuid;
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    return v0

    .line 415
    .end local v5    # "uuid":Landroid/os/ParcelUuid;
    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 418
    :cond_30
    return v1
.end method

.method private static blacklist getServiceIdentifierFromParcelUuid(Landroid/os/ParcelUuid;)I
    .registers 6
    .param p0, "parcelUuid"    # Landroid/os/ParcelUuid;

    .line 426
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 427
    .local v0, "uuid":Ljava/util/UUID;
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    const-wide v3, -0x100000000L

    and-long/2addr v1, v3

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    .line 428
    .local v1, "value":J
    long-to-int v3, v1

    return v3
.end method

.method public static greylist is16BitUuid(Landroid/os/ParcelUuid;)Z
    .registers 8
    .param p0, "parcelUuid"    # Landroid/os/ParcelUuid;

    .line 529
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 530
    .local v0, "uuid":Ljava/util/UUID;
    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    sget-object v3, Landroid/bluetooth/BluetoothUuid;->BASE_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 531
    return v2

    .line 533
    :cond_18
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    const-wide v5, -0xffff00000001L

    and-long/2addr v3, v5

    const-wide/16 v5, 0x1000

    cmp-long v1, v3, v5

    if-nez v1, :cond_29

    const/4 v2, 0x1

    :cond_29
    return v2
.end method

.method public static greylist is32BitUuid(Landroid/os/ParcelUuid;)Z
    .registers 8
    .param p0, "parcelUuid"    # Landroid/os/ParcelUuid;

    .line 544
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 545
    .local v0, "uuid":Ljava/util/UUID;
    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    sget-object v3, Landroid/bluetooth/BluetoothUuid;->BASE_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 546
    return v2

    .line 548
    :cond_18
    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->is16BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 549
    return v2

    .line 551
    :cond_1f
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    const-wide/16 v5, 0x1000

    cmp-long v1, v3, v5

    if-nez v1, :cond_30

    const/4 v2, 0x1

    :cond_30
    return v2
.end method

.method public static whitelist parseUuidFrom([B)Landroid/os/ParcelUuid;
    .registers 10
    .param p0, "uuidBytes"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 443
    if-eqz p0, :cond_9a

    .line 446
    array-length v0, p0

    .line 447
    .local v0, "length":I
    const/16 v1, 0x10

    const/4 v2, 0x2

    if-eq v0, v2, :cond_27

    const/4 v3, 0x4

    if-eq v0, v3, :cond_27

    if-ne v0, v1, :cond_e

    goto :goto_27

    .line 450
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uuidBytes length invalid - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 454
    :cond_27
    :goto_27
    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne v0, v1, :cond_49

    .line 455
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 456
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v4

    .line 457
    .local v4, "msb":J
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    .line 458
    .local v2, "lsb":J
    new-instance v6, Landroid/os/ParcelUuid;

    new-instance v7, Ljava/util/UUID;

    invoke-direct {v7, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v6, v7}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    return-object v6

    .line 464
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v2    # "lsb":J
    .end local v4    # "msb":J
    :cond_49
    const/4 v5, 0x1

    if-ne v0, v2, :cond_59

    .line 465
    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    int-to-long v1, v1

    .line 466
    .local v1, "shortUuid":J
    aget-byte v3, p0, v5

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_76

    .line 468
    .end local v1    # "shortUuid":J
    :cond_59
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v6, v3

    .line 469
    .local v6, "shortUuid":J
    aget-byte v3, p0, v5

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v6, v3

    .line 470
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v1, v2, 0x10

    int-to-long v1, v1

    add-long/2addr v6, v1

    .line 471
    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    int-to-long v1, v1

    add-long/2addr v1, v6

    .line 473
    .end local v6    # "shortUuid":J
    .restart local v1    # "shortUuid":J
    :goto_76
    sget-object v3, Landroid/bluetooth/BluetoothUuid;->BASE_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    const/16 v5, 0x20

    shl-long v5, v1, v5

    add-long/2addr v3, v5

    .line 474
    .local v3, "msb":J
    sget-object v5, Landroid/bluetooth/BluetoothUuid;->BASE_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v5

    .line 475
    .local v5, "lsb":J
    new-instance v7, Landroid/os/ParcelUuid;

    new-instance v8, Ljava/util/UUID;

    invoke-direct {v8, v3, v4, v5, v6}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v7, v8}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    return-object v7

    .line 444
    .end local v0    # "length":I
    .end local v1    # "shortUuid":J
    .end local v3    # "msb":J
    .end local v5    # "lsb":J
    :cond_9a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "uuidBytes cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist uuidToBytes(Landroid/os/ParcelUuid;)[B
    .registers 10
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .line 488
    if-eqz p0, :cond_6e

    .line 492
    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->is16BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v0

    const v1, 0xff00

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v0, :cond_21

    .line 493
    new-array v0, v3, [B

    .line 494
    .local v0, "uuidBytes":[B
    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->getServiceIdentifierFromParcelUuid(Landroid/os/ParcelUuid;)I

    move-result v3

    .line 495
    .local v3, "uuidVal":I
    and-int/lit16 v6, v3, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 496
    and-int/2addr v1, v3

    shr-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 497
    return-object v0

    .line 500
    .end local v0    # "uuidBytes":[B
    .end local v3    # "uuidVal":I
    :cond_21
    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->is32BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v0

    const/16 v6, 0x10

    if-eqz v0, :cond_4b

    .line 501
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 502
    .restart local v0    # "uuidBytes":[B
    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->getServiceIdentifierFromParcelUuid(Landroid/os/ParcelUuid;)I

    move-result v7

    .line 503
    .local v7, "uuidVal":I
    and-int/lit16 v8, v7, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v5

    .line 504
    and-int/2addr v1, v7

    shr-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 505
    const/high16 v1, 0xff0000

    and-int/2addr v1, v7

    shr-int/2addr v1, v6

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 506
    const/high16 v1, -0x1000000

    and-int/2addr v1, v7

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 507
    return-object v0

    .line 511
    .end local v0    # "uuidBytes":[B
    .end local v7    # "uuidVal":I
    :cond_4b
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    .line 512
    .local v0, "msb":J
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 514
    .local v2, "lsb":J
    new-array v6, v6, [B

    .line 515
    .local v6, "uuidBytes":[B
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 516
    .local v7, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v7, v4, v0, v1}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 517
    invoke-virtual {v7, v5, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 518
    return-object v6

    .line 489
    .end local v0    # "msb":J
    .end local v2    # "lsb":J
    .end local v6    # "uuidBytes":[B
    .end local v7    # "buf":Ljava/nio/ByteBuffer;
    :cond_6e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "uuid cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
