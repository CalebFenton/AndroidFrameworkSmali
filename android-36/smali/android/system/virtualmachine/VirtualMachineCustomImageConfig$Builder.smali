.class public final Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;
.super Ljava/lang/Object;
.source "VirtualMachineCustomImageConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist audioConfig:Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;

.field private blacklist autoMemoryBalloon:Z

.field private blacklist bootloaderPath:Ljava/lang/String;

.field private blacklist disks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist displayConfig:Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;

.field private blacklist gpuConfig:Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;

.field private blacklist initrdPath:Ljava/lang/String;

.field private blacklist kernelPath:Ljava/lang/String;

.field private blacklist keyboard:Z

.field private blacklist mouse:Z

.field private blacklist name:Ljava/lang/String;

.field private blacklist network:Z

.field private blacklist params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist sharedPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist switches:Z

.field private blacklist touch:Z

.field private blacklist trackpad:Z

.field private blacklist usbConfig:Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->params:Ljava/util/List;

    .line 478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->disks:Ljava/util/List;

    .line 479
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->sharedPaths:Ljava/util/List;

    .line 489
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->autoMemoryBalloon:Z

    .line 493
    return-void
.end method


# virtual methods
.method public blacklist addDisk(Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;
    .registers 3
    .param p1, "disk"    # Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;

    .line 521
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->disks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    return-object p0
.end method

.method public blacklist addParam(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;
    .registers 3
    .param p1, "param"    # Ljava/lang/String;

    .line 533
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->params:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    return-object p0
.end method

.method public blacklist addSharedPath(Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;
    .registers 3
    .param p1, "path"    # Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;

    .line 527
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->sharedPaths:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    return-object p0
.end method

.method public blacklist build()Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;
    .registers 22

    .line 605
    move-object/from16 v0, p0

    new-instance v1, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;

    iget-object v2, v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->name:Ljava/lang/String;

    iget-object v3, v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->kernelPath:Ljava/lang/String;

    iget-object v4, v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->initrdPath:Ljava/lang/String;

    iget-object v5, v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->bootloaderPath:Ljava/lang/String;

    iget-object v6, v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->params:Ljava/util/List;

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/String;

    .line 610
    invoke-interface {v6, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    iget-object v8, v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->disks:Ljava/util/List;

    new-array v9, v7, [Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;

    .line 611
    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;

    iget-object v9, v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->sharedPaths:Ljava/util/List;

    new-array v7, v7, [Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;

    .line 612
    invoke-interface {v9, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;

    iget-object v9, v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->displayConfig:Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;

    iget-boolean v10, v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->touch:Z

    iget-boolean v11, v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->keyboard:Z

    iget-boolean v12, v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->mouse:Z

    iget-boolean v13, v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->switches:Z

    iget-boolean v14, v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->network:Z

    iget-object v15, v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->gpuConfig:Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;

    move-object/from16 v16, v1

    iget-object v1, v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->audioConfig:Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;

    move-object/from16 v17, v1

    iget-boolean v1, v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->trackpad:Z

    move/from16 v18, v1

    iget-boolean v1, v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->autoMemoryBalloon:Z

    move/from16 v19, v1

    iget-object v1, v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->usbConfig:Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;

    move/from16 v20, v19

    move-object/from16 v19, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v20

    move-object/from16 v20, v8

    move-object v8, v7

    move-object/from16 v7, v20

    invoke-direct/range {v1 .. v19}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;[Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;ZZZZZLandroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;ZZLandroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;)V

    .line 605
    move-object/from16 v16, v1

    return-object v16
.end method

.method public blacklist setAudioConfig(Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;
    .registers 2
    .param p1, "audioConfig"    # Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;

    .line 593
    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->audioConfig:Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;

    .line 594
    return-object p0
.end method

.method public blacklist setBootloaderPath(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;
    .registers 2
    .param p1, "bootloaderPath"    # Ljava/lang/String;

    .line 509
    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->bootloaderPath:Ljava/lang/String;

    .line 510
    return-object p0
.end method

.method public blacklist setDisplayConfig(Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;
    .registers 2
    .param p1, "displayConfig"    # Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;

    .line 539
    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->displayConfig:Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;

    .line 540
    return-object p0
.end method

.method public blacklist setGpuConfig(Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;
    .registers 2
    .param p1, "gpuConfig"    # Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;

    .line 545
    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->gpuConfig:Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;

    .line 546
    return-object p0
.end method

.method public blacklist setInitrdPath(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;
    .registers 2
    .param p1, "initrdPath"    # Ljava/lang/String;

    .line 515
    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->initrdPath:Ljava/lang/String;

    .line 516
    return-object p0
.end method

.method public blacklist setKernelPath(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;
    .registers 2
    .param p1, "kernelPath"    # Ljava/lang/String;

    .line 503
    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->kernelPath:Ljava/lang/String;

    .line 504
    return-object p0
.end method

.method public blacklist setName(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 497
    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->name:Ljava/lang/String;

    .line 498
    return-object p0
.end method

.method public blacklist setUsbConfig(Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;
    .registers 2
    .param p1, "usbConfig"    # Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;

    .line 599
    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->usbConfig:Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;

    .line 600
    return-object p0
.end method

.method public blacklist useAutoMemoryBalloon(Z)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;
    .registers 2
    .param p1, "autoMemoryBalloon"    # Z

    .line 581
    iput-boolean p1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->autoMemoryBalloon:Z

    .line 582
    return-object p0
.end method

.method public blacklist useKeyboard(Z)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;
    .registers 2
    .param p1, "keyboard"    # Z

    .line 557
    iput-boolean p1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->keyboard:Z

    .line 558
    return-object p0
.end method

.method public blacklist useMouse(Z)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;
    .registers 2
    .param p1, "mouse"    # Z

    .line 563
    iput-boolean p1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->mouse:Z

    .line 564
    return-object p0
.end method

.method public blacklist useNetwork(Z)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;
    .registers 2
    .param p1, "network"    # Z

    .line 587
    iput-boolean p1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->network:Z

    .line 588
    return-object p0
.end method

.method public blacklist useSwitches(Z)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;
    .registers 2
    .param p1, "switches"    # Z

    .line 569
    iput-boolean p1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->switches:Z

    .line 570
    return-object p0
.end method

.method public blacklist useTouch(Z)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;
    .registers 2
    .param p1, "touch"    # Z

    .line 551
    iput-boolean p1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->touch:Z

    .line 552
    return-object p0
.end method

.method public blacklist useTrackpad(Z)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;
    .registers 2
    .param p1, "trackpad"    # Z

    .line 575
    iput-boolean p1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->trackpad:Z

    .line 576
    return-object p0
.end method
