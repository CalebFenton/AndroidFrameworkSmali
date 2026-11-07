.class public final Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;
.super Ljava/lang/Object;
.source "VirtualMachineCustomImageConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GpuConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;
    }
.end annotation


# static fields
.field private static final blacklist KEY_BACKEND:Ljava/lang/String; = "backend"

.field private static final blacklist KEY_CONTEXT_TYPES:Ljava/lang/String; = "context_types"

.field private static final blacklist KEY_PCI_ADDRESS:Ljava/lang/String; = "pci_address"

.field private static final blacklist KEY_RENDERER_FEATURES:Ljava/lang/String; = "renderer_features"

.field private static final blacklist KEY_RENDERER_USE_EGL:Ljava/lang/String; = "renderer_use_egl"

.field private static final blacklist KEY_RENDERER_USE_GLES:Ljava/lang/String; = "renderer_use_gles"

.field private static final blacklist KEY_RENDERER_USE_GLX:Ljava/lang/String; = "renderer_use_glx"

.field private static final blacklist KEY_RENDERER_USE_SURFACELESS:Ljava/lang/String; = "renderer_use_surfaceless"

.field private static final blacklist KEY_RENDERER_USE_VULKAN:Ljava/lang/String; = "renderer_use_vulkan"


# instance fields
.field private final blacklist backend:Ljava/lang/String;

.field private final blacklist contextTypes:[Ljava/lang/String;

.field private final blacklist pciAddress:Ljava/lang/String;

.field private final blacklist rendererFeatures:Ljava/lang/String;

.field private final blacklist rendererUseEgl:Z

.field private final blacklist rendererUseGles:Z

.field private final blacklist rendererUseGlx:Z

.field private final blacklist rendererUseSurfaceless:Z

.field private final blacklist rendererUseVulkan:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$mtoPersistableBundle(Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;)Landroid/os/PersistableBundle;
    .registers 1

    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smfrom(Landroid/os/PersistableBundle;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;
    .registers 1

    invoke-static {p0}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->from(Landroid/os/PersistableBundle;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZ)V
    .registers 10
    .param p1, "backend"    # Ljava/lang/String;
    .param p2, "contextTypes"    # [Ljava/lang/String;
    .param p3, "pciAddress"    # Ljava/lang/String;
    .param p4, "rendererFeatures"    # Ljava/lang/String;
    .param p5, "rendererUseEgl"    # Z
    .param p6, "rendererUseGles"    # Z
    .param p7, "rendererUseGlx"    # Z
    .param p8, "rendererUseSurfaceless"    # Z
    .param p9, "rendererUseVulkan"    # Z

    .line 922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 923
    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->backend:Ljava/lang/String;

    .line 924
    iput-object p2, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->contextTypes:[Ljava/lang/String;

    .line 925
    iput-object p3, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->pciAddress:Ljava/lang/String;

    .line 926
    iput-object p4, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->rendererFeatures:Ljava/lang/String;

    .line 927
    iput-boolean p5, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->rendererUseEgl:Z

    .line 928
    iput-boolean p6, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->rendererUseGles:Z

    .line 929
    iput-boolean p7, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->rendererUseGlx:Z

    .line 930
    iput-boolean p8, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->rendererUseSurfaceless:Z

    .line 931
    iput-boolean p9, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->rendererUseVulkan:Z

    .line 932
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLandroid/system/virtualmachine/VirtualMachineCustomImageConfig-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    return-void
.end method

.method private static blacklist from(Landroid/os/PersistableBundle;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;
    .registers 3
    .param p0, "pb"    # Landroid/os/PersistableBundle;

    .line 995
    if-nez p0, :cond_4

    .line 996
    const/4 v0, 0x0

    return-object v0

    .line 998
    :cond_4
    new-instance v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;

    invoke-direct {v0}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;-><init>()V

    .line 999
    .local v0, "builder":Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;
    const-string v1, "backend"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;->setBackend(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;

    .line 1000
    const-string v1, "context_types"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;->setContextTypes([Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;

    .line 1001
    const-string v1, "pci_address"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;->setPciAddress(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;

    .line 1002
    const-string v1, "renderer_features"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;->setRendererFeatures(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;

    .line 1003
    const-string v1, "renderer_use_egl"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;->setRendererUseEgl(Ljava/lang/Boolean;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;

    .line 1004
    const-string v1, "renderer_use_gles"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;->setRendererUseGles(Ljava/lang/Boolean;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;

    .line 1005
    const-string v1, "renderer_use_glx"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;->setRendererUseGlx(Ljava/lang/Boolean;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;

    .line 1006
    const-string v1, "renderer_use_surfaceless"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;->setRendererUseSurfaceless(Ljava/lang/Boolean;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;

    .line 1007
    const-string v1, "renderer_use_vulkan"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;->setRendererUseVulkan(Ljava/lang/Boolean;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;

    .line 1008
    invoke-virtual {v0}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig$Builder;->build()Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;

    move-result-object v1

    return-object v1
.end method

.method private blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 4

    .line 1012
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 1013
    .local v0, "pb":Landroid/os/PersistableBundle;
    const-string v1, "backend"

    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->backend:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    const-string v1, "context_types"

    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->contextTypes:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1015
    const-string v1, "pci_address"

    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->pciAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    const-string v1, "renderer_features"

    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->rendererFeatures:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    const-string v1, "renderer_use_egl"

    iget-boolean v2, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->rendererUseEgl:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1018
    const-string v1, "renderer_use_gles"

    iget-boolean v2, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->rendererUseGles:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1019
    const-string v1, "renderer_use_glx"

    iget-boolean v2, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->rendererUseGlx:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1020
    const-string v1, "renderer_use_surfaceless"

    iget-boolean v2, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->rendererUseSurfaceless:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1021
    const-string v1, "renderer_use_vulkan"

    iget-boolean v2, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->rendererUseVulkan:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1022
    return-object v0
.end method


# virtual methods
.method public blacklist getBackend()Ljava/lang/String;
    .registers 2

    .line 936
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->backend:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getContextTypes()[Ljava/lang/String;
    .registers 2

    .line 941
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->contextTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPciAddress()Ljava/lang/String;
    .registers 2

    .line 946
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->pciAddress:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRendererFeatures()Ljava/lang/String;
    .registers 2

    .line 951
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->rendererFeatures:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRendererUseEgl()Z
    .registers 2

    .line 956
    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->rendererUseEgl:Z

    return v0
.end method

.method public blacklist getRendererUseGles()Z
    .registers 2

    .line 961
    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->rendererUseGles:Z

    return v0
.end method

.method public blacklist getRendererUseGlx()Z
    .registers 2

    .line 966
    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->rendererUseGlx:Z

    return v0
.end method

.method public blacklist getRendererUseSurfaceless()Z
    .registers 2

    .line 971
    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->rendererUseSurfaceless:Z

    return v0
.end method

.method public blacklist getRendererUseVulkan()Z
    .registers 2

    .line 976
    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->rendererUseVulkan:Z

    return v0
.end method

.method blacklist toParcelable()Landroid/system/virtualizationservice/GpuConfig;
    .registers 3

    .line 980
    new-instance v0, Landroid/system/virtualizationservice/GpuConfig;

    invoke-direct {v0}, Landroid/system/virtualizationservice/GpuConfig;-><init>()V

    .line 982
    .local v0, "parcelable":Landroid/system/virtualizationservice/GpuConfig;
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->backend:Ljava/lang/String;

    iput-object v1, v0, Landroid/system/virtualizationservice/GpuConfig;->backend:Ljava/lang/String;

    .line 983
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->contextTypes:[Ljava/lang/String;

    iput-object v1, v0, Landroid/system/virtualizationservice/GpuConfig;->contextTypes:[Ljava/lang/String;

    .line 984
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->pciAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/system/virtualizationservice/GpuConfig;->pciAddress:Ljava/lang/String;

    .line 985
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->rendererFeatures:Ljava/lang/String;

    iput-object v1, v0, Landroid/system/virtualizationservice/GpuConfig;->rendererFeatures:Ljava/lang/String;

    .line 986
    iget-boolean v1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->rendererUseEgl:Z

    iput-boolean v1, v0, Landroid/system/virtualizationservice/GpuConfig;->rendererUseEgl:Z

    .line 987
    iget-boolean v1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->rendererUseGles:Z

    iput-boolean v1, v0, Landroid/system/virtualizationservice/GpuConfig;->rendererUseGles:Z

    .line 988
    iget-boolean v1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->rendererUseGlx:Z

    iput-boolean v1, v0, Landroid/system/virtualizationservice/GpuConfig;->rendererUseGlx:Z

    .line 989
    iget-boolean v1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->rendererUseSurfaceless:Z

    iput-boolean v1, v0, Landroid/system/virtualizationservice/GpuConfig;->rendererUseSurfaceless:Z

    .line 990
    iget-boolean v1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->rendererUseVulkan:Z

    iput-boolean v1, v0, Landroid/system/virtualizationservice/GpuConfig;->rendererUseVulkan:Z

    .line 991
    return-object v0
.end method
