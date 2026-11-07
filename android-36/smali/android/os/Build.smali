.class public Landroid/os/Build;
.super Ljava/lang/Object;
.source "Build.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Build$VERSION_CODES_FULL;,
        Landroid/os/Build$Partition;,
        Landroid/os/Build$BackportedFixStatus;,
        Landroid/os/Build$SdkIntFull;,
        Landroid/os/Build$VERSION_CODES;,
        Landroid/os/Build$VERSION;
    }
.end annotation


# static fields
.field public static final blacklist BACKPORTED_FIX_STATUS_FIXED:I = 0x1

.field public static final blacklist BACKPORTED_FIX_STATUS_NOT_APPLICABLE:I = 0x2

.field public static final blacklist BACKPORTED_FIX_STATUS_NOT_FIXED:I = 0x3

.field public static final blacklist BACKPORTED_FIX_STATUS_UNKNOWN:I = 0x0

.field public static final whitelist BOARD:Ljava/lang/String;

.field public static final whitelist BOOTLOADER:Ljava/lang/String;

.field public static final whitelist BRAND:Ljava/lang/String;

.field public static final blacklist BRAND_FOR_ATTESTATION:Ljava/lang/String;

.field public static final whitelist CPU_ABI:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CPU_ABI2:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DEVICE:Ljava/lang/String;

.field public static final blacklist DEVICE_FOR_ATTESTATION:Ljava/lang/String;

.field public static final whitelist DISPLAY:Ljava/lang/String;

.field public static final whitelist FINGERPRINT:Ljava/lang/String;

.field public static final whitelist HARDWARE:Ljava/lang/String;

.field public static final whitelist HOST:Ljava/lang/String;

.field public static final blacklist HW_TIMEOUT_MULTIPLIER:I

.field public static final whitelist ID:Ljava/lang/String;

.field public static final blacklist IS_ARC:Z

.field public static final greylist IS_DEBUGGABLE:Z

.field public static final greylist IS_EMULATOR:Z

.field public static final greylist-max-o IS_ENG:Z

.field public static final greylist-max-o IS_TREBLE_ENABLED:Z

.field public static final greylist-max-o IS_USER:Z

.field public static final greylist-max-o IS_USERDEBUG:Z

.field public static final whitelist MANUFACTURER:Ljava/lang/String;

.field public static final blacklist MANUFACTURER_FOR_ATTESTATION:Ljava/lang/String;

.field public static final whitelist MODEL:Ljava/lang/String;

.field public static final blacklist MODEL_FOR_ATTESTATION:Ljava/lang/String;

.field public static final whitelist ODM_SKU:Ljava/lang/String;

.field public static final greylist PERMISSIONS_REVIEW_REQUIRED:Z = true
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PRODUCT:Ljava/lang/String;

.field public static final blacklist PRODUCT_FOR_ATTESTATION:Ljava/lang/String;

.field public static final whitelist RADIO:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SERIAL:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SKU:Ljava/lang/String;

.field public static final whitelist SOC_MANUFACTURER:Ljava/lang/String;

.field public static final whitelist SOC_MODEL:Ljava/lang/String;

.field public static final whitelist SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

.field public static final whitelist SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

.field public static final whitelist SUPPORTED_ABIS:[Ljava/lang/String;

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Build"

.field public static final whitelist TAGS:Ljava/lang/String;

.field public static final whitelist TIME:J

.field public static final whitelist TYPE:Ljava/lang/String;

.field public static final whitelist UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final whitelist USER:Ljava/lang/String;

.field public static final blacklist VENDOR_API_2024_Q2:I = 0x316a4


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetString(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetStringList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Landroid/os/Build;->getStringList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 8

    .line 67
    const-string/jumbo v0, "ro.build.id"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, "ro.build.display.id"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 73
    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 83
    const-string/jumbo v0, "name"

    invoke-static {v0}, Landroid/os/Build;->getVendorDeviceIdProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->PRODUCT_FOR_ATTESTATION:Ljava/lang/String;

    .line 86
    const-string/jumbo v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 96
    nop

    .line 97
    const-string v0, "device"

    invoke-static {v0}, Landroid/os/Build;->getVendorDeviceIdProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->DEVICE_FOR_ATTESTATION:Ljava/lang/String;

    .line 100
    const-string/jumbo v0, "ro.product.board"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 119
    const-string/jumbo v0, "ro.product.manufacturer"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 129
    nop

    .line 130
    const-string/jumbo v0, "manufacturer"

    invoke-static {v0}, Landroid/os/Build;->getVendorDeviceIdProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->MANUFACTURER_FOR_ATTESTATION:Ljava/lang/String;

    .line 133
    const-string/jumbo v0, "ro.product.brand"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 143
    const-string v0, "brand"

    invoke-static {v0}, Landroid/os/Build;->getVendorDeviceIdProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->BRAND_FOR_ATTESTATION:Ljava/lang/String;

    .line 146
    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 156
    const-string/jumbo v0, "model"

    invoke-static {v0}, Landroid/os/Build;->getVendorDeviceIdProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->MODEL_FOR_ATTESTATION:Ljava/lang/String;

    .line 160
    invoke-static {}, Landroid/sysprop/SocProperties;->soc_manufacturer()Ljava/util/Optional;

    move-result-object v0

    const-string/jumbo v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Landroid/os/Build;->SOC_MANUFACTURER:Ljava/lang/String;

    .line 164
    invoke-static {}, Landroid/sysprop/SocProperties;->soc_model()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Landroid/os/Build;->SOC_MODEL:Ljava/lang/String;

    .line 167
    const-string/jumbo v0, "ro.bootloader"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    .line 179
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->baseband_version()Ljava/util/List;

    move-result-object v0

    .line 178
    invoke-static {v0, v1}, Landroid/os/Build;->joinListOrElse(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->RADIO:Ljava/lang/String;

    .line 182
    const-string/jumbo v0, "ro.hardware"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 192
    const-string/jumbo v0, "ro.boot.hardware.sku"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->SKU:Ljava/lang/String;

    .line 205
    const-string/jumbo v0, "ro.boot.product.hardware.sku"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->ODM_SKU:Ljava/lang/String;

    .line 213
    const-string/jumbo v0, "ro.boot.qemu"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/Build;->IS_EMULATOR:Z

    .line 225
    const-string/jumbo v0, "no.such.thing"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 287
    const-string/jumbo v0, "ro.product.cpu.abilist"

    const-string v1, ","

    invoke-static {v0, v1}, Landroid/os/Build;->getStringList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 295
    nop

    .line 296
    const-string/jumbo v0, "ro.product.cpu.abilist32"

    invoke-static {v0, v1}, Landroid/os/Build;->getStringList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 304
    nop

    .line 305
    const-string/jumbo v0, "ro.product.cpu.abilist64"

    invoke-static {v0, v1}, Landroid/os/Build;->getStringList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    .line 320
    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 321
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    .local v0, "abiList":[Ljava/lang/String;
    goto :goto_100

    .line 323
    .end local v0    # "abiList":[Ljava/lang/String;
    :cond_fe
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 326
    .restart local v0    # "abiList":[Ljava/lang/String;
    :goto_100
    const/4 v1, 0x0

    aget-object v2, v0, v1

    sput-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 327
    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_10e

    .line 328
    aget-object v2, v0, v3

    sput-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    goto :goto_112

    .line 330
    :cond_10e
    const-string v2, ""

    sput-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    .line 1620
    .end local v0    # "abiList":[Ljava/lang/String;
    :goto_112
    const-string/jumbo v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 1623
    const-string/jumbo v0, "ro.build.tags"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 1626
    invoke-static {}, Landroid/os/Build;->deriveFingerprint()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 1744
    nop

    .line 1745
    const-string/jumbo v0, "ro.hw_timeout_multiplier"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    .line 1752
    nop

    .line 1753
    const-string/jumbo v0, "ro.treble.enabled"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/Build;->IS_TREBLE_ENABLED:Z

    .line 1928
    const-string/jumbo v0, "ro.build.date.utc"

    invoke-static {v0}, Landroid/os/Build;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    sput-wide v4, Landroid/os/Build;->TIME:J

    .line 1929
    const-string/jumbo v0, "ro.build.user"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->USER:Ljava/lang/String;

    .line 1930
    const-string/jumbo v0, "ro.build.host"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->HOST:Ljava/lang/String;

    .line 1941
    nop

    .line 1942
    const-string/jumbo v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_167

    goto :goto_168

    :cond_167
    move v3, v1

    :goto_168
    sput-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 1959
    const-string v0, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/Build;->IS_ENG:Z

    .line 1961
    const-string/jumbo v0, "userdebug"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    .line 1963
    const-string/jumbo v0, "user"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/Build;->IS_USER:Z

    .line 1981
    nop

    .line 1982
    const-string/jumbo v0, "ro.boot.container"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/Build;->IS_ARC:Z

    .line 1981
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o deriveFingerprint()Ljava/lang/String;
    .registers 5

    .line 1704
    const-string/jumbo v0, "ro.build.fingerprint"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1705
    .local v0, "finger":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 1706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ro.product.brand"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1707
    const-string/jumbo v3, "ro.product.name"

    invoke-static {v3}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1708
    const-string/jumbo v3, "ro.product.device"

    invoke-static {v3}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1709
    const-string/jumbo v4, "ro.build.version.release"

    invoke-static {v4}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1710
    const-string/jumbo v4, "ro.build.id"

    invoke-static {v4}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1711
    const-string/jumbo v4, "ro.build.version.incremental"

    invoke-static {v4}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1712
    const-string/jumbo v3, "ro.build.type"

    invoke-static {v3}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1713
    const-string/jumbo v2, "ro.build.tags"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1715
    :cond_8e
    return-object v0
.end method

.method public static greylist-max-o ensureFingerprintProperty()V
    .registers 3

    .line 1726
    const-string/jumbo v0, "ro.build.fingerprint"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1728
    :try_start_d
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_12} :catch_13

    .line 1731
    goto :goto_1b

    .line 1729
    :catch_13
    move-exception v0

    .line 1730
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "Build"

    const-string v2, "Failed to set fingerprint property"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1733
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1b
    :goto_1b
    return-void
.end method

.method public static blacklist fullVersionToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "version"    # I

    .line 1600
    if-ltz p0, :cond_1d

    .line 1604
    invoke-static {p0}, Landroid/os/Build;->getMajorSdkVersion(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Landroid/os/Build;->getMinorSdkVersion(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%d.%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1601
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to convert \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' to string: not a valid major.minor version code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getBackportedFixStatus(J)I
    .registers 6
    .param p0, "id"    # J

    .line 1677
    const/4 v0, 0x0

    .line 1678
    .local v0, "status":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1679
    .local v1, "uid":I
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-lez v2, :cond_20

    const-wide/16 v2, 0x3ff

    cmp-long v2, p0, v2

    if-gtz v2, :cond_20

    .line 1680
    invoke-static {}, Landroid/sysprop/BackportedFixesProperties;->alias_bitset()Ljava/util/List;

    move-result-object v2

    long-to-int v3, p0

    invoke-static {v2, v3}, Landroid/os/Build;->isBitSet(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1681
    const/4 v2, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    move v0, v2

    .line 1683
    :cond_20
    const/16 v2, 0x3db

    invoke-static {v2, v1, p0, p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJI)V

    .line 1684
    return v0
.end method

.method public static whitelist getFingerprintedPartitions()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/Build$Partition;",
            ">;"
        }
    .end annotation

    .line 1903
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1905
    .local v0, "partitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Build$Partition;>;"
    const-string/jumbo v5, "system"

    const-string/jumbo v6, "vendor"

    const-string v1, "bootimage"

    const-string/jumbo v2, "odm"

    const-string/jumbo v3, "product"

    const-string/jumbo v4, "system_ext"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    .line 1913
    .local v1, "names":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v2, :cond_71

    aget-object v5, v1, v3

    .line 1914
    .local v5, "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ro."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ".build.fingerprint"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1915
    .local v4, "fingerprint":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 1916
    goto :goto_6e

    .line 1918
    :cond_45
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".build.date.utc"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/Build;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v7, v6, v8

    .line 1919
    .local v7, "time":J
    move-object v6, v4

    .end local v4    # "fingerprint":Ljava/lang/String;
    .local v6, "fingerprint":Ljava/lang/String;
    new-instance v4, Landroid/os/Build$Partition;

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Landroid/os/Build$Partition;-><init>(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Build-IA;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1913
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "fingerprint":Ljava/lang/String;
    .end local v7    # "time":J
    :goto_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 1922
    :cond_71
    return-object v0
.end method

.method private static greylist getLong(Ljava/lang/String;)J
    .registers 4
    .param p0, "property"    # Ljava/lang/String;

    .line 2033
    :try_start_0
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_8} :catch_9

    return-wide v0

    .line 2034
    :catch_9
    move-exception v0

    .line 2035
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public static whitelist getMajorSdkVersion(I)I
    .registers 2
    .param p0, "sdkIntFull"    # I

    .line 1531
    const v0, 0x186a0

    div-int v0, p0, v0

    return v0
.end method

.method public static whitelist getMinorSdkVersion(I)I
    .registers 2
    .param p0, "sdkIntFull"    # I

    .line 1542
    const v0, 0x186a0

    rem-int v0, p0, v0

    return v0
.end method

.method public static whitelist getRadioVersion()Ljava/lang/String;
    .registers 2

    .line 2002
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->baseband_version()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Build;->joinListOrElse(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getSerial()Ljava/lang/String;
    .registers 4

    .line 269
    nop

    .line 270
    const-string v0, "device_identifiers"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IDeviceIdentifiersPolicyService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdentifiersPolicyService;

    move-result-object v0

    .line 272
    .local v0, "service":Landroid/os/IDeviceIdentifiersPolicyService;
    :try_start_b
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 273
    .local v1, "application":Landroid/app/Application;
    const/4 v2, 0x0

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_18

    :cond_17
    move-object v3, v2

    .line 274
    .local v3, "callingPackage":Ljava/lang/String;
    :goto_18
    invoke-interface {v0, v3, v2}, Landroid/os/IDeviceIdentifiersPolicyService;->getSerialForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1c} :catch_1d

    return-object v2

    .line 275
    .end local v1    # "application":Landroid/app/Application;
    .end local v3    # "callingPackage":Ljava/lang/String;
    :catch_1d
    move-exception v1

    .line 276
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 278
    .end local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "unknown"

    return-object v1
.end method

.method private static greylist getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "property"    # Ljava/lang/String;

    .line 2007
    const-string/jumbo v0, "unknown"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getStringList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 2022
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2023
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2024
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    return-object v1

    .line 2026
    :cond_e
    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getVendorDeviceIdProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "property"    # Ljava/lang/String;

    .line 2015
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    .line 2016
    const-string/jumbo v1, "ro.product.%s_for_attestation"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2015
    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2017
    .local v0, "attestProp":Ljava/lang/String;
    const-string/jumbo v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 2018
    const-string/jumbo v1, "ro.product.vendor.%s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    :cond_28
    move-object v1, v0

    .line 2017
    :goto_29
    return-object v1
.end method

.method public static blacklist is64BitAbi(Ljava/lang/String;)Z
    .registers 2
    .param p0, "abi"    # Ljava/lang/String;

    .line 310
    invoke-static {p0}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isBitSet(Ljava/util/List;I)Z
    .registers 8
    .param p1, "bitIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;I)Z"
        }
    .end annotation

    .line 1689
    .local p0, "bitsetLongArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    if-gez p1, :cond_4

    .line 1690
    return v0

    .line 1692
    :cond_4
    shr-int/lit8 v1, p1, 0x6

    .line 1693
    .local v1, "arrayIndex":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v1, :cond_d

    .line 1694
    return v0

    .line 1696
    :cond_d
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_22

    const/4 v0, 0x1

    :cond_22
    return v0
.end method

.method public static greylist-max-o isBuildConsistent()Z
    .registers 11

    .line 1770
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 1772
    :cond_6
    sget-boolean v0, Landroid/os/Build;->IS_TREBLE_ENABLED:Z

    const/4 v2, 0x0

    const-string v3, "Build"

    if-eqz v0, :cond_32

    .line 1773
    invoke-static {}, Landroid/os/VintfObject;->verifyBuildAtBoot()I

    move-result v0

    .line 1775
    .local v0, "result":I
    if-eqz v0, :cond_2d

    .line 1776
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Vendor interface is incompatible, error="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1777
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1776
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    :cond_2d
    if-nez v0, :cond_30

    goto :goto_31

    :cond_30
    move v1, v2

    :goto_31
    return v1

    .line 1783
    .end local v0    # "result":I
    :cond_32
    const-string/jumbo v0, "ro.system.build.fingerprint"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1784
    .local v0, "system":Ljava/lang/String;
    const-string/jumbo v4, "ro.vendor.build.fingerprint"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1785
    .local v4, "vendor":Ljava/lang/String;
    const-string/jumbo v5, "ro.bootimage.build.fingerprint"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1786
    .local v5, "bootimage":Ljava/lang/String;
    const-string/jumbo v6, "ro.build.expect.bootloader"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1787
    .local v6, "requiredBootloader":Ljava/lang/String;
    const-string/jumbo v7, "ro.bootloader"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1788
    .local v7, "currentBootloader":Ljava/lang/String;
    const-string/jumbo v8, "ro.build.expect.baseband"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1790
    .local v8, "requiredRadio":Ljava/lang/String;
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->baseband_version()Ljava/util/List;

    move-result-object v9

    .line 1789
    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/Build;->joinListOrElse(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1792
    .local v9, "currentRadio":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_72

    .line 1793
    const-string v1, "Required ro.system.build.fingerprint is empty!"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    return v2

    .line 1797
    :cond_72
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9f

    .line 1798
    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9f

    .line 1799
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Mismatched fingerprints; system reported "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, " but vendor reported "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    return v2

    .line 1831
    :cond_9f
    return v1
.end method

.method public static blacklist isDebuggable()Z
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1955
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    return v0
.end method

.method private static blacklist joinListOrElse(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "defaultValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2040
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/os/Build$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/os/Build$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 2041
    const-string v1, ","

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2042
    .local v0, "ret":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21

    move-object v1, p1

    goto :goto_22

    :cond_21
    move-object v1, v0

    :goto_22
    return-object v1
.end method

.method static synthetic blacklist lambda$joinListOrElse$0(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "elem"    # Ljava/lang/Object;

    .line 2040
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    return-object v0
.end method

.method public static blacklist parseFullVersion(Ljava/lang/String;)I
    .registers 7
    .param p0, "version"    # Ljava/lang/String;

    .line 1558
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1560
    .local v0, "index":I
    const/4 v1, 0x0

    .line 1562
    .local v1, "minor":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_f

    .line 1563
    :try_start_a
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, "major":I
    goto :goto_23

    .line 1565
    .end local v2    # "major":I
    :cond_f
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1566
    .restart local v2    # "major":I
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v1, v3

    .line 1568
    :goto_23
    if-ltz v2, :cond_4f

    .line 1571
    const/16 v3, 0x53e2

    if-ge v2, v3, :cond_46

    .line 1574
    if-ltz v1, :cond_3d

    .line 1577
    const v3, 0x186a0

    if-ge v1, v3, :cond_34

    .line 1584
    nop

    .line 1585
    mul-int/2addr v3, v2

    add-int/2addr v3, v1

    return v3

    .line 1578
    :cond_34
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string/jumbo v4, "minor version too large, must be less than 100000"

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .end local v0    # "index":I
    .end local v1    # "minor":I
    .end local p0    # "version":Ljava/lang/String;
    throw v3

    .line 1575
    .restart local v0    # "index":I
    .restart local v1    # "minor":I
    .restart local p0    # "version":Ljava/lang/String;
    :cond_3d
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string/jumbo v4, "negative minor version"

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .end local v0    # "index":I
    .end local v1    # "minor":I
    .end local p0    # "version":Ljava/lang/String;
    throw v3

    .line 1572
    .restart local v0    # "index":I
    .restart local v1    # "minor":I
    .restart local p0    # "version":Ljava/lang/String;
    :cond_46
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string/jumbo v4, "major version too large, must be less than 21474"

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .end local v0    # "index":I
    .end local v1    # "minor":I
    .end local p0    # "version":Ljava/lang/String;
    throw v3

    .line 1569
    .restart local v0    # "index":I
    .restart local v1    # "minor":I
    .restart local p0    # "version":Ljava/lang/String;
    :cond_4f
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string/jumbo v4, "negative major version"

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .end local v0    # "index":I
    .end local v1    # "minor":I
    .end local p0    # "version":Ljava/lang/String;
    throw v3
    :try_end_58
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_58} :catch_58

    .line 1581
    .end local v2    # "major":I
    .restart local v0    # "index":I
    .restart local v1    # "minor":I
    .restart local p0    # "version":Ljava/lang/String;
    :catch_58
    move-exception v2

    .line 1582
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to parse \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' as a major.minor version code"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
