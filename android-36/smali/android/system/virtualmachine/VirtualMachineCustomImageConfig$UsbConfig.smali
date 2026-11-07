.class public final Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;
.super Ljava/lang/Object;
.source "VirtualMachineCustomImageConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UsbConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig$Builder;
    }
.end annotation


# static fields
.field private static final blacklist KEY_USE_CONTROLLER:Ljava/lang/String; = "use_controller"


# instance fields
.field public final blacklist controller:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$mtoPersistableBundle(Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;)Landroid/os/PersistableBundle;
    .registers 1

    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smfrom(Landroid/os/PersistableBundle;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;
    .registers 1

    invoke-static {p0}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;->from(Landroid/os/PersistableBundle;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Z)V
    .registers 2
    .param p1, "controller"    # Z

    .line 632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 633
    iput-boolean p1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;->controller:Z

    .line 634
    return-void
.end method

.method private static blacklist from(Landroid/os/PersistableBundle;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;
    .registers 3
    .param p0, "pb"    # Landroid/os/PersistableBundle;

    .line 648
    if-nez p0, :cond_4

    .line 649
    const/4 v0, 0x0

    return-object v0

    .line 651
    :cond_4
    new-instance v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig$Builder;

    invoke-direct {v0}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig$Builder;-><init>()V

    .line 652
    .local v0, "builder":Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig$Builder;
    const-string v1, "use_controller"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig$Builder;->setController(Z)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig$Builder;

    .line 653
    invoke-virtual {v0}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig$Builder;->build()Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;

    move-result-object v1

    return-object v1
.end method

.method private blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 4

    .line 657
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 658
    .local v0, "pb":Landroid/os/PersistableBundle;
    const-string v1, "use_controller"

    iget-boolean v2, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;->controller:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 659
    return-object v0
.end method


# virtual methods
.method public blacklist getUsbController()Z
    .registers 2

    .line 637
    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;->controller:Z

    return v0
.end method

.method blacklist toParceclable()Landroid/system/virtualizationservice/UsbConfig;
    .registers 3

    .line 641
    new-instance v0, Landroid/system/virtualizationservice/UsbConfig;

    invoke-direct {v0}, Landroid/system/virtualizationservice/UsbConfig;-><init>()V

    .line 643
    .local v0, "parcelable":Landroid/system/virtualizationservice/UsbConfig;
    iget-boolean v1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;->controller:Z

    iput-boolean v1, v0, Landroid/system/virtualizationservice/UsbConfig;->controller:Z

    .line 644
    return-object v0
.end method
