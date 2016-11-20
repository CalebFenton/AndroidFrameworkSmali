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

.field public static final IS_EMULATOR:Z

.field public static final MANUFACTURER:Ljava/lang/String;

.field public static final MODEL:Ljava/lang/String;

.field public static final PERMISSIONS_REVIEW_REQUIRED:Z

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
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 39
    const-string/jumbo v1, "ro.build.id"

    #@5
    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    sput-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    #@b
    .line 42
    const-string/jumbo v1, "ro.build.display.id"

    #@e
    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    sput-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    #@14
    .line 45
    const-string/jumbo v1, "ro.product.name"

    #@17
    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    sput-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    #@1d
    .line 48
    const-string/jumbo v1, "ro.product.device"

    #@20
    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    sput-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    #@26
    .line 51
    const-string/jumbo v1, "ro.product.board"

    #@29
    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    sput-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    #@2f
    .line 70
    const-string/jumbo v1, "ro.product.manufacturer"

    #@32
    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    sput-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    #@38
    .line 73
    const-string/jumbo v1, "ro.product.brand"

    #@3b
    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    sput-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    #@41
    .line 76
    const-string/jumbo v1, "ro.product.model"

    #@44
    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    sput-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    #@4a
    .line 79
    const-string/jumbo v1, "ro.bootloader"

    #@4d
    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    sput-object v1, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    #@53
    .line 90
    const-string/jumbo v1, "gsm.version.baseband"

    #@56
    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@59
    move-result-object v1

    #@5a
    sput-object v1, Landroid/os/Build;->RADIO:Ljava/lang/String;

    #@5c
    .line 93
    const-string/jumbo v1, "ro.hardware"

    #@5f
    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    sput-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    #@65
    .line 99
    const-string/jumbo v1, "ro.kernel.qemu"

    #@68
    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@6b
    move-result-object v1

    #@6c
    const-string/jumbo v4, "1"

    #@6f
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@72
    move-result v1

    #@73
    sput-boolean v1, Landroid/os/Build;->IS_EMULATOR:Z

    #@75
    .line 102
    const-string/jumbo v1, "ro.serialno"

    #@78
    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@7b
    move-result-object v1

    #@7c
    sput-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    #@7e
    .line 110
    const-string/jumbo v1, "ro.product.cpu.abilist"

    #@81
    const-string/jumbo v4, ","

    #@84
    invoke-static {v1, v4}, Landroid/os/Build;->getStringList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@87
    move-result-object v1

    #@88
    sput-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    #@8a
    .line 119
    const-string/jumbo v1, "ro.product.cpu.abilist32"

    #@8d
    const-string/jumbo v4, ","

    #@90
    invoke-static {v1, v4}, Landroid/os/Build;->getStringList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@93
    move-result-object v1

    #@94
    .line 118
    sput-object v1, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    #@96
    .line 128
    const-string/jumbo v1, "ro.product.cpu.abilist64"

    #@99
    const-string/jumbo v4, ","

    #@9c
    invoke-static {v1, v4}, Landroid/os/Build;->getStringList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@9f
    move-result-object v1

    #@a0
    .line 127
    sput-object v1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    #@a2
    .line 138
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@a5
    move-result-object v1

    #@a6
    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->is64Bit()Z

    #@a9
    move-result v1

    #@aa
    if-eqz v1, :cond_0

    #@ac
    .line 139
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    #@ae
    .line 144
    .local v0, "abiList":[Ljava/lang/String;
    :goto_0
    aget-object v1, v0, v3

    #@b0
    sput-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    #@b2
    .line 145
    array-length v1, v0

    #@b3
    if-le v1, v2, :cond_1

    #@b5
    .line 146
    aget-object v1, v0, v2

    #@b7
    sput-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    #@b9
    .line 731
    :goto_1
    const-string/jumbo v1, "ro.build.type"

    #@bc
    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@bf
    move-result-object v1

    #@c0
    sput-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    #@c2
    .line 734
    const-string/jumbo v1, "ro.build.tags"

    #@c5
    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@c8
    move-result-object v1

    #@c9
    sput-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    #@cb
    .line 737
    invoke-static {}, Landroid/os/Build;->deriveFingerprint()Ljava/lang/String;

    #@ce
    move-result-object v1

    #@cf
    sput-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    #@d1
    .line 839
    const-string/jumbo v1, "ro.build.date.utc"

    #@d4
    invoke-static {v1}, Landroid/os/Build;->getLong(Ljava/lang/String;)J

    #@d7
    move-result-wide v4

    #@d8
    const-wide/16 v6, 0x3e8

    #@da
    mul-long/2addr v4, v6

    #@db
    sput-wide v4, Landroid/os/Build;->TIME:J

    #@dd
    .line 840
    const-string/jumbo v1, "ro.build.user"

    #@e0
    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@e3
    move-result-object v1

    #@e4
    sput-object v1, Landroid/os/Build;->USER:Ljava/lang/String;

    #@e6
    .line 841
    const-string/jumbo v1, "ro.build.host"

    #@e9
    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@ec
    move-result-object v1

    #@ed
    sput-object v1, Landroid/os/Build;->HOST:Ljava/lang/String;

    #@ef
    .line 848
    const-string/jumbo v1, "ro.debuggable"

    #@f2
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@f5
    move-result v1

    #@f6
    if-ne v1, v2, :cond_2

    #@f8
    move v1, v2

    #@f9
    .line 847
    :goto_2
    sput-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@fb
    .line 861
    const-string/jumbo v1, "ro.permission_review_required"

    #@fe
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@101
    move-result v1

    #@102
    if-ne v1, v2, :cond_3

    #@104
    .line 860
    :goto_3
    sput-boolean v2, Landroid/os/Build;->PERMISSIONS_REVIEW_REQUIRED:Z

    #@106
    .line 32
    return-void

    #@107
    .line 141
    .end local v0    # "abiList":[Ljava/lang/String;
    :cond_0
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    #@109
    .restart local v0    # "abiList":[Ljava/lang/String;
    goto :goto_0

    #@10a
    .line 148
    :cond_1
    const-string/jumbo v1, ""

    #@10d
    sput-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    #@10f
    goto :goto_1

    #@110
    :cond_2
    move v1, v3

    #@111
    .line 848
    goto :goto_2

    #@112
    :cond_3
    move v2, v3

    #@113
    .line 861
    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
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
    .line 744
    const-string/jumbo v1, "ro.build.fingerprint"

    #@7
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 745
    .local v0, "finger":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 746
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
    .line 747
    const-string/jumbo v2, "ro.product.name"

    #@28
    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    .line 746
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 748
    const-string/jumbo v2, "ro.product.device"

    #@37
    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    .line 746
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    .line 749
    const-string/jumbo v2, "ro.build.version.release"

    #@46
    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    .line 746
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    .line 750
    const-string/jumbo v2, "ro.build.id"

    #@55
    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    .line 746
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    .line 751
    const-string/jumbo v2, "ro.build.version.incremental"

    #@64
    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@67
    move-result-object v2

    #@68
    .line 746
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v1

    #@6c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v1

    #@70
    .line 752
    const-string/jumbo v2, "ro.build.type"

    #@73
    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@76
    move-result-object v2

    #@77
    .line 746
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v1

    #@7b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v1

    #@7f
    .line 753
    const-string/jumbo v2, "ro.build.tags"

    #@82
    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@85
    move-result-object v2

    #@86
    .line 746
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v1

    #@8a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v0

    #@8e
    .line 755
    :cond_0
    return-object v0
.end method

.method public static ensureFingerprintProperty()V
    .locals 3

    #@0
    .prologue
    .line 766
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
    .line 768
    :try_start_0
    const-string/jumbo v1, "ro.build.fingerprint"

    #@10
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    #@12
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 765
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    return-void

    #@16
    .line 769
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_0
    move-exception v0

    #@17
    .line 770
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
    .line 886
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
    .line 887
    :catch_0
    move-exception v0

    #@a
    .line 888
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v2, -0x1

    #@c
    return-wide v2
.end method

.method public static getRadioVersion()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 868
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
    .line 872
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
    .line 876
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 877
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 878
    const/4 v1, 0x0

    #@b
    new-array v1, v1, [Ljava/lang/String;

    #@d
    return-object v1

    #@e
    .line 880
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
    const/4 v9, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 786
    const-string/jumbo v7, "eng"

    #@5
    sget-object v8, Landroid/os/Build;->TYPE:Ljava/lang/String;

    #@7
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v7

    #@b
    if-eqz v7, :cond_0

    #@d
    return v9

    #@e
    .line 788
    :cond_0
    const-string/jumbo v7, "ro.build.fingerprint"

    #@11
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v5

    #@15
    .line 789
    .local v5, "system":Ljava/lang/String;
    const-string/jumbo v7, "ro.vendor.build.fingerprint"

    #@18
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v6

    #@1c
    .line 790
    .local v6, "vendor":Ljava/lang/String;
    const-string/jumbo v7, "ro.bootimage.build.fingerprint"

    #@1f
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    .line 791
    .local v0, "bootimage":Ljava/lang/String;
    const-string/jumbo v7, "ro.build.expect.bootloader"

    #@26
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    .line 792
    .local v3, "requiredBootloader":Ljava/lang/String;
    const-string/jumbo v7, "ro.bootloader"

    #@2d
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    .line 793
    .local v1, "currentBootloader":Ljava/lang/String;
    const-string/jumbo v7, "ro.build.expect.baseband"

    #@34
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    .line 794
    .local v4, "requiredRadio":Ljava/lang/String;
    const-string/jumbo v7, "gsm.version.baseband"

    #@3b
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    .line 796
    .local v2, "currentRadio":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@42
    move-result v7

    #@43
    if-eqz v7, :cond_1

    #@45
    .line 797
    const-string/jumbo v7, "Build"

    #@48
    const-string/jumbo v8, "Required ro.build.fingerprint is empty!"

    #@4b
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    .line 798
    return v10

    #@4f
    .line 801
    :cond_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@52
    move-result v7

    #@53
    if-nez v7, :cond_2

    #@55
    .line 802
    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@58
    move-result v7

    #@59
    if-nez v7, :cond_2

    #@5b
    .line 803
    const-string/jumbo v7, "Build"

    #@5e
    new-instance v8, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v9, "Mismatched fingerprints; system reported "

    #@66
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v8

    #@6a
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v8

    #@6e
    .line 804
    const-string/jumbo v9, " but vendor reported "

    #@71
    .line 803
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v8

    #@75
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v8

    #@79
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v8

    #@7d
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@80
    .line 805
    return v10

    #@81
    .line 835
    :cond_2
    return v9
.end method
