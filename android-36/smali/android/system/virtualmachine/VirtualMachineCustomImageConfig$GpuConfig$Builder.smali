.class public Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;
.super Ljava/lang/Object;
.source "VirtualMachineCustomImageConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist backend:Ljava/lang/String;

.field private blacklist contextTypes:[Ljava/lang/String;

.field private blacklist pciAddress:Ljava/lang/String;

.field private blacklist rendererFeatures:Ljava/lang/String;

.field private blacklist rendererUseEgl:Z

.field private blacklist rendererUseGles:Z

.field private blacklist rendererUseGlx:Z

.field private blacklist rendererUseSurfaceless:Z

.field private blacklist rendererUseVulkan:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 1038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1031
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;->rendererUseEgl:Z

    .line 1032
    iput-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;->rendererUseGles:Z

    .line 1033
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;->rendererUseGlx:Z

    .line 1034
    iput-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;->rendererUseSurfaceless:Z

    .line 1035
    iput-boolean v1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;->rendererUseVulkan:Z

    .line 1038
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;
    .registers 12

    .line 1096
    new-instance v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;

    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;->backend:Ljava/lang/String;

    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;->contextTypes:[Ljava/lang/String;

    iget-object v3, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;->pciAddress:Ljava/lang/String;

    iget-object v4, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;->rendererFeatures:Ljava/lang/String;

    iget-boolean v5, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;->rendererUseEgl:Z

    iget-boolean v6, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;->rendererUseGles:Z

    iget-boolean v7, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;->rendererUseGlx:Z

    iget-boolean v8, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;->rendererUseSurfaceless:Z

    iget-boolean v9, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;->rendererUseVulkan:Z

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLandroid/system/virtualmachine/VirtualMachineCustomImageConfig-IA;)V

    return-object v0
.end method

.method public blacklist setBackend(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;
    .registers 2
    .param p1, "backend"    # Ljava/lang/String;

    .line 1042
    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;->backend:Ljava/lang/String;

    .line 1043
    return-object p0
.end method

.method public blacklist setContextTypes([Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;
    .registers 2
    .param p1, "contextTypes"    # [Ljava/lang/String;

    .line 1048
    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;->contextTypes:[Ljava/lang/String;

    .line 1049
    return-object p0
.end method

.method public blacklist setPciAddress(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;
    .registers 2
    .param p1, "pciAddress"    # Ljava/lang/String;

    .line 1054
    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;->pciAddress:Ljava/lang/String;

    .line 1055
    return-object p0
.end method

.method public blacklist setRendererFeatures(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;
    .registers 2
    .param p1, "rendererFeatures"    # Ljava/lang/String;

    .line 1060
    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;->rendererFeatures:Ljava/lang/String;

    .line 1061
    return-object p0
.end method

.method public blacklist setRendererUseEgl(Ljava/lang/Boolean;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;
    .registers 3
    .param p1, "rendererUseEgl"    # Ljava/lang/Boolean;

    .line 1066
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;->rendererUseEgl:Z

    .line 1067
    return-object p0
.end method

.method public blacklist setRendererUseGles(Ljava/lang/Boolean;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;
    .registers 3
    .param p1, "rendererUseGles"    # Ljava/lang/Boolean;

    .line 1072
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;->rendererUseGles:Z

    .line 1073
    return-object p0
.end method

.method public blacklist setRendererUseGlx(Ljava/lang/Boolean;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;
    .registers 3
    .param p1, "rendererUseGlx"    # Ljava/lang/Boolean;

    .line 1078
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;->rendererUseGlx:Z

    .line 1079
    return-object p0
.end method

.method public blacklist setRendererUseSurfaceless(Ljava/lang/Boolean;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;
    .registers 3
    .param p1, "rendererUseSurfaceless"    # Ljava/lang/Boolean;

    .line 1084
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;->rendererUseSurfaceless:Z

    .line 1085
    return-object p0
.end method

.method public blacklist setRendererUseVulkan(Ljava/lang/Boolean;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;
    .registers 3
    .param p1, "rendererUseVulkan"    # Ljava/lang/Boolean;

    .line 1090
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;->rendererUseVulkan:Z

    .line 1091
    return-object p0
.end method
