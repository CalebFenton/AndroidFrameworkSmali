.class public Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig$Builder;
.super Ljava/lang/Object;
.source "VirtualMachineCustomImageConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist useController:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 664
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig$Builder;->useController:Z

    .line 667
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;
    .registers 3

    .line 677
    new-instance v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;

    iget-boolean v1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig$Builder;->useController:Z

    invoke-direct {v0, v1}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;-><init>(Z)V

    return-object v0
.end method

.method public blacklist setController(Z)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig$Builder;
    .registers 2
    .param p1, "useController"    # Z

    .line 671
    iput-boolean p1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig$Builder;->useController:Z

    .line 672
    return-object p0
.end method
