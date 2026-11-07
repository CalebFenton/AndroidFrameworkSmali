.class public Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig$Builder;
.super Ljava/lang/Object;
.source "VirtualMachineCustomImageConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist height:I

.field private blacklist horizontalDpi:I

.field private blacklist refreshRate:I

.field private blacklist verticalDpi:I

.field private blacklist width:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 844
    const/16 v0, 0x140

    iput v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig$Builder;->horizontalDpi:I

    .line 845
    iput v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig$Builder;->verticalDpi:I

    .line 846
    const/16 v0, 0x3c

    iput v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig$Builder;->refreshRate:I

    .line 849
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;
    .registers 9

    .line 883
    iget v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig$Builder;->width:I

    if-eqz v0, :cond_19

    iget v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig$Builder;->height:I

    if-eqz v0, :cond_19

    .line 886
    new-instance v1, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;

    iget v2, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig$Builder;->width:I

    iget v3, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig$Builder;->height:I

    iget v4, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig$Builder;->horizontalDpi:I

    iget v5, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig$Builder;->verticalDpi:I

    iget v6, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig$Builder;->refreshRate:I

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;-><init>(IIIIILandroid/system/virtualmachine/VirtualMachineCustomImageConfig-IA;)V

    return-object v1

    .line 884
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "width and height must be specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setHeight(I)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig$Builder;
    .registers 2
    .param p1, "height"    # I

    .line 859
    iput p1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig$Builder;->height:I

    .line 860
    return-object p0
.end method

.method public blacklist setHorizontalDpi(I)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig$Builder;
    .registers 2
    .param p1, "horizontalDpi"    # I

    .line 865
    iput p1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig$Builder;->horizontalDpi:I

    .line 866
    return-object p0
.end method

.method public blacklist setRefreshRate(I)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig$Builder;
    .registers 2
    .param p1, "refreshRate"    # I

    .line 877
    iput p1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig$Builder;->refreshRate:I

    .line 878
    return-object p0
.end method

.method public blacklist setVerticalDpi(I)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig$Builder;
    .registers 2
    .param p1, "verticalDpi"    # I

    .line 871
    iput p1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig$Builder;->verticalDpi:I

    .line 872
    return-object p0
.end method

.method public blacklist setWidth(I)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig$Builder;
    .registers 2
    .param p1, "width"    # I

    .line 853
    iput p1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig$Builder;->width:I

    .line 854
    return-object p0
.end method
