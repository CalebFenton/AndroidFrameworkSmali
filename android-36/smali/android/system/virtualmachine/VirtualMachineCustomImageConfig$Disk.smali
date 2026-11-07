.class public final Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;
.super Ljava/lang/Object;
.source "VirtualMachineCustomImageConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Disk"
.end annotation


# instance fields
.field private final blacklist imagePath:Ljava/lang/String;

.field private final blacklist partitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Partition;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist writable:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetimagePath(Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;->imagePath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetwritable(Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;->writable:Z

    return p0
.end method

.method private constructor blacklist <init>(ZLjava/lang/String;)V
    .registers 4
    .param p1, "writable"    # Z
    .param p2, "imagePath"    # Ljava/lang/String;

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput-boolean p1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;->writable:Z

    .line 420
    iput-object p2, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;->imagePath:Ljava/lang/String;

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;->partitions:Ljava/util/List;

    .line 422
    return-void
.end method

.method public static blacklist RODisk(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;
    .registers 3
    .param p0, "imagePath"    # Ljava/lang/String;

    .line 431
    new-instance v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method public static blacklist RWDisk(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;
    .registers 3
    .param p0, "imagePath"    # Ljava/lang/String;

    .line 426
    new-instance v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public blacklist addPartition(Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Partition;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;
    .registers 3
    .param p1, "p"    # Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Partition;

    .line 446
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;->partitions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    return-object p0
.end method

.method public blacklist getImagePath()Ljava/lang/String;
    .registers 2

    .line 441
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPartitions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Partition;",
            ">;"
        }
    .end annotation

    .line 452
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;->partitions:Ljava/util/List;

    return-object v0
.end method

.method public blacklist isWritable()Z
    .registers 2

    .line 436
    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;->writable:Z

    return v0
.end method
