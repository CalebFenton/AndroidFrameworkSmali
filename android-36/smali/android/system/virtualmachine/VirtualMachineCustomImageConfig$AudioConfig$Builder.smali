.class public Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig$Builder;
.super Ljava/lang/Object;
.source "VirtualMachineCustomImageConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist useMicrophone:Z

.field private blacklist useSpeaker:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig$Builder;->useMicrophone:Z

    .line 733
    iput-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig$Builder;->useSpeaker:Z

    .line 736
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;
    .registers 5

    .line 752
    new-instance v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;

    iget-boolean v1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig$Builder;->useMicrophone:Z

    iget-boolean v2, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig$Builder;->useSpeaker:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;-><init>(ZZLandroid/system/virtualmachine/VirtualMachineCustomImageConfig-IA;)V

    return-object v0
.end method

.method public blacklist setUseMicrophone(Z)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig$Builder;
    .registers 2
    .param p1, "useMicrophone"    # Z

    .line 740
    iput-boolean p1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig$Builder;->useMicrophone:Z

    .line 741
    return-object p0
.end method

.method public blacklist setUseSpeaker(Z)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig$Builder;
    .registers 2
    .param p1, "useSpeaker"    # Z

    .line 746
    iput-boolean p1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig$Builder;->useSpeaker:Z

    .line 747
    return-object p0
.end method
