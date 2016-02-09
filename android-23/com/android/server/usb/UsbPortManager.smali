.class public Lcom/android/server/usb/UsbPortManager;
.super Ljava/lang/Object;
.source "UsbPortManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbPortManager$PortInfo;,
        Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;,
        Lcom/android/server/usb/UsbPortManager$1;,
        Lcom/android/server/usb/UsbPortManager$2;
    }
.end annotation


# static fields
.field private static final COMBO_SINK_DEVICE:I

.field private static final COMBO_SINK_HOST:I

.field private static final COMBO_SOURCE_DEVICE:I

.field private static final COMBO_SOURCE_HOST:I

.field private static final MSG_UPDATE_PORTS:I = 0x1

.field private static final PORT_DATA_ROLE_DEVICE:Ljava/lang/String; = "device"

.field private static final PORT_DATA_ROLE_HOST:Ljava/lang/String; = "host"

.field private static final PORT_MODE_DFP:Ljava/lang/String; = "dfp"

.field private static final PORT_MODE_UFP:Ljava/lang/String; = "ufp"

.field private static final PORT_POWER_ROLE_SINK:Ljava/lang/String; = "sink"

.field private static final PORT_POWER_ROLE_SOURCE:Ljava/lang/String; = "source"

.field private static final SYSFS_CLASS:Ljava/lang/String; = "/sys/class/dual_role_usb"

.field private static final SYSFS_PORT_DATA_ROLE:Ljava/lang/String; = "data_role"

.field private static final SYSFS_PORT_MODE:Ljava/lang/String; = "mode"

.field private static final SYSFS_PORT_POWER_ROLE:Ljava/lang/String; = "power_role"

.field private static final SYSFS_PORT_SUPPORTED_MODES:Ljava/lang/String; = "supported_modes"

.field private static final TAG:Ljava/lang/String; = "UsbPortManager"

.field private static final UEVENT_FILTER:Ljava/lang/String; = "SUBSYSTEM=dual_role_usb"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHaveKernelSupport:Z

.field private final mLock:Ljava/lang/Object;

.field private final mPorts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/usb/UsbPortManager$PortInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSimulatedPorts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUEventObserver:Landroid/os/UEventObserver;


# direct methods
.method static synthetic -get0(Lcom/android/server/usb/UsbPortManager;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/usb/UsbPortManager;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/usb/UsbPortManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/usb/UsbPortManager;->scheduleUpdatePorts()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/usb/UsbPortManager;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 0
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    const/4 v1, 0x1

    #@2
    .line 94
    invoke-static {v1, v1}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    #@5
    move-result v0

    #@6
    .line 93
    sput v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    #@8
    .line 96
    invoke-static {v1, v2}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    #@b
    move-result v0

    #@c
    .line 95
    sput v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_DEVICE:I

    #@e
    .line 98
    invoke-static {v2, v1}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    #@11
    move-result v0

    #@12
    .line 97
    sput v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_HOST:I

    #@14
    .line 100
    invoke-static {v2, v2}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    #@17
    move-result v0

    #@18
    .line 99
    sput v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_DEVICE:I

    #@1a
    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 109
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    #@a
    .line 115
    new-instance v0, Landroid/util/ArrayMap;

    #@c
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    #@11
    .line 119
    new-instance v0, Landroid/util/ArrayMap;

    #@13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@16
    .line 118
    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    #@18
    .line 664
    new-instance v0, Lcom/android/server/usb/UsbPortManager$1;

    #@1a
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    #@21
    move-result-object v1

    #@22
    invoke-direct {v0, p0, v1}, Lcom/android/server/usb/UsbPortManager$1;-><init>(Lcom/android/server/usb/UsbPortManager;Landroid/os/Looper;)V

    #@25
    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    #@27
    .line 678
    new-instance v0, Lcom/android/server/usb/UsbPortManager$2;

    #@29
    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbPortManager$2;-><init>(Lcom/android/server/usb/UsbPortManager;)V

    #@2c
    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mUEventObserver:Landroid/os/UEventObserver;

    #@2e
    .line 122
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    #@30
    .line 123
    new-instance v0, Ljava/io/File;

    #@32
    const-string/jumbo v1, "/sys/class/dual_role_usb"

    #@35
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@38
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@3b
    move-result v0

    #@3c
    iput-boolean v0, p0, Lcom/android/server/usb/UsbPortManager;->mHaveKernelSupport:Z

    #@3e
    .line 121
    return-void
.end method

.method private addOrUpdatePortLocked(Ljava/lang/String;IIZIZIZLcom/android/internal/util/IndentingPrintWriter;)V
    .locals 9
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "supportedModes"    # I
    .param p3, "currentMode"    # I
    .param p4, "canChangeMode"    # Z
    .param p5, "currentPowerRole"    # I
    .param p6, "canChangePowerRole"    # Z
    .param p7, "currentDataRole"    # I
    .param p8, "canChangeDataRole"    # Z
    .param p9, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 460
    const/4 v2, 0x3

    #@1
    if-eq p2, v2, :cond_0

    #@3
    .line 461
    const/4 p4, 0x0

    #@4
    .line 462
    .local p4, "canChangeMode":Z
    if-eqz p3, :cond_0

    #@6
    if-eq p3, p2, :cond_0

    #@8
    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Ignoring inconsistent current mode from USB port driver: supportedModes="

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    .line 464
    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    .line 463
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    .line 465
    const-string/jumbo v3, ", currentMode="

    #@1f
    .line 463
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 465
    invoke-static {p3}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    .line 463
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    const/4 v3, 0x5

    #@30
    move-object/from16 v0, p9

    #@32
    invoke-static {v3, v0, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    #@35
    .line 466
    const/4 p3, 0x0

    #@36
    .line 473
    .end local p4    # "canChangeMode":Z
    :cond_0
    move/from16 v0, p7

    #@38
    invoke-static {p5, v0}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    #@3b
    move-result v8

    #@3c
    .line 475
    .local v8, "supportedRoleCombinations":I
    if-eqz p3, :cond_1

    #@3e
    if-eqz p5, :cond_1

    #@40
    if-eqz p7, :cond_1

    #@42
    .line 476
    if-eqz p6, :cond_2

    #@44
    if-eqz p8, :cond_2

    #@46
    .line 480
    sget v2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    #@48
    sget v3, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_DEVICE:I

    #@4a
    or-int/2addr v2, v3

    #@4b
    .line 481
    sget v3, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_HOST:I

    #@4d
    .line 480
    or-int/2addr v2, v3

    #@4e
    .line 481
    sget v3, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_DEVICE:I

    #@50
    .line 480
    or-int/2addr v2, v3

    #@51
    .line 479
    or-int/2addr v8, v2

    #@52
    .line 505
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    #@54
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@57
    move-result-object v1

    #@58
    check-cast v1, Lcom/android/server/usb/UsbPortManager$PortInfo;

    #@5a
    .line 506
    .local v1, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    if-nez v1, :cond_5

    #@5c
    .line 507
    new-instance v1, Lcom/android/server/usb/UsbPortManager$PortInfo;

    #@5e
    .end local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    invoke-direct {v1, p1, p2}, Lcom/android/server/usb/UsbPortManager$PortInfo;-><init>(Ljava/lang/String;I)V

    #@61
    .restart local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    move v2, p3

    #@62
    move v3, p4

    #@63
    move v4, p5

    #@64
    move v5, p6

    #@65
    move/from16 v6, p7

    #@67
    move/from16 v7, p8

    #@69
    .line 508
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usb/UsbPortManager$PortInfo;->setStatus(IZIZIZI)Z

    #@6c
    .line 512
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    #@6e
    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@71
    .line 457
    :goto_1
    return-void

    #@72
    .line 482
    .end local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :cond_2
    if-eqz p6, :cond_3

    #@74
    .line 486
    const/4 v2, 0x1

    #@75
    .line 485
    move/from16 v0, p7

    #@77
    invoke-static {v2, v0}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    #@7a
    move-result v2

    #@7b
    or-int/2addr v8, v2

    #@7c
    .line 488
    const/4 v2, 0x2

    #@7d
    .line 487
    move/from16 v0, p7

    #@7f
    invoke-static {v2, v0}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    #@82
    move-result v2

    #@83
    or-int/2addr v8, v2

    #@84
    goto :goto_0

    #@85
    .line 489
    :cond_3
    if-eqz p8, :cond_4

    #@87
    .line 493
    const/4 v2, 0x1

    #@88
    .line 492
    invoke-static {p5, v2}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    #@8b
    move-result v2

    #@8c
    or-int/2addr v8, v2

    #@8d
    .line 495
    const/4 v2, 0x2

    #@8e
    .line 494
    invoke-static {p5, v2}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    #@91
    move-result v2

    #@92
    or-int/2addr v8, v2

    #@93
    goto :goto_0

    #@94
    .line 496
    :cond_4
    if-eqz p4, :cond_1

    #@96
    .line 500
    sget v2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    #@98
    sget v3, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_DEVICE:I

    #@9a
    or-int/2addr v2, v3

    #@9b
    or-int/2addr v8, v2

    #@9c
    goto :goto_0

    #@9d
    .line 515
    .restart local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :cond_5
    iget-object v2, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    #@9f
    invoke-virtual {v2}, Landroid/hardware/usb/UsbPort;->getSupportedModes()I

    #@a2
    move-result v2

    #@a3
    if-eq p2, v2, :cond_6

    #@a5
    .line 516
    new-instance v2, Ljava/lang/StringBuilder;

    #@a7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@aa
    const-string/jumbo v3, "Ignoring inconsistent list of supported modes from USB port driver (should be immutable): previous="

    #@ad
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v2

    #@b1
    .line 519
    iget-object v3, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    #@b3
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPort;->getSupportedModes()I

    #@b6
    move-result v3

    #@b7
    .line 518
    invoke-static {v3}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    #@ba
    move-result-object v3

    #@bb
    .line 516
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v2

    #@bf
    .line 520
    const-string/jumbo v3, ", current="

    #@c2
    .line 516
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v2

    #@c6
    .line 520
    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    #@c9
    move-result-object v3

    #@ca
    .line 516
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v2

    #@ce
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v2

    #@d2
    const/4 v3, 0x5

    #@d3
    move-object/from16 v0, p9

    #@d5
    invoke-static {v3, v0, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    #@d8
    :cond_6
    move v2, p3

    #@d9
    move v3, p4

    #@da
    move v4, p5

    #@db
    move v5, p6

    #@dc
    move/from16 v6, p7

    #@de
    move/from16 v7, p8

    #@e0
    .line 523
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usb/UsbPortManager$PortInfo;->setStatus(IZIZIZI)Z

    #@e3
    move-result v2

    #@e4
    if-eqz v2, :cond_7

    #@e6
    .line 527
    const/4 v2, 0x1

    #@e7
    iput v2, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    #@e9
    goto :goto_1

    #@ea
    .line 529
    :cond_7
    const/4 v2, 0x2

    #@eb
    iput v2, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    #@ed
    goto :goto_1
.end method

.method private static canChangeDataRole(Ljava/io/File;)Z
    .locals 2
    .param p0, "portDir"    # Ljava/io/File;

    #@0
    .prologue
    .line 633
    new-instance v0, Ljava/io/File;

    #@2
    const-string/jumbo v1, "data_role"

    #@5
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@8
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method private static canChangeMode(Ljava/io/File;)Z
    .locals 2
    .param p0, "portDir"    # Ljava/io/File;

    #@0
    .prologue
    .line 625
    new-instance v0, Ljava/io/File;

    #@2
    const-string/jumbo v1, "mode"

    #@5
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@8
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method private static canChangePowerRole(Ljava/io/File;)Z
    .locals 2
    .param p0, "portDir"    # Ljava/io/File;

    #@0
    .prologue
    .line 629
    new-instance v0, Ljava/io/File;

    #@2
    const-string/jumbo v1, "power_role"

    #@5
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@8
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method private handlePortAddedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "USB port added: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    const/4 v1, 0x4

    #@15
    invoke-static {v1, p2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    #@18
    .line 536
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbPortManager;->sendPortChangedBroadcastLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;)V

    #@1b
    .line 534
    return-void
.end method

.method private handlePortChangedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "USB port changed: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    const/4 v1, 0x4

    #@15
    invoke-static {v1, p2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    #@18
    .line 541
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbPortManager;->sendPortChangedBroadcastLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;)V

    #@1b
    .line 539
    return-void
.end method

.method private handlePortRemovedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "USB port removed: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    const/4 v1, 0x4

    #@15
    invoke-static {v1, p2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    #@18
    .line 546
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbPortManager;->sendPortChangedBroadcastLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;)V

    #@1b
    .line 544
    return-void
.end method

.method private static logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p0, "priority"    # I
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 658
    const-string/jumbo v0, "UsbPortManager"

    #@3
    invoke-static {p0, v0, p2}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    #@6
    .line 659
    if-eqz p1, :cond_0

    #@8
    .line 660
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@b
    .line 657
    :cond_0
    return-void
.end method

.method private static readCurrentDataRole(Ljava/io/File;)I
    .locals 2
    .param p0, "portDir"    # Ljava/io/File;

    #@0
    .prologue
    .line 612
    const-string/jumbo v1, "data_role"

    #@3
    invoke-static {p0, v1}, Lcom/android/server/usb/UsbPortManager;->readFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 613
    .local v0, "contents":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@9
    .line 614
    const-string/jumbo v1, "host"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 615
    const/4 v1, 0x1

    #@13
    return v1

    #@14
    .line 617
    :cond_0
    const-string/jumbo v1, "device"

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 618
    const/4 v1, 0x2

    #@1e
    return v1

    #@1f
    .line 621
    :cond_1
    const/4 v1, 0x0

    #@20
    return v1
.end method

.method private static readCurrentMode(Ljava/io/File;)I
    .locals 2
    .param p0, "portDir"    # Ljava/io/File;

    #@0
    .prologue
    .line 586
    const-string/jumbo v1, "mode"

    #@3
    invoke-static {p0, v1}, Lcom/android/server/usb/UsbPortManager;->readFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 587
    .local v0, "contents":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@9
    .line 588
    const-string/jumbo v1, "dfp"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 589
    const/4 v1, 0x1

    #@13
    return v1

    #@14
    .line 591
    :cond_0
    const-string/jumbo v1, "ufp"

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 592
    const/4 v1, 0x2

    #@1e
    return v1

    #@1f
    .line 595
    :cond_1
    const/4 v1, 0x0

    #@20
    return v1
.end method

.method private static readCurrentPowerRole(Ljava/io/File;)I
    .locals 2
    .param p0, "portDir"    # Ljava/io/File;

    #@0
    .prologue
    .line 599
    const-string/jumbo v1, "power_role"

    #@3
    invoke-static {p0, v1}, Lcom/android/server/usb/UsbPortManager;->readFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 600
    .local v0, "contents":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@9
    .line 601
    const-string/jumbo v1, "source"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 602
    const/4 v1, 0x1

    #@13
    return v1

    #@14
    .line 604
    :cond_0
    const-string/jumbo v1, "sink"

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 605
    const/4 v1, 0x2

    #@1e
    return v1

    #@1f
    .line 608
    :cond_1
    const/4 v1, 0x0

    #@20
    return v1
.end method

.method private static readFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "filename"    # Ljava/lang/String;

    #@0
    .prologue
    .line 637
    new-instance v1, Ljava/io/File;

    #@2
    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@5
    .line 639
    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    invoke-static {v2}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v2

    #@11
    return-object v2

    #@12
    .line 640
    :catch_0
    move-exception v0

    #@13
    .line 641
    .local v0, "ex":Ljava/io/IOException;
    const/4 v2, 0x0

    #@14
    return-object v2
.end method

.method private static readSupportedModes(Ljava/io/File;)I
    .locals 3
    .param p0, "portDir"    # Ljava/io/File;

    #@0
    .prologue
    .line 572
    const/4 v1, 0x0

    #@1
    .line 573
    .local v1, "modes":I
    const-string/jumbo v2, "supported_modes"

    #@4
    invoke-static {p0, v2}, Lcom/android/server/usb/UsbPortManager;->readFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 574
    .local v0, "contents":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@a
    .line 575
    const-string/jumbo v2, "dfp"

    #@d
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 576
    const/4 v1, 0x1

    #@14
    .line 578
    :cond_0
    const-string/jumbo v2, "ufp"

    #@17
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 579
    or-int/lit8 v1, v1, 0x2

    #@1f
    .line 582
    :cond_1
    return v1
.end method

.method private scheduleUpdatePorts()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 566
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 567
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@e
    .line 565
    :cond_0
    return-void
.end method

.method private sendPortChangedBroadcastLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;)V
    .locals 3
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;

    #@0
    .prologue
    .line 550
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.hardware.usb.action.USB_PORT_CHANGED"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 551
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d
    .line 552
    const-string/jumbo v1, "port"

    #@10
    iget-object v2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    #@12
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@15
    .line 553
    const-string/jumbo v1, "portStatus"

    #@18
    iget-object v2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    #@1a
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@1d
    .line 557
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    #@1f
    new-instance v2, Lcom/android/server/usb/UsbPortManager$3;

    #@21
    invoke-direct {v2, p0, v0}, Lcom/android/server/usb/UsbPortManager$3;-><init>(Lcom/android/server/usb/UsbPortManager;Landroid/content/Intent;)V

    #@24
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@27
    .line 549
    return-void
.end method

.method private updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 22
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 391
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    #@4
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@7
    move-result v14

    #@8
    .local v14, "i":I
    move v15, v14

    #@9
    .end local v14    # "i":I
    .local v15, "i":I
    :goto_0
    add-int/lit8 v14, v15, -0x1

    #@b
    .end local v15    # "i":I
    .restart local v14    # "i":I
    if-lez v15, :cond_0

    #@d
    .line 392
    move-object/from16 v0, p0

    #@f
    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    #@11
    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    check-cast v3, Lcom/android/server/usb/UsbPortManager$PortInfo;

    #@17
    const/4 v12, 0x3

    #@18
    iput v12, v3, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    #@1a
    move v15, v14

    #@1b
    .end local v14    # "i":I
    .restart local v15    # "i":I
    goto :goto_0

    #@1c
    .line 396
    .end local v15    # "i":I
    .restart local v14    # "i":I
    :cond_0
    move-object/from16 v0, p0

    #@1e
    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    #@20
    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    #@23
    move-result v3

    #@24
    if-nez v3, :cond_1

    #@26
    .line 397
    move-object/from16 v0, p0

    #@28
    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    #@2a
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@2d
    move-result v13

    #@2e
    .line 398
    .local v13, "count":I
    const/4 v14, 0x0

    #@2f
    :goto_1
    if-ge v14, v13, :cond_3

    #@31
    .line 399
    move-object/from16 v0, p0

    #@33
    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    #@35
    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@38
    move-result-object v19

    #@39
    check-cast v19, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;

    #@3b
    .line 400
    .local v19, "portInfo":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    move-object/from16 v0, v19

    #@3d
    iget-object v4, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mPortId:Ljava/lang/String;

    #@3f
    move-object/from16 v0, v19

    #@41
    iget v5, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mSupportedModes:I

    #@43
    .line 401
    move-object/from16 v0, v19

    #@45
    iget v6, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentMode:I

    #@47
    move-object/from16 v0, v19

    #@49
    iget-boolean v7, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangeMode:Z

    #@4b
    .line 402
    move-object/from16 v0, v19

    #@4d
    iget v8, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentPowerRole:I

    #@4f
    move-object/from16 v0, v19

    #@51
    iget-boolean v9, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangePowerRole:Z

    #@53
    .line 403
    move-object/from16 v0, v19

    #@55
    iget v10, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentDataRole:I

    #@57
    move-object/from16 v0, v19

    #@59
    iget-boolean v11, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangeDataRole:Z

    #@5b
    move-object/from16 v3, p0

    #@5d
    move-object/from16 v12, p1

    #@5f
    .line 400
    invoke-direct/range {v3 .. v12}, Lcom/android/server/usb/UsbPortManager;->addOrUpdatePortLocked(Ljava/lang/String;IIZIZIZLcom/android/internal/util/IndentingPrintWriter;)V

    #@62
    .line 398
    add-int/lit8 v14, v14, 0x1

    #@64
    goto :goto_1

    #@65
    .line 405
    .end local v13    # "count":I
    .end local v19    # "portInfo":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    :cond_1
    move-object/from16 v0, p0

    #@67
    iget-boolean v3, v0, Lcom/android/server/usb/UsbPortManager;->mHaveKernelSupport:Z

    #@69
    if-eqz v3, :cond_3

    #@6b
    .line 406
    new-instance v3, Ljava/io/File;

    #@6d
    const-string/jumbo v12, "/sys/class/dual_role_usb"

    #@70
    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@73
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@76
    move-result-object v17

    #@77
    .line 407
    .local v17, "portDirs":[Ljava/io/File;
    if-eqz v17, :cond_3

    #@79
    .line 408
    const/4 v3, 0x0

    #@7a
    move-object/from16 v0, v17

    #@7c
    array-length v0, v0

    #@7d
    move/from16 v21, v0

    #@7f
    move/from16 v20, v3

    #@81
    :goto_2
    move/from16 v0, v20

    #@83
    move/from16 v1, v21

    #@85
    if-ge v0, v1, :cond_3

    #@87
    aget-object v16, v17, v20

    #@89
    .line 409
    .local v16, "portDir":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->isDirectory()Z

    #@8c
    move-result v3

    #@8d
    if-nez v3, :cond_2

    #@8f
    .line 408
    :goto_3
    add-int/lit8 v3, v20, 0x1

    #@91
    move/from16 v20, v3

    #@93
    goto :goto_2

    #@94
    .line 414
    :cond_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    #@97
    move-result-object v4

    #@98
    .line 415
    .local v4, "portId":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/server/usb/UsbPortManager;->readSupportedModes(Ljava/io/File;)I

    #@9b
    move-result v5

    #@9c
    .line 416
    .local v5, "supportedModes":I
    invoke-static/range {v16 .. v16}, Lcom/android/server/usb/UsbPortManager;->readCurrentMode(Ljava/io/File;)I

    #@9f
    move-result v6

    #@a0
    .line 417
    .local v6, "currentMode":I
    invoke-static/range {v16 .. v16}, Lcom/android/server/usb/UsbPortManager;->canChangeMode(Ljava/io/File;)Z

    #@a3
    move-result v7

    #@a4
    .line 418
    .local v7, "canChangeMode":Z
    invoke-static/range {v16 .. v16}, Lcom/android/server/usb/UsbPortManager;->readCurrentPowerRole(Ljava/io/File;)I

    #@a7
    move-result v8

    #@a8
    .line 419
    .local v8, "currentPowerRole":I
    invoke-static/range {v16 .. v16}, Lcom/android/server/usb/UsbPortManager;->canChangePowerRole(Ljava/io/File;)Z

    #@ab
    move-result v9

    #@ac
    .line 420
    .local v9, "canChangePowerRole":Z
    invoke-static/range {v16 .. v16}, Lcom/android/server/usb/UsbPortManager;->readCurrentDataRole(Ljava/io/File;)I

    #@af
    move-result v10

    #@b0
    .line 421
    .local v10, "currentDataRole":I
    invoke-static/range {v16 .. v16}, Lcom/android/server/usb/UsbPortManager;->canChangeDataRole(Ljava/io/File;)Z

    #@b3
    move-result v11

    #@b4
    .local v11, "canChangeDataRole":Z
    move-object/from16 v3, p0

    #@b6
    move-object/from16 v12, p1

    #@b8
    .line 422
    invoke-direct/range {v3 .. v12}, Lcom/android/server/usb/UsbPortManager;->addOrUpdatePortLocked(Ljava/lang/String;IIZIZIZLcom/android/internal/util/IndentingPrintWriter;)V

    #@bb
    goto :goto_3

    #@bc
    .line 432
    .end local v4    # "portId":Ljava/lang/String;
    .end local v5    # "supportedModes":I
    .end local v6    # "currentMode":I
    .end local v7    # "canChangeMode":Z
    .end local v8    # "currentPowerRole":I
    .end local v9    # "canChangePowerRole":Z
    .end local v10    # "currentDataRole":I
    .end local v11    # "canChangeDataRole":Z
    .end local v16    # "portDir":Ljava/io/File;
    .end local v17    # "portDirs":[Ljava/io/File;
    :cond_3
    move-object/from16 v0, p0

    #@be
    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    #@c0
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@c3
    move-result v14

    #@c4
    move v15, v14

    #@c5
    .end local v14    # "i":I
    .restart local v15    # "i":I
    :goto_4
    add-int/lit8 v14, v15, -0x1

    #@c7
    .end local v15    # "i":I
    .restart local v14    # "i":I
    if-lez v15, :cond_4

    #@c9
    .line 433
    move-object/from16 v0, p0

    #@cb
    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    #@cd
    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@d0
    move-result-object v18

    #@d1
    check-cast v18, Lcom/android/server/usb/UsbPortManager$PortInfo;

    #@d3
    .line 434
    .local v18, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    move-object/from16 v0, v18

    #@d5
    iget v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    #@d7
    packed-switch v3, :pswitch_data_0

    #@da
    :goto_5
    :pswitch_0
    move v15, v14

    #@db
    .end local v14    # "i":I
    .restart local v15    # "i":I
    goto :goto_4

    #@dc
    .line 436
    .end local v15    # "i":I
    .restart local v14    # "i":I
    :pswitch_1
    move-object/from16 v0, p0

    #@de
    move-object/from16 v1, v18

    #@e0
    move-object/from16 v2, p1

    #@e2
    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->handlePortAddedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    #@e5
    .line 437
    const/4 v3, 0x2

    #@e6
    move-object/from16 v0, v18

    #@e8
    iput v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    #@ea
    goto :goto_5

    #@eb
    .line 440
    :pswitch_2
    move-object/from16 v0, p0

    #@ed
    move-object/from16 v1, v18

    #@ef
    move-object/from16 v2, p1

    #@f1
    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->handlePortChangedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    #@f4
    .line 441
    const/4 v3, 0x2

    #@f5
    move-object/from16 v0, v18

    #@f7
    iput v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    #@f9
    goto :goto_5

    #@fa
    .line 444
    :pswitch_3
    move-object/from16 v0, p0

    #@fc
    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    #@fe
    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@101
    .line 445
    const/4 v3, 0x0

    #@102
    move-object/from16 v0, v18

    #@104
    iput-object v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    #@106
    .line 446
    move-object/from16 v0, p0

    #@108
    move-object/from16 v1, v18

    #@10a
    move-object/from16 v2, p1

    #@10c
    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->handlePortRemovedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    #@10f
    goto :goto_5

    #@110
    .line 388
    .end local v18    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :cond_4
    return-void

    #@111
    .line 434
    nop

    #@112
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static writeFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "contents"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 646
    new-instance v1, Ljava/io/File;

    #@3
    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@6
    .line 648
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    #@7
    .local v2, "writer":Ljava/io/FileWriter;
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    #@9
    invoke-direct {v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@c
    .line 649
    .end local v2    # "writer":Ljava/io/FileWriter;
    .local v3, "writer":Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v3, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@f
    .line 650
    if-eqz v3, :cond_0

    #@11
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@14
    :cond_0
    :goto_0
    if-eqz v5, :cond_4

    #@16
    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@17
    .line 652
    :catch_0
    move-exception v0

    #@18
    .local v0, "ex":Ljava/io/IOException;
    move-object v2, v3

    #@19
    .line 653
    .end local v3    # "writer":Ljava/io/FileWriter;
    :goto_1
    const/4 v4, 0x0

    #@1a
    return v4

    #@1b
    .line 650
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catch_1
    move-exception v5

    #@1c
    goto :goto_0

    #@1d
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :catch_2
    move-exception v4

    #@1e
    .end local v2    # "writer":Ljava/io/FileWriter;
    :goto_2
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@1f
    :catchall_0
    move-exception v5

    #@20
    move-object v7, v5

    #@21
    move-object v5, v4

    #@22
    move-object v4, v7

    #@23
    :goto_3
    if-eqz v2, :cond_1

    #@25
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@28
    :cond_1
    :goto_4
    if-eqz v5, :cond_3

    #@2a
    :try_start_6
    throw v5

    #@2b
    .line 652
    :catch_3
    move-exception v0

    #@2c
    .restart local v0    # "ex":Ljava/io/IOException;
    goto :goto_1

    #@2d
    .line 650
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v6

    #@2e
    if-nez v5, :cond_2

    #@30
    move-object v5, v6

    #@31
    goto :goto_4

    #@32
    :cond_2
    if-eq v5, v6, :cond_1

    #@34
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@37
    goto :goto_4

    #@38
    :cond_3
    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    #@39
    .line 651
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :cond_4
    const/4 v4, 0x1

    #@3a
    return v4

    #@3b
    .line 650
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v4

    #@3c
    goto :goto_3

    #@3d
    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catchall_2
    move-exception v4

    #@3e
    move-object v2, v3

    #@3f
    .end local v3    # "writer":Ljava/io/FileWriter;
    .local v2, "writer":Ljava/io/FileWriter;
    goto :goto_3

    #@40
    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catch_5
    move-exception v4

    #@41
    move-object v2, v3

    #@42
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    goto :goto_2
.end method


# virtual methods
.method public addSimulatedPort(Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "supportedModes"    # I
    .param p3, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 275
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 277
    const-string/jumbo v0, "Port with same name already exists.  Please remove it first."

    #@e
    invoke-virtual {p3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v1

    #@12
    .line 278
    return-void

    #@13
    .line 281
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v2, "Adding simulated port: portId="

    #@1b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 282
    const-string/jumbo v2, ", supportedModes="

    #@26
    .line 281
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 282
    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    .line 281
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {p3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@39
    .line 283
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    #@3b
    .line 284
    new-instance v2, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;

    #@3d
    invoke-direct {v2, p1, p2}, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;-><init>(Ljava/lang/String;I)V

    #@40
    .line 283
    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    .line 285
    invoke-direct {p0, p3}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    monitor-exit v1

    #@47
    .line 274
    return-void

    #@48
    .line 275
    :catchall_0
    move-exception v0

    #@49
    monitor-exit v1

    #@4a
    throw v0
.end method

.method public connectSimulatedPort(Ljava/lang/String;IZIZIZLcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "canChangeMode"    # Z
    .param p4, "powerRole"    # I
    .param p5, "canChangePowerRole"    # Z
    .param p6, "dataRole"    # I
    .param p7, "canChangeDataRole"    # Z
    .param p8, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 292
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 293
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;

    #@b
    .line 294
    .local v0, "portInfo":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    if-nez v0, :cond_0

    #@d
    .line 295
    const-string/jumbo v1, "Cannot connect simulated port which does not exist."

    #@10
    invoke-virtual {p8, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v2

    #@14
    .line 296
    return-void

    #@15
    .line 299
    :cond_0
    if-eqz p2, :cond_1

    #@17
    if-nez p4, :cond_2

    #@19
    .line 300
    :cond_1
    :try_start_1
    const-string/jumbo v1, "Cannot connect simulated port in null mode, power role, or data role."

    #@1c
    invoke-virtual {p8, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    monitor-exit v2

    #@20
    .line 302
    return-void

    #@21
    .line 299
    :cond_2
    if-eqz p6, :cond_1

    #@23
    .line 305
    :try_start_2
    iget v1, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mSupportedModes:I

    #@25
    and-int/2addr v1, p2

    #@26
    if-nez v1, :cond_3

    #@28
    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v3, "Simulated port does not support mode: "

    #@30
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {p8, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@43
    monitor-exit v2

    #@44
    .line 307
    return-void

    #@45
    .line 310
    :cond_3
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v3, "Connecting simulated port: portId="

    #@4d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    .line 311
    const-string/jumbo v3, ", mode="

    #@58
    .line 310
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    .line 311
    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    #@5f
    move-result-object v3

    #@60
    .line 310
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    .line 312
    const-string/jumbo v3, ", canChangeMode="

    #@67
    .line 310
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    .line 313
    const-string/jumbo v3, ", powerRole="

    #@72
    .line 310
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v1

    #@76
    .line 313
    invoke-static {p4}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    #@79
    move-result-object v3

    #@7a
    .line 310
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v1

    #@7e
    .line 314
    const-string/jumbo v3, ", canChangePowerRole="

    #@81
    .line 310
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v1

    #@85
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@88
    move-result-object v1

    #@89
    .line 315
    const-string/jumbo v3, ", dataRole="

    #@8c
    .line 310
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v1

    #@90
    .line 315
    invoke-static {p6}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    #@93
    move-result-object v3

    #@94
    .line 310
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v1

    #@98
    .line 316
    const-string/jumbo v3, ", canChangeDataRole="

    #@9b
    .line 310
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v1

    #@9f
    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v1

    #@a3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v1

    #@a7
    invoke-virtual {p8, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@aa
    .line 317
    iput p2, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentMode:I

    #@ac
    .line 318
    iput-boolean p3, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangeMode:Z

    #@ae
    .line 319
    iput p4, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentPowerRole:I

    #@b0
    .line 320
    iput-boolean p5, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangePowerRole:Z

    #@b2
    .line 321
    iput p6, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentDataRole:I

    #@b4
    .line 322
    iput-boolean p7, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangeDataRole:Z

    #@b6
    .line 323
    invoke-direct {p0, p8}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@b9
    monitor-exit v2

    #@ba
    .line 291
    return-void

    #@bb
    .line 292
    .end local v0    # "portInfo":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    :catchall_0
    move-exception v1

    #@bc
    monitor-exit v2

    #@bd
    throw v1
.end method

.method public disconnectSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 328
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 329
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;

    #@b
    .line 330
    .local v0, "portInfo":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    if-nez v0, :cond_0

    #@d
    .line 331
    const-string/jumbo v1, "Cannot disconnect simulated port which does not exist."

    #@10
    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v2

    #@14
    .line 332
    return-void

    #@15
    .line 335
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "Disconnecting simulated port: portId="

    #@1d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@2c
    .line 336
    const/4 v1, 0x0

    #@2d
    iput v1, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentMode:I

    #@2f
    .line 337
    const/4 v1, 0x0

    #@30
    iput-boolean v1, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangeMode:Z

    #@32
    .line 338
    const/4 v1, 0x0

    #@33
    iput v1, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentPowerRole:I

    #@35
    .line 339
    const/4 v1, 0x0

    #@36
    iput-boolean v1, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangePowerRole:Z

    #@38
    .line 340
    const/4 v1, 0x0

    #@39
    iput v1, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentDataRole:I

    #@3b
    .line 341
    const/4 v1, 0x0

    #@3c
    iput-boolean v1, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangeDataRole:Z

    #@3e
    .line 342
    invoke-direct {p0, p2}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    monitor-exit v2

    #@42
    .line 327
    return-void

    #@43
    .line 328
    .end local v0    # "portInfo":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    :catchall_0
    move-exception v1

    #@44
    monitor-exit v2

    #@45
    throw v1
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 371
    iget-object v3, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 372
    :try_start_0
    const-string/jumbo v2, "USB Port State:"

    #@6
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@9
    .line 373
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_0

    #@11
    .line 374
    const-string/jumbo v2, " (simulation active; end with \'dumpsys usb reset\')"

    #@14
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@17
    .line 376
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@1a
    .line 378
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    #@1c
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_2

    #@22
    .line 379
    const-string/jumbo v2, "  <no ports>"

    #@25
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    :cond_1
    monitor-exit v3

    #@29
    .line 370
    return-void

    #@2a
    .line 381
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    #@2c
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@2f
    move-result-object v2

    #@30
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@33
    move-result-object v1

    #@34
    .local v1, "portInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@37
    move-result v2

    #@38
    if-eqz v2, :cond_1

    #@3a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3d
    move-result-object v0

    #@3e
    check-cast v0, Lcom/android/server/usb/UsbPortManager$PortInfo;

    #@40
    .line 382
    .local v0, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v4, "  "

    #@48
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    iget-object v4, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    #@4e
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v2

    #@56
    const-string/jumbo v4, ": "

    #@59
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v2

    #@5d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v2

    #@61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v2

    #@65
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@68
    goto :goto_0

    #@69
    .line 371
    .end local v0    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .end local v1    # "portInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@6a
    monitor-exit v3

    #@6b
    throw v2
.end method

.method public getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;
    .locals 4
    .param p1, "portId"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 143
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 144
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/server/usb/UsbPortManager$PortInfo;

    #@c
    .line 145
    .local v0, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    if-eqz v0, :cond_0

    #@e
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v2

    #@11
    return-object v1

    #@12
    .line 143
    .end local v0    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1
.end method

.method public getPorts()[Landroid/hardware/usb/UsbPort;
    .locals 5

    #@0
    .prologue
    .line 132
    iget-object v4, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 133
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@8
    move-result v0

    #@9
    .line 134
    .local v0, "count":I
    new-array v2, v0, [Landroid/hardware/usb/UsbPort;

    #@b
    .line 135
    .local v2, "result":[Landroid/hardware/usb/UsbPort;
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@e
    .line 136
    iget-object v3, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    #@10
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    check-cast v3, Lcom/android/server/usb/UsbPortManager$PortInfo;

    #@16
    iget-object v3, v3, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    #@18
    aput-object v3, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .line 135
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    :cond_0
    monitor-exit v4

    #@1e
    .line 138
    return-object v2

    #@1f
    .line 132
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "result":[Landroid/hardware/usb/UsbPort;
    :catchall_0
    move-exception v3

    #@20
    monitor-exit v4

    #@21
    throw v3
.end method

.method public removeSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 347
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    #@8
    move-result v0

    #@9
    .line 349
    .local v0, "index":I
    if-gez v0, :cond_0

    #@b
    .line 350
    const-string/jumbo v1, "Cannot remove simulated port which does not exist."

    #@e
    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v2

    #@12
    .line 351
    return-void

    #@13
    .line 354
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "Disconnecting simulated port: portId="

    #@1b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@2a
    .line 355
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    #@2c
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@2f
    .line 356
    invoke-direct {p0, p2}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    monitor-exit v2

    #@33
    .line 346
    return-void

    #@34
    .line 347
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    #@35
    monitor-exit v2

    #@36
    throw v1
.end method

.method public resetSimulation(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 361
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 362
    :try_start_0
    const-string/jumbo v0, "Removing all simulated ports and ending simulation."

    #@6
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@9
    .line 363
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_0

    #@11
    .line 364
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    #@13
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    #@16
    .line 365
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    :cond_0
    monitor-exit v1

    #@1a
    .line 360
    return-void

    #@1b
    .line 361
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method

.method public setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V
    .locals 15
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "newPowerRole"    # I
    .param p3, "newDataRole"    # I
    .param p4, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 151
    iget-object v13, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v13

    #@3
    .line 152
    :try_start_0
    iget-object v12, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    #@5
    move-object/from16 v0, p1

    #@7
    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v10

    #@b
    check-cast v10, Lcom/android/server/usb/UsbPortManager$PortInfo;

    #@d
    .line 153
    .local v10, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    if-nez v10, :cond_1

    #@f
    .line 154
    if-eqz p4, :cond_0

    #@11
    .line 155
    new-instance v12, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v14, "No such USB port: "

    #@19
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v12

    #@1d
    move-object/from16 v0, p1

    #@1f
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v12

    #@23
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v12

    #@27
    move-object/from16 v0, p4

    #@29
    invoke-virtual {v0, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    :cond_0
    monitor-exit v13

    #@2d
    .line 157
    return-void

    #@2e
    .line 161
    :cond_1
    :try_start_1
    iget-object v12, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    #@30
    move/from16 v0, p2

    #@32
    move/from16 v1, p3

    #@34
    invoke-virtual {v12, v0, v1}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    #@37
    move-result v12

    #@38
    if-nez v12, :cond_2

    #@3a
    .line 162
    new-instance v12, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v14, "Attempted to set USB port into unsupported role combination: portId="

    #@42
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v12

    #@46
    move-object/from16 v0, p1

    #@48
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v12

    #@4c
    .line 164
    const-string/jumbo v14, ", newPowerRole="

    #@4f
    .line 162
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v12

    #@53
    .line 164
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    #@56
    move-result-object v14

    #@57
    .line 162
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v12

    #@5b
    .line 165
    const-string/jumbo v14, ", newDataRole="

    #@5e
    .line 162
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v12

    #@62
    .line 165
    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    #@65
    move-result-object v14

    #@66
    .line 162
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v12

    #@6a
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v12

    #@6e
    const/4 v14, 0x6

    #@6f
    move-object/from16 v0, p4

    #@71
    invoke-static {v14, v0, v12}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@74
    monitor-exit v13

    #@75
    .line 166
    return-void

    #@76
    .line 170
    :cond_2
    :try_start_2
    iget-object v12, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    #@78
    invoke-virtual {v12}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    #@7b
    move-result v5

    #@7c
    .line 171
    .local v5, "currentDataRole":I
    iget-object v12, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    #@7e
    invoke-virtual {v12}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    #@81
    move-result v7

    #@82
    .line 172
    .local v7, "currentPowerRole":I
    move/from16 v0, p3

    #@84
    if-ne v5, v0, :cond_4

    #@86
    move/from16 v0, p2

    #@88
    if-ne v7, v0, :cond_4

    #@8a
    .line 173
    if-eqz p4, :cond_3

    #@8c
    .line 174
    const-string/jumbo v12, "No change."

    #@8f
    move-object/from16 v0, p4

    #@91
    invoke-virtual {v0, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@94
    :cond_3
    monitor-exit v13

    #@95
    .line 176
    return-void

    #@96
    .line 185
    :cond_4
    :try_start_3
    iget-boolean v3, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    #@98
    .line 186
    .local v3, "canChangeMode":Z
    iget-boolean v4, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    #@9a
    .line 187
    .local v4, "canChangePowerRole":Z
    iget-boolean v2, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    #@9c
    .line 188
    .local v2, "canChangeDataRole":Z
    iget-object v12, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    #@9e
    invoke-virtual {v12}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    #@a1
    move-result v6

    #@a2
    .line 190
    .local v6, "currentMode":I
    if-nez v4, :cond_7

    #@a4
    move/from16 v0, p2

    #@a6
    if-eq v7, v0, :cond_7

    #@a8
    .line 192
    :cond_5
    if-eqz v3, :cond_9

    #@aa
    const/4 v12, 0x1

    #@ab
    move/from16 v0, p2

    #@ad
    if-ne v0, v12, :cond_9

    #@af
    .line 193
    const/4 v12, 0x1

    #@b0
    move/from16 v0, p3

    #@b2
    if-ne v0, v12, :cond_9

    #@b4
    .line 194
    const/4 v8, 0x1

    #@b5
    .line 210
    .local v8, "newMode":I
    :goto_0
    new-instance v12, Ljava/lang/StringBuilder;

    #@b7
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@ba
    const-string/jumbo v14, "Setting USB port mode and role: portId="

    #@bd
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v12

    #@c1
    move-object/from16 v0, p1

    #@c3
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v12

    #@c7
    .line 211
    const-string/jumbo v14, ", currentMode="

    #@ca
    .line 210
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v12

    #@ce
    .line 211
    invoke-static {v6}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    #@d1
    move-result-object v14

    #@d2
    .line 210
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v12

    #@d6
    .line 212
    const-string/jumbo v14, ", currentPowerRole="

    #@d9
    .line 210
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v12

    #@dd
    .line 212
    invoke-static {v7}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    #@e0
    move-result-object v14

    #@e1
    .line 210
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v12

    #@e5
    .line 213
    const-string/jumbo v14, ", currentDataRole="

    #@e8
    .line 210
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v12

    #@ec
    .line 213
    invoke-static {v5}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    #@ef
    move-result-object v14

    #@f0
    .line 210
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v12

    #@f4
    .line 214
    const-string/jumbo v14, ", newMode="

    #@f7
    .line 210
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v12

    #@fb
    .line 214
    invoke-static {v8}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    #@fe
    move-result-object v14

    #@ff
    .line 210
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v12

    #@103
    .line 215
    const-string/jumbo v14, ", newPowerRole="

    #@106
    .line 210
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v12

    #@10a
    .line 215
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    #@10d
    move-result-object v14

    #@10e
    .line 210
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v12

    #@112
    .line 216
    const-string/jumbo v14, ", newDataRole="

    #@115
    .line 210
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v12

    #@119
    .line 216
    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    #@11c
    move-result-object v14

    #@11d
    .line 210
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v12

    #@121
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@124
    move-result-object v12

    #@125
    const/4 v14, 0x4

    #@126
    move-object/from16 v0, p4

    #@128
    invoke-static {v14, v0, v12}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    #@12b
    .line 218
    iget-object v12, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    #@12d
    move-object/from16 v0, p1

    #@12f
    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@132
    move-result-object v11

    #@133
    check-cast v11, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;

    #@135
    .line 219
    .local v11, "sim":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    if-eqz v11, :cond_b

    #@137
    .line 221
    iput v8, v11, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentMode:I

    #@139
    .line 222
    move/from16 v0, p2

    #@13b
    iput v0, v11, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentPowerRole:I

    #@13d
    .line 223
    move/from16 v0, p3

    #@13f
    iput v0, v11, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentDataRole:I

    #@141
    .line 270
    :cond_6
    move-object/from16 v0, p4

    #@143
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@146
    monitor-exit v13

    #@147
    .line 150
    return-void

    #@148
    .line 191
    .end local v8    # "newMode":I
    .end local v11    # "sim":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    :cond_7
    if-nez v2, :cond_8

    #@14a
    move/from16 v0, p3

    #@14c
    if-ne v5, v0, :cond_5

    #@14e
    .line 206
    :cond_8
    move v8, v6

    #@14f
    .restart local v8    # "newMode":I
    goto/16 :goto_0

    #@151
    .line 195
    .end local v8    # "newMode":I
    :cond_9
    if-eqz v3, :cond_a

    #@153
    const/4 v12, 0x2

    #@154
    move/from16 v0, p2

    #@156
    if-ne v0, v12, :cond_a

    #@158
    .line 196
    const/4 v12, 0x2

    #@159
    move/from16 v0, p3

    #@15b
    if-ne v0, v12, :cond_a

    #@15d
    .line 197
    const/4 v8, 0x2

    #@15e
    .line 196
    .restart local v8    # "newMode":I
    goto/16 :goto_0

    #@160
    .line 199
    .end local v8    # "newMode":I
    :cond_a
    :try_start_4
    new-instance v12, Ljava/lang/StringBuilder;

    #@162
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@165
    const-string/jumbo v14, "Found mismatch in supported USB role combinations while attempting to change role: "

    #@168
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16b
    move-result-object v12

    #@16c
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16f
    move-result-object v12

    #@170
    .line 201
    const-string/jumbo v14, ", newPowerRole="

    #@173
    .line 199
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@176
    move-result-object v12

    #@177
    .line 201
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    #@17a
    move-result-object v14

    #@17b
    .line 199
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17e
    move-result-object v12

    #@17f
    .line 202
    const-string/jumbo v14, ", newDataRole="

    #@182
    .line 199
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@185
    move-result-object v12

    #@186
    .line 202
    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    #@189
    move-result-object v14

    #@18a
    .line 199
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18d
    move-result-object v12

    #@18e
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@191
    move-result-object v12

    #@192
    const/4 v14, 0x6

    #@193
    move-object/from16 v0, p4

    #@195
    invoke-static {v14, v0, v12}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@198
    monitor-exit v13

    #@199
    .line 203
    return-void

    #@19a
    .line 224
    .restart local v8    # "newMode":I
    .restart local v11    # "sim":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    :cond_b
    :try_start_5
    iget-boolean v12, p0, Lcom/android/server/usb/UsbPortManager;->mHaveKernelSupport:Z

    #@19c
    if-eqz v12, :cond_6

    #@19e
    .line 226
    new-instance v9, Ljava/io/File;

    #@1a0
    const-string/jumbo v12, "/sys/class/dual_role_usb"

    #@1a3
    move-object/from16 v0, p1

    #@1a5
    invoke-direct {v9, v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1a8
    .line 227
    .local v9, "portDir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    #@1ab
    move-result v12

    #@1ac
    if-nez v12, :cond_c

    #@1ae
    .line 228
    new-instance v12, Ljava/lang/StringBuilder;

    #@1b0
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@1b3
    const-string/jumbo v14, "USB port not found: portId="

    #@1b6
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b9
    move-result-object v12

    #@1ba
    move-object/from16 v0, p1

    #@1bc
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bf
    move-result-object v12

    #@1c0
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c3
    move-result-object v12

    #@1c4
    const/4 v14, 0x6

    #@1c5
    move-object/from16 v0, p4

    #@1c7
    invoke-static {v14, v0, v12}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@1ca
    monitor-exit v13

    #@1cb
    .line 229
    return-void

    #@1cc
    .line 232
    :cond_c
    if-eq v6, v8, :cond_e

    #@1ce
    .line 239
    :try_start_6
    const-string/jumbo v14, "mode"

    #@1d1
    .line 240
    const/4 v12, 0x1

    #@1d2
    if-ne v8, v12, :cond_d

    #@1d4
    const-string/jumbo v12, "dfp"

    #@1d7
    .line 239
    :goto_1
    invoke-static {v9, v14, v12}, Lcom/android/server/usb/UsbPortManager;->writeFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    #@1da
    move-result v12

    #@1db
    if-nez v12, :cond_6

    #@1dd
    .line 241
    new-instance v12, Ljava/lang/StringBuilder;

    #@1df
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@1e2
    const-string/jumbo v14, "Failed to set the USB port mode: portId="

    #@1e5
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e8
    move-result-object v12

    #@1e9
    move-object/from16 v0, p1

    #@1eb
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ee
    move-result-object v12

    #@1ef
    .line 243
    const-string/jumbo v14, ", newMode="

    #@1f2
    .line 241
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f5
    move-result-object v12

    #@1f6
    .line 243
    invoke-static {v8}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    #@1f9
    move-result-object v14

    #@1fa
    .line 241
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fd
    move-result-object v12

    #@1fe
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@201
    move-result-object v12

    #@202
    const/4 v14, 0x6

    #@203
    move-object/from16 v0, p4

    #@205
    invoke-static {v14, v0, v12}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@208
    monitor-exit v13

    #@209
    .line 244
    return-void

    #@20a
    .line 240
    :cond_d
    :try_start_7
    const-string/jumbo v12, "ufp"

    #@20d
    goto :goto_1

    #@20e
    .line 248
    :cond_e
    move/from16 v0, p2

    #@210
    if-eq v7, v0, :cond_10

    #@212
    .line 249
    const-string/jumbo v14, "power_role"

    #@215
    .line 250
    const/4 v12, 0x1

    #@216
    move/from16 v0, p2

    #@218
    if-ne v0, v12, :cond_f

    #@21a
    .line 251
    const-string/jumbo v12, "source"

    #@21d
    .line 249
    :goto_2
    invoke-static {v9, v14, v12}, Lcom/android/server/usb/UsbPortManager;->writeFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    #@220
    move-result v12

    #@221
    if-nez v12, :cond_10

    #@223
    .line 252
    new-instance v12, Ljava/lang/StringBuilder;

    #@225
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@228
    const-string/jumbo v14, "Failed to set the USB port power role: portId="

    #@22b
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22e
    move-result-object v12

    #@22f
    move-object/from16 v0, p1

    #@231
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@234
    move-result-object v12

    #@235
    .line 254
    const-string/jumbo v14, ", newPowerRole="

    #@238
    .line 252
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23b
    move-result-object v12

    #@23c
    .line 254
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    #@23f
    move-result-object v14

    #@240
    .line 252
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@243
    move-result-object v12

    #@244
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@247
    move-result-object v12

    #@248
    const/4 v14, 0x6

    #@249
    move-object/from16 v0, p4

    #@24b
    invoke-static {v14, v0, v12}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@24e
    monitor-exit v13

    #@24f
    .line 255
    return-void

    #@250
    .line 251
    :cond_f
    :try_start_8
    const-string/jumbo v12, "sink"

    #@253
    goto :goto_2

    #@254
    .line 258
    :cond_10
    move/from16 v0, p3

    #@256
    if-eq v5, v0, :cond_6

    #@258
    .line 259
    const-string/jumbo v14, "data_role"

    #@25b
    .line 260
    const/4 v12, 0x1

    #@25c
    move/from16 v0, p3

    #@25e
    if-ne v0, v12, :cond_11

    #@260
    .line 261
    const-string/jumbo v12, "host"

    #@263
    .line 259
    :goto_3
    invoke-static {v9, v14, v12}, Lcom/android/server/usb/UsbPortManager;->writeFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    #@266
    move-result v12

    #@267
    if-nez v12, :cond_6

    #@269
    .line 262
    new-instance v12, Ljava/lang/StringBuilder;

    #@26b
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@26e
    const-string/jumbo v14, "Failed to set the USB port data role: portId="

    #@271
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@274
    move-result-object v12

    #@275
    move-object/from16 v0, p1

    #@277
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27a
    move-result-object v12

    #@27b
    .line 264
    const-string/jumbo v14, ", newDataRole="

    #@27e
    .line 262
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@281
    move-result-object v12

    #@282
    .line 264
    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    #@285
    move-result-object v14

    #@286
    .line 262
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@289
    move-result-object v12

    #@28a
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28d
    move-result-object v12

    #@28e
    const/4 v14, 0x6

    #@28f
    move-object/from16 v0, p4

    #@291
    invoke-static {v14, v0, v12}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@294
    monitor-exit v13

    #@295
    .line 265
    return-void

    #@296
    .line 261
    :cond_11
    :try_start_9
    const-string/jumbo v12, "device"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@299
    goto :goto_3

    #@29a
    .line 151
    .end local v2    # "canChangeDataRole":Z
    .end local v3    # "canChangeMode":Z
    .end local v4    # "canChangePowerRole":Z
    .end local v5    # "currentDataRole":I
    .end local v6    # "currentMode":I
    .end local v7    # "currentPowerRole":I
    .end local v8    # "newMode":I
    .end local v9    # "portDir":Ljava/io/File;
    .end local v10    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .end local v11    # "sim":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    :catchall_0
    move-exception v12

    #@29b
    monitor-exit v13

    #@29c
    throw v12
.end method

.method public systemReady()V
    .locals 2

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mUEventObserver:Landroid/os/UEventObserver;

    #@2
    const-string/jumbo v1, "SUBSYSTEM=dual_role_usb"

    #@5
    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    #@8
    .line 128
    invoke-direct {p0}, Lcom/android/server/usb/UsbPortManager;->scheduleUpdatePorts()V

    #@b
    .line 126
    return-void
.end method
