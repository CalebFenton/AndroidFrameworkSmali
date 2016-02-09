.class public Landroid/os/Build;
.super Ljava/lang/Object;
.source "Build.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Build$VERSION;,
        Landroid/os/Build$VERSION_CODES;
    }
.end annotation


# static fields
.field public static final BOARD:Ljava/lang/String;

.field public static final BOOTLOADER:Ljava/lang/String;

.field public static final BRAND:Ljava/lang/String;

.field public static final CPU_ABI:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CPU_ABI2:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEVICE:Ljava/lang/String;

.field public static final DISPLAY:Ljava/lang/String;

.field public static final FINGERPRINT:Ljava/lang/String;

.field public static final HARDWARE:Ljava/lang/String;

.field public static final HOST:Ljava/lang/String;

.field public static final ID:Ljava/lang/String;

.field public static final IS_DEBUGGABLE:Z

.field public static final MANUFACTURER:Ljava/lang/String;

.field public static final MODEL:Ljava/lang/String;

.field public static final PRODUCT:Ljava/lang/String;

.field public static final RADIO:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SERIAL:Ljava/lang/String;

.field public static final SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

.field public static final SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

.field public static final SUPPORTED_ABIS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Build"

.field public static final TAGS:Ljava/lang/String;

.field public static final TIME:J

.field public static final TYPE:Ljava/lang/String;

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final USER:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/os/Build;->getStringList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "property"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 38
    const-string/jumbo v3, "ro.build.id"

    #@5
    invoke-static {v3}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    sput-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    #@b
    .line 41
    const-string/jumbo v3, "ro.build.display.id"

    #@e
    invoke-static {v3}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    sput-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    #@14
    .line 44
    const-string/jumbo v3, "ro.product.name"

    #@17
    invoke-static {v3}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    sput-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    #@1d
    .line 47
    const-string/jumbo v3, "ro.product.device"

    #@20
    invoke-static {v3}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    sput-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    #@26
    .line 50
    const-string/jumbo v3, "ro.product.board"

    #@29
    invoke-static {v3}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    sput-object v3, Landroid/os/Build;->BOARD:Ljava/lang/String;

    #@2f
    .line 69
    const-string/jumbo v3, "ro.product.manufacturer"

    #@32
    invoke-static {v3}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    sput-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    #@38
    .line 72
    const-string/jumbo v3, "ro.product.brand"

    #@3b
    invoke-static {v3}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    sput-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    #@41
    .line 75
    const-string/jumbo v3, "ro.product.model"

    #@44
    invoke-static {v3}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    sput-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    #@4a
    .line 78
    const-string/jumbo v3, "ro.bootloader"

    #@4d
    invoke-static {v3}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@50
    move-result-object v3

    #@51
    sput-object v3, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    #@53
    .line 89
    const-string/jumbo v3, "gsm.version.baseband"

    #@56
    invoke-static {v3}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    sput-object v3, Landroid/os/Build;->RADIO:Ljava/lang/String;

    #@5c
    .line 92
    const-string/jumbo v3, "ro.hardware"

    #@5f
    invoke-static {v3}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@62
    move-result-object v3

    #@63
    sput-object v3, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    #@65
    .line 95
    const-string/jumbo v3, "ro.serialno"

    #@68
    invoke-static {v3}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@6b
    move-result-object v3

    #@6c
    sput-object v3, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    #@6e
    .line 103
    const-string/jumbo v3, "ro.product.cpu.abilist"

    #@71
    const-string/jumbo v4, ","

    #@74
    invoke-static {v3, v4}, Landroid/os/Build;->getStringList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@77
    move-result-object v3

    #@78
    sput-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    #@7a
    .line 112
    const-string/jumbo v3, "ro.product.cpu.abilist32"

    #@7d
    const-string/jumbo v4, ","

    #@80
    invoke-static {v3, v4}, Landroid/os/Build;->getStringList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@83
    move-result-object v3

    #@84
    .line 111
    sput-object v3, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    #@86
    .line 121
    const-string/jumbo v3, "ro.product.cpu.abilist64"

    #@89
    const-string/jumbo v4, ","

    #@8c
    invoke-static {v3, v4}, Landroid/os/Build;->getStringList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@8f
    move-result-object v3

    #@90
    .line 120
    sput-object v3, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    #@92
    .line 131
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@95
    move-result-object v3

    #@96
    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->is64Bit()Z

    #@99
    move-result v3

    #@9a
    if-eqz v3, :cond_0

    #@9c
    .line 132
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    #@9e
    .line 137
    .local v0, "abiList":[Ljava/lang/String;
    :goto_0
    aget-object v3, v0, v2

    #@a0
    sput-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    #@a2
    .line 138
    array-length v3, v0

    #@a3
    if-le v3, v1, :cond_1

    #@a5
    .line 139
    aget-object v3, v0, v1

    #@a7
    sput-object v3, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    #@a9
    .line 640
    :goto_1
    const-string/jumbo v3, "ro.build.type"

    #@ac
    invoke-static {v3}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@af
    move-result-object v3

    #@b0
    sput-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    #@b2
    .line 643
    const-string/jumbo v3, "ro.build.tags"

    #@b5
    invoke-static {v3}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@b8
    move-result-object v3

    #@b9
    sput-object v3, Landroid/os/Build;->TAGS:Ljava/lang/String;

    #@bb
    .line 646
    invoke-static {}, Landroid/os/Build;->deriveFingerprint()Ljava/lang/String;

    #@be
    move-result-object v3

    #@bf
    sput-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    #@c1
    .line 745
    const-string/jumbo v3, "ro.build.date.utc"

    #@c4
    invoke-static {v3}, Landroid/os/Build;->getLong(Ljava/lang/String;)J

    #@c7
    move-result-wide v4

    #@c8
    const-wide/16 v6, 0x3e8

    #@ca
    mul-long/2addr v4, v6

    #@cb
    sput-wide v4, Landroid/os/Build;->TIME:J

    #@cd
    .line 746
    const-string/jumbo v3, "ro.build.user"

    #@d0
    invoke-static {v3}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@d3
    move-result-object v3

    #@d4
    sput-object v3, Landroid/os/Build;->USER:Ljava/lang/String;

    #@d6
    .line 747
    const-string/jumbo v3, "ro.build.host"

    #@d9
    invoke-static {v3}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@dc
    move-result-object v3

    #@dd
    sput-object v3, Landroid/os/Build;->HOST:Ljava/lang/String;

    #@df
    .line 754
    const-string/jumbo v3, "ro.debuggable"

    #@e2
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@e5
    move-result v3

    #@e6
    if-ne v3, v1, :cond_2

    #@e8
    .line 753
    :goto_2
    sput-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@ea
    .line 31
    return-void

    #@eb
    .line 134
    .end local v0    # "abiList":[Ljava/lang/String;
    :cond_0
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    #@ed
    .restart local v0    # "abiList":[Ljava/lang/String;
    goto :goto_0

    #@ee
    .line 141
    :cond_1
    const-string/jumbo v3, ""

    #@f1
    sput-object v3, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    #@f3
    goto :goto_1

    #@f4
    :cond_2
    move v1, v2

    #@f5
    .line 754
    goto :goto_2
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

.method private static deriveFingerprint()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x3a

    #@2
    const/16 v3, 0x2f

    #@4
    .line 653
    const-string/jumbo v1, "ro.build.fingerprint"

    #@7
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 654
    .local v0, "finger":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 655
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "ro.product.brand"

    #@19
    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 656
    const-string/jumbo v2, "ro.product.name"

    #@28
    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    .line 655
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 657
    const-string/jumbo v2, "ro.product.device"

    #@37
    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    .line 655
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    .line 658
    const-string/jumbo v2, "ro.build.version.release"

    #@46
    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    .line 655
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    .line 659
    const-string/jumbo v2, "ro.build.id"

    #@55
    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    .line 655
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    .line 660
    const-string/jumbo v2, "ro.build.version.incremental"

    #@64
    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@67
    move-result-object v2

    #@68
    .line 655
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v1

    #@6c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v1

    #@70
    .line 661
    const-string/jumbo v2, "ro.build.type"

    #@73
    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@76
    move-result-object v2

    #@77
    .line 655
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v1

    #@7b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v1

    #@7f
    .line 662
    const-string/jumbo v2, "ro.build.tags"

    #@82
    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@85
    move-result-object v2

    #@86
    .line 655
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v1

    #@8a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v0

    #@8e
    .line 664
    :cond_0
    return-object v0
.end method

.method public static ensureFingerprintProperty()V
    .locals 3

    #@0
    .prologue
    .line 675
    const-string/jumbo v1, "ro.build.fingerprint"

    #@3
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 677
    :try_start_0
    const-string/jumbo v1, "ro.build.fingerprint"

    #@10
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    #@12
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 674
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    return-void

    #@16
    .line 678
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_0
    move-exception v0

    #@17
    .line 679
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "Build"

    #@1a
    const-string/jumbo v2, "Failed to set fingerprint property"

    #@1d
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@20
    goto :goto_0
.end method

.method private static getLong(Ljava/lang/String;)J
    .locals 4
    .param p0, "property"    # Ljava/lang/String;

    #@0
    .prologue
    .line 779
    :try_start_0
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-wide v2

    #@8
    return-wide v2

    #@9
    .line 780
    :catch_0
    move-exception v0

    #@a
    .line 781
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v2, -0x1

    #@c
    return-wide v2
.end method

.method public static getRadioVersion()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 761
    const-string/jumbo v0, "gsm.version.baseband"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "property"    # Ljava/lang/String;

    #@0
    .prologue
    .line 765
    const-string/jumbo v0, "unknown"

    #@3
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method private static getStringList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    #@0
    .prologue
    .line 769
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 770
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 771
    const/4 v1, 0x0

    #@b
    new-array v1, v1, [Ljava/lang/String;

    #@d
    return-object v1

    #@e
    .line 773
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    return-object v1
.end method

.method public static isBuildConsistent()Z
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 694
    const-string/jumbo v7, "ro.build.fingerprint"

    #@4
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v5

    #@8
    .line 695
    .local v5, "system":Ljava/lang/String;
    const-string/jumbo v7, "ro.vendor.build.fingerprint"

    #@b
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v6

    #@f
    .line 696
    .local v6, "vendor":Ljava/lang/String;
    const-string/jumbo v7, "ro.bootimage.build.fingerprint"

    #@12
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    .line 697
    .local v0, "bootimage":Ljava/lang/String;
    const-string/jumbo v7, "ro.build.expect.bootloader"

    #@19
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    .line 698
    .local v3, "requiredBootloader":Ljava/lang/String;
    const-string/jumbo v7, "ro.bootloader"

    #@20
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    .line 699
    .local v1, "currentBootloader":Ljava/lang/String;
    const-string/jumbo v7, "ro.build.expect.baseband"

    #@27
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    .line 700
    .local v4, "requiredRadio":Ljava/lang/String;
    const-string/jumbo v7, "gsm.version.baseband"

    #@2e
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    .line 702
    .local v2, "currentRadio":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@35
    move-result v7

    #@36
    if-eqz v7, :cond_0

    #@38
    .line 703
    const-string/jumbo v7, "Build"

    #@3b
    const-string/jumbo v8, "Required ro.build.fingerprint is empty!"

    #@3e
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 704
    return v10

    #@42
    .line 707
    :cond_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@45
    move-result v7

    #@46
    if-nez v7, :cond_1

    #@48
    .line 708
    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@4b
    move-result v7

    #@4c
    if-nez v7, :cond_1

    #@4e
    .line 709
    const-string/jumbo v7, "Build"

    #@51
    new-instance v8, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v9, "Mismatched fingerprints; system reported "

    #@59
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v8

    #@5d
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v8

    #@61
    .line 710
    const-string/jumbo v9, " but vendor reported "

    #@64
    .line 709
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v8

    #@68
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v8

    #@6c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v8

    #@70
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@73
    .line 711
    return v10

    #@74
    .line 741
    :cond_1
    const/4 v7, 0x1

    #@75
    return v7
.end method
