.class public Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;
.super Ljava/lang/Object;
.source "VirtualMachineCustomImageConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;,
        Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;,
        Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;,
        Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;,
        Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;,
        Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;,
        Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;,
        Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Partition;
    }
.end annotation


# static fields
.field private static final blacklist KEY_AUDIO_CONFIG:Ljava/lang/String; = "audio_config"

.field private static final blacklist KEY_AUTO_MEMORY_BALLOON:Ljava/lang/String; = "auto_memory_balloon"

.field private static final blacklist KEY_BOOTLOADER:Ljava/lang/String; = "bootloader"

.field private static final blacklist KEY_DISK_IMAGES:Ljava/lang/String; = "disk_images"

.field private static final blacklist KEY_DISK_WRITABLES:Ljava/lang/String; = "disk_writables"

.field private static final blacklist KEY_DISPLAY_CONFIG:Ljava/lang/String; = "display_config"

.field private static final blacklist KEY_GPU:Ljava/lang/String; = "gpu"

.field private static final blacklist KEY_INITRD:Ljava/lang/String; = "initrd"

.field private static final blacklist KEY_KERNEL:Ljava/lang/String; = "kernel"

.field private static final blacklist KEY_KEYBOARD:Ljava/lang/String; = "keyboard"

.field private static final blacklist KEY_MOUSE:Ljava/lang/String; = "mouse"

.field private static final blacklist KEY_NAME:Ljava/lang/String; = "name"

.field private static final blacklist KEY_NETWORK:Ljava/lang/String; = "network"

.field private static final blacklist KEY_PARAMS:Ljava/lang/String; = "params"

.field private static final blacklist KEY_PARTITION_GUIDS:Ljava/lang/String; = "partition_guids_"

.field private static final blacklist KEY_PARTITION_IMAGES:Ljava/lang/String; = "partition_images_"

.field private static final blacklist KEY_PARTITION_LABELS:Ljava/lang/String; = "partition_labels_"

.field private static final blacklist KEY_PARTITION_WRITABLES:Ljava/lang/String; = "partition_writables_"

.field private static final blacklist KEY_SWITCHES:Ljava/lang/String; = "switches"

.field private static final blacklist KEY_TOUCH:Ljava/lang/String; = "touch"

.field private static final blacklist KEY_TRACKPAD:Ljava/lang/String; = "trackpad"

.field private static final blacklist KEY_USB_CONFIG:Ljava/lang/String; = "usb_config"


# instance fields
.field private final blacklist audioConfig:Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;

.field private final blacklist autoMemoryBalloon:Z

.field private final blacklist bootloaderPath:Ljava/lang/String;

.field private final blacklist disks:[Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;

.field private final blacklist displayConfig:Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;

.field private final blacklist gpuConfig:Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;

.field private final blacklist initrdPath:Ljava/lang/String;

.field private final blacklist kernelPath:Ljava/lang/String;

.field private final blacklist keyboard:Z

.field private final blacklist mouse:Z

.field private final blacklist name:Ljava/lang/String;

.field private final blacklist network:Z

.field private final blacklist params:[Ljava/lang/String;

.field private final blacklist sharedPaths:[Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;

.field private final blacklist switches:Z

.field private final blacklist touch:Z

.field private final blacklist trackpad:Z

.field private final blacklist usbConfig:Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;[Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;ZZZZZLandroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;ZZLandroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;)V
    .registers 35
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "kernelPath"    # Ljava/lang/String;
    .param p3, "initrdPath"    # Ljava/lang/String;
    .param p4, "bootloaderPath"    # Ljava/lang/String;
    .param p5, "params"    # [Ljava/lang/String;
    .param p6, "disks"    # [Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;
    .param p7, "sharedPaths"    # [Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;
    .param p8, "displayConfig"    # Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;
    .param p9, "touch"    # Z
    .param p10, "keyboard"    # Z
    .param p11, "mouse"    # Z
    .param p12, "switches"    # Z
    .param p13, "network"    # Z
    .param p14, "gpuConfig"    # Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;
    .param p15, "audioConfig"    # Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;
    .param p16, "trackpad"    # Z
    .param p17, "autoMemoryBalloon"    # Z
    .param p18, "usbConfig"    # Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;

    .line 152
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 153
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->name:Ljava/lang/String;

    .line 154
    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->kernelPath:Ljava/lang/String;

    .line 155
    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->initrdPath:Ljava/lang/String;

    .line 156
    move-object/from16 v4, p4

    iput-object v4, v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->bootloaderPath:Ljava/lang/String;

    .line 157
    move-object/from16 v5, p5

    iput-object v5, v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->params:[Ljava/lang/String;

    .line 158
    move-object/from16 v6, p6

    iput-object v6, v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->disks:[Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;

    .line 159
    move-object/from16 v7, p7

    iput-object v7, v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->sharedPaths:[Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;

    .line 160
    move-object/from16 v8, p8

    iput-object v8, v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->displayConfig:Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;

    .line 161
    move/from16 v9, p9

    iput-boolean v9, v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->touch:Z

    .line 162
    move/from16 v10, p10

    iput-boolean v10, v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->keyboard:Z

    .line 163
    move/from16 v11, p11

    iput-boolean v11, v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->mouse:Z

    .line 164
    move/from16 v12, p12

    iput-boolean v12, v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->switches:Z

    .line 165
    move/from16 v13, p13

    iput-boolean v13, v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->network:Z

    .line 166
    move-object/from16 v14, p14

    iput-object v14, v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->gpuConfig:Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;

    .line 167
    move-object/from16 v15, p15

    iput-object v15, v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->audioConfig:Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;

    .line 168
    move/from16 v1, p16

    iput-boolean v1, v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->trackpad:Z

    .line 169
    move/from16 v1, p17

    iput-boolean v1, v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->autoMemoryBalloon:Z

    .line 170
    move-object/from16 v1, p18

    iput-object v1, v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->usbConfig:Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;

    .line 171
    return-void
.end method

.method static blacklist from(Landroid/os/PersistableBundle;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;
    .registers 19
    .param p0, "customImageConfigBundle"    # Landroid/os/PersistableBundle;

    .line 174
    move-object/from16 v0, p0

    new-instance v1, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;

    invoke-direct {v1}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;-><init>()V

    .line 175
    .local v1, "builder":Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;
    const-string v2, "name"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->setName(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;

    .line 176
    const-string v2, "kernel"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->setKernelPath(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;

    .line 177
    const-string v2, "initrd"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->setInitrdPath(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;

    .line 178
    const-string v2, "bootloader"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->setBootloaderPath(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;

    .line 179
    const-string v2, "params"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "params":[Ljava/lang/String;
    if-eqz v2, :cond_3f

    .line 181
    array-length v3, v2

    const/4 v4, 0x0

    :goto_35
    if-ge v4, v3, :cond_3f

    aget-object v5, v2, v4

    .line 182
    .local v5, "param":Ljava/lang/String;
    invoke-virtual {v1, v5}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->addParam(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;

    .line 181
    .end local v5    # "param":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 185
    :cond_3f
    const-string v3, "disk_writables"

    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v3

    .line 186
    .local v3, "writables":[Z
    const-string v4, "disk_images"

    invoke-virtual {v0, v4}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, "diskImages":[Ljava/lang/String;
    if-eqz v3, :cond_101

    if-eqz v4, :cond_101

    .line 188
    array-length v5, v3

    array-length v6, v4

    if-ne v5, v6, :cond_fc

    .line 189
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_54
    array-length v6, v3

    if-ge v5, v6, :cond_f7

    .line 190
    aget-object v6, v4, v5

    .line 191
    .local v6, "diskImage":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_63

    const/4 v7, 0x0

    goto :goto_64

    :cond_63
    move-object v7, v6

    .line 192
    .end local v6    # "diskImage":Ljava/lang/String;
    .local v7, "diskImage":Ljava/lang/String;
    :goto_64
    aget-boolean v6, v3, v5

    if-eqz v6, :cond_6d

    invoke-static {v7}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;->RWDisk(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;

    move-result-object v6

    goto :goto_71

    :cond_6d
    invoke-static {v7}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;->RODisk(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;

    move-result-object v6

    .line 193
    .local v6, "disk":Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;
    :goto_71
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "partition_labels_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 194
    invoke-virtual {v0, v8}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 195
    .local v8, "labels":[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "partition_images_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 196
    invoke-virtual {v0, v9}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 197
    .local v9, "images":[Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "partition_writables_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 198
    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v10

    .line 199
    .local v10, "partitionWritables":[Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "partition_guids_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 200
    invoke-virtual {v0, v11}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 201
    .local v11, "guids":[Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_ce
    array-length v13, v8

    if-ge v12, v13, :cond_ec

    .line 202
    new-instance v13, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Partition;

    aget-object v14, v8, v12

    aget-object v15, v9, v12

    move-object/from16 v16, v2

    .end local v2    # "params":[Ljava/lang/String;
    .local v16, "params":[Ljava/lang/String;
    aget-boolean v2, v10, v12

    move-object/from16 v17, v3

    .end local v3    # "writables":[Z
    .local v17, "writables":[Z
    aget-object v3, v11, v12

    invoke-direct {v13, v14, v15, v2, v3}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Partition;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v6, v13}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;->addPartition(Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Partition;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;

    .line 201
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    goto :goto_ce

    .end local v16    # "params":[Ljava/lang/String;
    .end local v17    # "writables":[Z
    .restart local v2    # "params":[Ljava/lang/String;
    .restart local v3    # "writables":[Z
    :cond_ec
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 206
    .end local v2    # "params":[Ljava/lang/String;
    .end local v3    # "writables":[Z
    .end local v12    # "j":I
    .restart local v16    # "params":[Ljava/lang/String;
    .restart local v17    # "writables":[Z
    invoke-virtual {v1, v6}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->addDisk(Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;

    .line 189
    .end local v6    # "disk":Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;
    .end local v7    # "diskImage":Ljava/lang/String;
    .end local v8    # "labels":[Ljava/lang/String;
    .end local v9    # "images":[Ljava/lang/String;
    .end local v10    # "partitionWritables":[Z
    .end local v11    # "guids":[Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_54

    .end local v16    # "params":[Ljava/lang/String;
    .end local v17    # "writables":[Z
    .restart local v2    # "params":[Ljava/lang/String;
    .restart local v3    # "writables":[Z
    :cond_f7
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .end local v2    # "params":[Ljava/lang/String;
    .end local v3    # "writables":[Z
    .restart local v16    # "params":[Ljava/lang/String;
    .restart local v17    # "writables":[Z
    goto :goto_105

    .line 188
    .end local v5    # "i":I
    .end local v16    # "params":[Ljava/lang/String;
    .end local v17    # "writables":[Z
    .restart local v2    # "params":[Ljava/lang/String;
    .restart local v3    # "writables":[Z
    :cond_fc
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .end local v2    # "params":[Ljava/lang/String;
    .end local v3    # "writables":[Z
    .restart local v16    # "params":[Ljava/lang/String;
    .restart local v17    # "writables":[Z
    goto :goto_105

    .line 187
    .end local v16    # "params":[Ljava/lang/String;
    .end local v17    # "writables":[Z
    .restart local v2    # "params":[Ljava/lang/String;
    .restart local v3    # "writables":[Z
    :cond_101
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 210
    .end local v2    # "params":[Ljava/lang/String;
    .end local v3    # "writables":[Z
    .restart local v16    # "params":[Ljava/lang/String;
    .restart local v17    # "writables":[Z
    :goto_105
    nop

    .line 211
    const-string v2, "display_config"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 212
    .local v2, "displayConfigPb":Landroid/os/PersistableBundle;
    invoke-static {v2}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;->-$$Nest$smfrom(Landroid/os/PersistableBundle;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->setDisplayConfig(Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;

    .line 213
    const-string v3, "touch"

    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->useTouch(Z)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;

    .line 214
    const-string v3, "keyboard"

    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->useKeyboard(Z)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;

    .line 215
    const-string v3, "mouse"

    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->useMouse(Z)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;

    .line 216
    const-string v3, "network"

    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->useNetwork(Z)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;

    .line 217
    const-string v3, "gpu"

    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-static {v3}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->-$$Nest$smfrom(Landroid/os/PersistableBundle;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->setGpuConfig(Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;

    .line 218
    nop

    .line 219
    const-string v3, "audio_config"

    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 220
    .local v3, "audioConfigPb":Landroid/os/PersistableBundle;
    invoke-static {v3}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;->-$$Nest$smfrom(Landroid/os/PersistableBundle;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->setAudioConfig(Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;

    .line 221
    const-string v5, "trackpad"

    invoke-virtual {v0, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v1, v5}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->useTrackpad(Z)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;

    .line 222
    const-string v5, "auto_memory_balloon"

    invoke-virtual {v0, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v1, v5}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->useAutoMemoryBalloon(Z)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;

    .line 223
    nop

    .line 224
    const-string v5, "usb_config"

    invoke-virtual {v0, v5}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v5

    .line 225
    .local v5, "usbConfigPb":Landroid/os/PersistableBundle;
    invoke-static {v5}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;->-$$Nest$smfrom(Landroid/os/PersistableBundle;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->setUsbConfig(Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;

    .line 226
    invoke-virtual {v1}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Builder;->build()Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;

    move-result-object v6

    return-object v6
.end method

.method static synthetic blacklist lambda$toPersistableBundle$0(Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;)Landroid/os/PersistableBundle;
    .registers 2
    .param p0, "dc"    # Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;

    .line 269
    invoke-static {p0}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;->-$$Nest$mtoPersistableBundle(Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$toPersistableBundle$1(Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;)Landroid/os/PersistableBundle;
    .registers 2
    .param p0, "gc"    # Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;

    .line 278
    invoke-static {p0}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->-$$Nest$mtoPersistableBundle(Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$toPersistableBundle$2(Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;)Landroid/os/PersistableBundle;
    .registers 2
    .param p0, "ac"    # Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;

    .line 281
    invoke-static {p0}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;->-$$Nest$mtoPersistableBundle(Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$toPersistableBundle$3(Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;)Landroid/os/PersistableBundle;
    .registers 2
    .param p0, "uc"    # Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;

    .line 286
    invoke-static {p0}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;->-$$Nest$mtoPersistableBundle(Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist getAudioConfig()Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;
    .registers 2

    .line 292
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->audioConfig:Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;

    return-object v0
.end method

.method public blacklist getBootloaderPath()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->bootloaderPath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDisks()[Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;
    .registers 2

    .line 72
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->disks:[Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;

    return-object v0
.end method

.method public blacklist getDisplayConfig()Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;
    .registers 2

    .line 297
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->displayConfig:Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;

    return-object v0
.end method

.method public blacklist getGpuConfig()Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;
    .registers 2

    .line 302
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->gpuConfig:Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;

    return-object v0
.end method

.method public blacklist getInitrdPath()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->initrdPath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getKernelPath()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->kernelPath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getParams()[Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->params:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSharedPaths()[Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;
    .registers 2

    .line 102
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->sharedPaths:[Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;

    return-object v0
.end method

.method public blacklist getUsbConfig()Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;
    .registers 2

    .line 307
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->usbConfig:Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;

    return-object v0
.end method

.method blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 15

    .line 230
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 231
    .local v0, "pb":Landroid/os/PersistableBundle;
    const-string v1, "name"

    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v1, "kernel"

    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->kernelPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v1, "bootloader"

    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->bootloaderPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v1, "initrd"

    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->initrdPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v1, "params"

    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->params:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->disks:[Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;

    if-eqz v1, :cond_fb

    .line 238
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->disks:[Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;

    array-length v1, v1

    new-array v1, v1, [Z

    .line 239
    .local v1, "writables":[Z
    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->disks:[Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    .line 240
    .local v2, "images":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_37
    iget-object v4, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->disks:[Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;

    array-length v4, v4

    if-ge v3, v4, :cond_f1

    .line 241
    iget-object v4, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->disks:[Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;

    aget-object v4, v4, v3

    invoke-static {v4}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;->-$$Nest$fgetwritable(Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;)Z

    move-result v4

    aput-boolean v4, v1, v3

    .line 242
    iget-object v4, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->disks:[Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;

    aget-object v4, v4, v3

    invoke-static {v4}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;->-$$Nest$fgetimagePath(Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;)Ljava/lang/String;

    move-result-object v4

    .line 243
    .local v4, "imagePath":Ljava/lang/String;
    const-string v5, ""

    if-nez v4, :cond_54

    move-object v6, v5

    goto :goto_55

    :cond_54
    move-object v6, v4

    :goto_55
    aput-object v6, v2, v3

    .line 245
    iget-object v6, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->disks:[Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;->getPartitions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 246
    .local v6, "numPartitions":I
    new-array v7, v6, [Ljava/lang/String;

    .line 247
    .local v7, "partitionLabels":[Ljava/lang/String;
    new-array v8, v6, [Ljava/lang/String;

    .line 248
    .local v8, "partitionImages":[Ljava/lang/String;
    new-array v9, v6, [Z

    .line 249
    .local v9, "partitionWritables":[Z
    new-array v10, v6, [Ljava/lang/String;

    .line 251
    .local v10, "partitionGuids":[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_6c
    if-ge v11, v6, :cond_95

    .line 252
    iget-object v12, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->disks:[Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;

    aget-object v12, v12, v3

    invoke-virtual {v12}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;->getPartitions()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Partition;

    .line 253
    .local v12, "p":Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Partition;
    iget-object v13, v12, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Partition;->name:Ljava/lang/String;

    aput-object v13, v7, v11

    .line 254
    iget-object v13, v12, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Partition;->imagePath:Ljava/lang/String;

    aput-object v13, v8, v11

    .line 255
    iget-boolean v13, v12, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Partition;->writable:Z

    aput-boolean v13, v9, v11

    .line 256
    iget-object v13, v12, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Partition;->guid:Ljava/lang/String;

    if-nez v13, :cond_8e

    move-object v13, v5

    goto :goto_90

    :cond_8e
    iget-object v13, v12, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Partition;->guid:Ljava/lang/String;

    :goto_90
    aput-object v13, v10, v11

    .line 251
    .end local v12    # "p":Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Partition;
    add-int/lit8 v11, v11, 0x1

    goto :goto_6c

    .line 258
    .end local v11    # "j":I
    :cond_95
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "partition_labels_"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v7}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 259
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "partition_images_"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v8}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 260
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "partition_writables_"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v9}, Landroid/os/PersistableBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 261
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "partition_guids_"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v10}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 240
    .end local v4    # "imagePath":Ljava/lang/String;
    .end local v6    # "numPartitions":I
    .end local v7    # "partitionLabels":[Ljava/lang/String;
    .end local v8    # "partitionImages":[Ljava/lang/String;
    .end local v9    # "partitionWritables":[Z
    .end local v10    # "partitionGuids":[Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_37

    .line 263
    .end local v3    # "i":I
    :cond_f1
    const-string v3, "disk_writables"

    invoke-virtual {v0, v3, v1}, Landroid/os/PersistableBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 264
    const-string v3, "disk_images"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 266
    .end local v1    # "writables":[Z
    .end local v2    # "images":[Ljava/lang/String;
    :cond_fb
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->displayConfig:Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;

    .line 268
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$$ExternalSyntheticLambda0;-><init>()V

    .line 269
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    .line 270
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    .line 266
    const-string v3, "display_config"

    invoke-virtual {v0, v3, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 271
    const-string v1, "touch"

    iget-boolean v3, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->touch:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 272
    const-string v1, "keyboard"

    iget-boolean v3, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->keyboard:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 273
    const-string v1, "mouse"

    iget-boolean v3, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->mouse:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 274
    const-string v1, "switches"

    iget-boolean v3, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->switches:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 275
    const-string v1, "network"

    iget-boolean v3, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->network:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 276
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->gpuConfig:Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;

    .line 278
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v3, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    .line 276
    const-string v3, "gpu"

    invoke-virtual {v0, v3, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 279
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->audioConfig:Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;

    .line 281
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v3, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    .line 279
    const-string v3, "audio_config"

    invoke-virtual {v0, v3, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 282
    const-string v1, "trackpad"

    iget-boolean v3, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->trackpad:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 283
    const-string v1, "auto_memory_balloon"

    iget-boolean v3, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->autoMemoryBalloon:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 284
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->usbConfig:Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;

    .line 286
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v3, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    .line 284
    const-string v2, "usb_config"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 287
    return-object v0
.end method

.method public blacklist useAutoMemoryBalloon()Z
    .registers 2

    .line 126
    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->autoMemoryBalloon:Z

    return v0
.end method

.method public blacklist useKeyboard()Z
    .registers 2

    .line 110
    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->keyboard:Z

    return v0
.end method

.method public blacklist useMouse()Z
    .registers 2

    .line 114
    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->mouse:Z

    return v0
.end method

.method public blacklist useNetwork()Z
    .registers 2

    .line 130
    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->network:Z

    return v0
.end method

.method public blacklist useSwitches()Z
    .registers 2

    .line 118
    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->switches:Z

    return v0
.end method

.method public blacklist useTouch()Z
    .registers 2

    .line 106
    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->touch:Z

    return v0
.end method

.method public blacklist useTrackpad()Z
    .registers 2

    .line 122
    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->mouse:Z

    return v0
.end method
