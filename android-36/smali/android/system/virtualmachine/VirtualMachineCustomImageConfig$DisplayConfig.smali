.class public final Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;
.super Ljava/lang/Object;
.source "VirtualMachineCustomImageConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig$Builder;
    }
.end annotation


# static fields
.field private static final blacklist KEY_HEIGHT:Ljava/lang/String; = "height"

.field private static final blacklist KEY_HORIZONTAL_DPI:Ljava/lang/String; = "horizontal_dpi"

.field private static final blacklist KEY_REFRESH_RATE:Ljava/lang/String; = "refresh_rate"

.field private static final blacklist KEY_VERTICAL_DPI:Ljava/lang/String; = "vertical_dpi"

.field private static final blacklist KEY_WIDTH:Ljava/lang/String; = "width"


# instance fields
.field private final blacklist height:I

.field private final blacklist horizontalDpi:I

.field private final blacklist refreshRate:I

.field private final blacklist verticalDpi:I

.field private final blacklist width:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mtoPersistableBundle(Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;)Landroid/os/PersistableBundle;
    .registers 1

    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smfrom(Landroid/os/PersistableBundle;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;
    .registers 1

    invoke-static {p0}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;->from(Landroid/os/PersistableBundle;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(IIIII)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "horizontalDpi"    # I
    .param p4, "verticalDpi"    # I
    .param p5, "refreshRate"    # I

    .line 771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 772
    iput p1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;->width:I

    .line 773
    iput p2, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;->height:I

    .line 774
    iput p3, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;->horizontalDpi:I

    .line 775
    iput p4, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;->verticalDpi:I

    .line 776
    iput p5, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;->refreshRate:I

    .line 777
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIILandroid/system/virtualmachine/VirtualMachineCustomImageConfig-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;-><init>(IIIII)V

    return-void
.end method

.method private static blacklist from(Landroid/os/PersistableBundle;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;
    .registers 3
    .param p0, "pb"    # Landroid/os/PersistableBundle;

    .line 817
    if-nez p0, :cond_4

    .line 818
    const/4 v0, 0x0

    return-object v0

    .line 820
    :cond_4
    new-instance v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig$Builder;

    invoke-direct {v0}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig$Builder;-><init>()V

    .line 821
    .local v0, "builder":Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig$Builder;
    const-string v1, "width"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig$Builder;->setWidth(I)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig$Builder;

    .line 822
    const-string v1, "height"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig$Builder;->setHeight(I)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig$Builder;

    .line 823
    const-string v1, "horizontal_dpi"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig$Builder;->setHorizontalDpi(I)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig$Builder;

    .line 824
    const-string v1, "vertical_dpi"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig$Builder;->setVerticalDpi(I)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig$Builder;

    .line 825
    const-string v1, "refresh_rate"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig$Builder;->setRefreshRate(I)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig$Builder;

    .line 826
    invoke-virtual {v0}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig$Builder;->build()Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;

    move-result-object v1

    return-object v1
.end method

.method private blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 4

    .line 830
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 831
    .local v0, "pb":Landroid/os/PersistableBundle;
    const-string v1, "width"

    iget v2, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;->width:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 832
    const-string v1, "height"

    iget v2, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 833
    const-string v1, "horizontal_dpi"

    iget v2, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;->horizontalDpi:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 834
    const-string v1, "vertical_dpi"

    iget v2, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;->verticalDpi:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 835
    const-string v1, "refresh_rate"

    iget v2, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;->refreshRate:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 836
    return-object v0
.end method


# virtual methods
.method public blacklist getHeight()I
    .registers 2

    .line 786
    iget v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;->height:I

    return v0
.end method

.method public blacklist getHorizontalDpi()I
    .registers 2

    .line 791
    iget v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;->horizontalDpi:I

    return v0
.end method

.method public blacklist getRefreshRate()I
    .registers 2

    .line 801
    iget v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;->refreshRate:I

    return v0
.end method

.method public blacklist getVerticalDpi()I
    .registers 2

    .line 796
    iget v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;->verticalDpi:I

    return v0
.end method

.method public blacklist getWidth()I
    .registers 2

    .line 781
    iget v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;->width:I

    return v0
.end method

.method blacklist toParcelable()Landroid/system/virtualizationservice/DisplayConfig;
    .registers 3

    .line 805
    new-instance v0, Landroid/system/virtualizationservice/DisplayConfig;

    invoke-direct {v0}, Landroid/system/virtualizationservice/DisplayConfig;-><init>()V

    .line 807
    .local v0, "parcelable":Landroid/system/virtualizationservice/DisplayConfig;
    iget v1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;->width:I

    iput v1, v0, Landroid/system/virtualizationservice/DisplayConfig;->width:I

    .line 808
    iget v1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;->height:I

    iput v1, v0, Landroid/system/virtualizationservice/DisplayConfig;->height:I

    .line 809
    iget v1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;->horizontalDpi:I

    iput v1, v0, Landroid/system/virtualizationservice/DisplayConfig;->horizontalDpi:I

    .line 810
    iget v1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;->verticalDpi:I

    iput v1, v0, Landroid/system/virtualizationservice/DisplayConfig;->verticalDpi:I

    .line 811
    iget v1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;->refreshRate:I

    iput v1, v0, Landroid/system/virtualizationservice/DisplayConfig;->refreshRate:I

    .line 813
    return-object v0
.end method
