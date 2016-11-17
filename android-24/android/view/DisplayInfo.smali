.class public final Landroid/view/DisplayInfo;
.super Ljava/lang/Object;
.source "DisplayInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/DisplayInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/DisplayInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public address:Ljava/lang/String;

.field public appHeight:I

.field public appVsyncOffsetNanos:J

.field public appWidth:I

.field public colorTransformId:I

.field public defaultColorTransformId:I

.field public defaultModeId:I

.field public flags:I

.field public hdrCapabilities:Landroid/view/Display$HdrCapabilities;

.field public largestNominalAppHeight:I

.field public largestNominalAppWidth:I

.field public layerStack:I

.field public logicalDensityDpi:I

.field public logicalHeight:I

.field public logicalWidth:I

.field public modeId:I

.field public name:Ljava/lang/String;

.field public overscanBottom:I

.field public overscanLeft:I

.field public overscanRight:I

.field public overscanTop:I

.field public ownerPackageName:Ljava/lang/String;

.field public ownerUid:I

.field public physicalXDpi:F

.field public physicalYDpi:F

.field public presentationDeadlineNanos:J

.field public rotation:I

.field public smallestNominalAppHeight:I

.field public smallestNominalAppWidth:I

.field public state:I

.field public supportedColorTransforms:[Landroid/view/Display$ColorTransform;

.field public supportedModes:[Landroid/view/Display$Mode;

.field public type:I

.field public uniqueId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 244
    new-instance v0, Landroid/view/DisplayInfo$1;

    #@2
    invoke-direct {v0}, Landroid/view/DisplayInfo$1;-><init>()V

    #@5
    sput-object v0, Landroid/view/DisplayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 170
    sget-object v0, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    #@5
    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@7
    .line 179
    sget-object v0, Landroid/view/Display$ColorTransform;->EMPTY_ARRAY:[Landroid/view/Display$ColorTransform;

    #@9
    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    #@b
    .line 256
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 170
    sget-object v0, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    #@5
    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@7
    .line 179
    sget-object v0, Landroid/view/Display$ColorTransform;->EMPTY_ARRAY:[Landroid/view/Display$ColorTransform;

    #@9
    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    #@b
    .line 264
    invoke-virtual {p0, p1}, Landroid/view/DisplayInfo;->readFromParcel(Landroid/os/Parcel;)V

    #@e
    .line 263
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/DisplayInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/DisplayInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/view/DisplayInfo;)V
    .locals 1
    .param p1, "other"    # Landroid/view/DisplayInfo;

    #@0
    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 170
    sget-object v0, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    #@5
    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@7
    .line 179
    sget-object v0, Landroid/view/Display$ColorTransform;->EMPTY_ARRAY:[Landroid/view/Display$ColorTransform;

    #@9
    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    #@b
    .line 260
    invoke-virtual {p0, p1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    #@e
    .line 259
    return-void
.end method

.method private findColorTransform(I)Landroid/view/Display$ColorTransform;
    .locals 5
    .param p1, "colorTransformId"    # I

    #@0
    .prologue
    .line 508
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/view/DisplayInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    #@3
    array-length v2, v2

    #@4
    if-ge v1, v2, :cond_1

    #@6
    .line 509
    iget-object v2, p0, Landroid/view/DisplayInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    #@8
    aget-object v0, v2, v1

    #@a
    .line 510
    .local v0, "colorTransform":Landroid/view/Display$ColorTransform;
    invoke-virtual {v0}, Landroid/view/Display$ColorTransform;->getId()I

    #@d
    move-result v2

    #@e
    if-ne v2, p1, :cond_0

    #@10
    .line 511
    return-object v0

    #@11
    .line 508
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 514
    .end local v0    # "colorTransform":Landroid/view/Display$ColorTransform;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    #@16
    new-instance v3, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v4, "Unable to locate color transform: "

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v2
.end method

.method private findMode(I)Landroid/view/Display$Mode;
    .locals 4
    .param p1, "id"    # I

    #@0
    .prologue
    .line 453
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 454
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@8
    aget-object v1, v1, v0

    #@a
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    #@d
    move-result v1

    #@e
    if-ne v1, p1, :cond_0

    #@10
    .line 455
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@12
    aget-object v1, v1, v0

    #@14
    return-object v1

    #@15
    .line 453
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 458
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    #@1a
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v3, "Unable to locate mode "

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@31
    throw v1
.end method

.method private static flagsToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "flags"    # I

    #@0
    .prologue
    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 658
    .local v0, "result":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x2

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 659
    const-string/jumbo v1, ", FLAG_SECURE"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 661
    :cond_0
    and-int/lit8 v1, p0, 0x1

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 662
    const-string/jumbo v1, ", FLAG_SUPPORTS_PROTECTED_BUFFERS"

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 664
    :cond_1
    and-int/lit8 v1, p0, 0x4

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 665
    const-string/jumbo v1, ", FLAG_PRIVATE"

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 667
    :cond_2
    and-int/lit8 v1, p0, 0x8

    #@25
    if-eqz v1, :cond_3

    #@27
    .line 668
    const-string/jumbo v1, ", FLAG_PRESENTATION"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 670
    :cond_3
    const/high16 v1, 0x40000000    # 2.0f

    #@2f
    and-int/2addr v1, p0

    #@30
    if-eqz v1, :cond_4

    #@32
    .line 671
    const-string/jumbo v1, ", FLAG_SCALING_DISABLED"

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 673
    :cond_4
    and-int/lit8 v1, p0, 0x10

    #@3a
    if-eqz v1, :cond_5

    #@3c
    .line 674
    const-string/jumbo v1, ", FLAG_ROUND"

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    .line 676
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    return-object v1
.end method

.method private getMetricsWithSize(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;II)V
    .locals 3
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "configuration"    # Landroid/content/res/Configuration;
    .param p4, "width"    # I
    .param p5, "height"    # I

    #@0
    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    #@2
    .line 555
    iget v0, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    #@4
    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    #@6
    iput v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    #@8
    .line 557
    iget v0, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    #@a
    int-to-float v0, v0

    #@b
    const v1, 0x3bcccccd    # 0.00625f

    #@e
    mul-float/2addr v0, v1

    #@f
    .line 556
    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    #@11
    iput v0, p1, Landroid/util/DisplayMetrics;->density:F

    #@13
    .line 558
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    #@15
    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    #@17
    iput v0, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    #@19
    .line 559
    iget v0, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    #@1b
    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    #@1d
    iput v0, p1, Landroid/util/DisplayMetrics;->xdpi:F

    #@1f
    .line 560
    iget v0, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    #@21
    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    #@23
    iput v0, p1, Landroid/util/DisplayMetrics;->ydpi:F

    #@25
    .line 562
    if-eqz p3, :cond_0

    #@27
    .line 563
    iget v0, p3, Landroid/content/res/Configuration;->screenWidthDp:I

    #@29
    if-eqz v0, :cond_0

    #@2b
    .line 564
    iget v0, p3, Landroid/content/res/Configuration;->screenWidthDp:I

    #@2d
    int-to-float v0, v0

    #@2e
    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    #@30
    mul-float/2addr v0, v1

    #@31
    add-float/2addr v0, v2

    #@32
    float-to-int p4, v0

    #@33
    .line 565
    :cond_0
    if-eqz p3, :cond_1

    #@35
    .line 566
    iget v0, p3, Landroid/content/res/Configuration;->screenHeightDp:I

    #@37
    if-eqz v0, :cond_1

    #@39
    .line 567
    iget v0, p3, Landroid/content/res/Configuration;->screenHeightDp:I

    #@3b
    int-to-float v0, v0

    #@3c
    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    #@3e
    mul-float/2addr v0, v1

    #@3f
    add-float/2addr v0, v2

    #@40
    float-to-int p5, v0

    #@41
    .line 569
    :cond_1
    iput p4, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    #@43
    iput p4, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    #@45
    .line 570
    iput p5, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    #@47
    iput p5, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    #@49
    .line 572
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    #@4b
    invoke-virtual {p2, v0}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v0

    #@4f
    if-nez v0, :cond_2

    #@51
    .line 573
    invoke-virtual {p2, p1}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    #@54
    .line 554
    :cond_2
    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/view/DisplayInfo;)V
    .locals 2
    .param p1, "other"    # Landroid/view/DisplayInfo;

    #@0
    .prologue
    .line 313
    iget v0, p1, Landroid/view/DisplayInfo;->layerStack:I

    #@2
    iput v0, p0, Landroid/view/DisplayInfo;->layerStack:I

    #@4
    .line 314
    iget v0, p1, Landroid/view/DisplayInfo;->flags:I

    #@6
    iput v0, p0, Landroid/view/DisplayInfo;->flags:I

    #@8
    .line 315
    iget v0, p1, Landroid/view/DisplayInfo;->type:I

    #@a
    iput v0, p0, Landroid/view/DisplayInfo;->type:I

    #@c
    .line 316
    iget-object v0, p1, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    #@e
    iput-object v0, p0, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    #@10
    .line 317
    iget-object v0, p1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    #@12
    iput-object v0, p0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    #@14
    .line 318
    iget-object v0, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    #@16
    iput-object v0, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    #@18
    .line 319
    iget v0, p1, Landroid/view/DisplayInfo;->appWidth:I

    #@1a
    iput v0, p0, Landroid/view/DisplayInfo;->appWidth:I

    #@1c
    .line 320
    iget v0, p1, Landroid/view/DisplayInfo;->appHeight:I

    #@1e
    iput v0, p0, Landroid/view/DisplayInfo;->appHeight:I

    #@20
    .line 321
    iget v0, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    #@22
    iput v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    #@24
    .line 322
    iget v0, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    #@26
    iput v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    #@28
    .line 323
    iget v0, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    #@2a
    iput v0, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    #@2c
    .line 324
    iget v0, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    #@2e
    iput v0, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    #@30
    .line 325
    iget v0, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    #@32
    iput v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    #@34
    .line 326
    iget v0, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    #@36
    iput v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    #@38
    .line 327
    iget v0, p1, Landroid/view/DisplayInfo;->overscanLeft:I

    #@3a
    iput v0, p0, Landroid/view/DisplayInfo;->overscanLeft:I

    #@3c
    .line 328
    iget v0, p1, Landroid/view/DisplayInfo;->overscanTop:I

    #@3e
    iput v0, p0, Landroid/view/DisplayInfo;->overscanTop:I

    #@40
    .line 329
    iget v0, p1, Landroid/view/DisplayInfo;->overscanRight:I

    #@42
    iput v0, p0, Landroid/view/DisplayInfo;->overscanRight:I

    #@44
    .line 330
    iget v0, p1, Landroid/view/DisplayInfo;->overscanBottom:I

    #@46
    iput v0, p0, Landroid/view/DisplayInfo;->overscanBottom:I

    #@48
    .line 331
    iget v0, p1, Landroid/view/DisplayInfo;->rotation:I

    #@4a
    iput v0, p0, Landroid/view/DisplayInfo;->rotation:I

    #@4c
    .line 332
    iget v0, p1, Landroid/view/DisplayInfo;->modeId:I

    #@4e
    iput v0, p0, Landroid/view/DisplayInfo;->modeId:I

    #@50
    .line 333
    iget v0, p1, Landroid/view/DisplayInfo;->defaultModeId:I

    #@52
    iput v0, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    #@54
    .line 334
    iget-object v0, p1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@56
    iget-object v1, p1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@58
    array-length v1, v1

    #@59
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@5c
    move-result-object v0

    #@5d
    check-cast v0, [Landroid/view/Display$Mode;

    #@5f
    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@61
    .line 335
    iget v0, p1, Landroid/view/DisplayInfo;->colorTransformId:I

    #@63
    iput v0, p0, Landroid/view/DisplayInfo;->colorTransformId:I

    #@65
    .line 336
    iget v0, p1, Landroid/view/DisplayInfo;->defaultColorTransformId:I

    #@67
    iput v0, p0, Landroid/view/DisplayInfo;->defaultColorTransformId:I

    #@69
    .line 338
    iget-object v0, p1, Landroid/view/DisplayInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    #@6b
    iget-object v1, p1, Landroid/view/DisplayInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    #@6d
    array-length v1, v1

    #@6e
    .line 337
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@71
    move-result-object v0

    #@72
    check-cast v0, [Landroid/view/Display$ColorTransform;

    #@74
    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    #@76
    .line 339
    iget-object v0, p1, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    #@78
    iput-object v0, p0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    #@7a
    .line 340
    iget v0, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    #@7c
    iput v0, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    #@7e
    .line 341
    iget v0, p1, Landroid/view/DisplayInfo;->physicalXDpi:F

    #@80
    iput v0, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    #@82
    .line 342
    iget v0, p1, Landroid/view/DisplayInfo;->physicalYDpi:F

    #@84
    iput v0, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    #@86
    .line 343
    iget-wide v0, p1, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    #@88
    iput-wide v0, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    #@8a
    .line 344
    iget-wide v0, p1, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    #@8c
    iput-wide v0, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    #@8e
    .line 345
    iget v0, p1, Landroid/view/DisplayInfo;->state:I

    #@90
    iput v0, p0, Landroid/view/DisplayInfo;->state:I

    #@92
    .line 346
    iget v0, p1, Landroid/view/DisplayInfo;->ownerUid:I

    #@94
    iput v0, p0, Landroid/view/DisplayInfo;->ownerUid:I

    #@96
    .line 347
    iget-object v0, p1, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    #@98
    iput-object v0, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    #@9a
    .line 312
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 441
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Landroid/view/DisplayInfo;)Z
    .locals 4
    .param p1, "other"    # Landroid/view/DisplayInfo;

    #@0
    .prologue
    .line 273
    if-eqz p1, :cond_0

    #@2
    .line 274
    iget v0, p0, Landroid/view/DisplayInfo;->layerStack:I

    #@4
    iget v1, p1, Landroid/view/DisplayInfo;->layerStack:I

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 275
    iget v0, p0, Landroid/view/DisplayInfo;->flags:I

    #@a
    iget v1, p1, Landroid/view/DisplayInfo;->flags:I

    #@c
    if-ne v0, v1, :cond_0

    #@e
    .line 276
    iget v0, p0, Landroid/view/DisplayInfo;->type:I

    #@10
    iget v1, p1, Landroid/view/DisplayInfo;->type:I

    #@12
    if-ne v0, v1, :cond_0

    #@14
    .line 277
    iget-object v0, p0, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    #@16
    iget-object v1, p1, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    #@18
    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    .line 273
    if-eqz v0, :cond_0

    #@1e
    .line 278
    iget-object v0, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    #@20
    iget-object v1, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    #@22
    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@25
    move-result v0

    #@26
    .line 273
    if-eqz v0, :cond_0

    #@28
    .line 279
    iget v0, p0, Landroid/view/DisplayInfo;->appWidth:I

    #@2a
    iget v1, p1, Landroid/view/DisplayInfo;->appWidth:I

    #@2c
    if-ne v0, v1, :cond_0

    #@2e
    .line 280
    iget v0, p0, Landroid/view/DisplayInfo;->appHeight:I

    #@30
    iget v1, p1, Landroid/view/DisplayInfo;->appHeight:I

    #@32
    if-ne v0, v1, :cond_0

    #@34
    .line 281
    iget v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    #@36
    iget v1, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    #@38
    if-ne v0, v1, :cond_0

    #@3a
    .line 282
    iget v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    #@3c
    iget v1, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    #@3e
    if-ne v0, v1, :cond_0

    #@40
    .line 283
    iget v0, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    #@42
    iget v1, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    #@44
    if-ne v0, v1, :cond_0

    #@46
    .line 284
    iget v0, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    #@48
    iget v1, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    #@4a
    if-ne v0, v1, :cond_0

    #@4c
    .line 285
    iget v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    #@4e
    iget v1, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    #@50
    if-ne v0, v1, :cond_0

    #@52
    .line 286
    iget v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    #@54
    iget v1, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    #@56
    if-ne v0, v1, :cond_0

    #@58
    .line 287
    iget v0, p0, Landroid/view/DisplayInfo;->overscanLeft:I

    #@5a
    iget v1, p1, Landroid/view/DisplayInfo;->overscanLeft:I

    #@5c
    if-ne v0, v1, :cond_0

    #@5e
    .line 288
    iget v0, p0, Landroid/view/DisplayInfo;->overscanTop:I

    #@60
    iget v1, p1, Landroid/view/DisplayInfo;->overscanTop:I

    #@62
    if-ne v0, v1, :cond_0

    #@64
    .line 289
    iget v0, p0, Landroid/view/DisplayInfo;->overscanRight:I

    #@66
    iget v1, p1, Landroid/view/DisplayInfo;->overscanRight:I

    #@68
    if-ne v0, v1, :cond_0

    #@6a
    .line 290
    iget v0, p0, Landroid/view/DisplayInfo;->overscanBottom:I

    #@6c
    iget v1, p1, Landroid/view/DisplayInfo;->overscanBottom:I

    #@6e
    if-ne v0, v1, :cond_0

    #@70
    .line 291
    iget v0, p0, Landroid/view/DisplayInfo;->rotation:I

    #@72
    iget v1, p1, Landroid/view/DisplayInfo;->rotation:I

    #@74
    if-ne v0, v1, :cond_0

    #@76
    .line 292
    iget v0, p0, Landroid/view/DisplayInfo;->modeId:I

    #@78
    iget v1, p1, Landroid/view/DisplayInfo;->modeId:I

    #@7a
    if-ne v0, v1, :cond_0

    #@7c
    .line 293
    iget v0, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    #@7e
    iget v1, p1, Landroid/view/DisplayInfo;->defaultModeId:I

    #@80
    if-ne v0, v1, :cond_0

    #@82
    .line 294
    iget v0, p0, Landroid/view/DisplayInfo;->colorTransformId:I

    #@84
    iget v1, p1, Landroid/view/DisplayInfo;->colorTransformId:I

    #@86
    if-ne v0, v1, :cond_0

    #@88
    .line 295
    iget v0, p0, Landroid/view/DisplayInfo;->defaultColorTransformId:I

    #@8a
    iget v1, p1, Landroid/view/DisplayInfo;->defaultColorTransformId:I

    #@8c
    if-ne v0, v1, :cond_0

    #@8e
    .line 296
    iget-object v0, p0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    #@90
    iget-object v1, p1, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    #@92
    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@95
    move-result v0

    #@96
    .line 273
    if-eqz v0, :cond_0

    #@98
    .line 297
    iget v0, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    #@9a
    iget v1, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    #@9c
    if-ne v0, v1, :cond_0

    #@9e
    .line 298
    iget v0, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    #@a0
    iget v1, p1, Landroid/view/DisplayInfo;->physicalXDpi:F

    #@a2
    cmpl-float v0, v0, v1

    #@a4
    if-nez v0, :cond_0

    #@a6
    .line 299
    iget v0, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    #@a8
    iget v1, p1, Landroid/view/DisplayInfo;->physicalYDpi:F

    #@aa
    cmpl-float v0, v0, v1

    #@ac
    if-nez v0, :cond_0

    #@ae
    .line 300
    iget-wide v0, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    #@b0
    iget-wide v2, p1, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    #@b2
    cmp-long v0, v0, v2

    #@b4
    if-nez v0, :cond_0

    #@b6
    .line 301
    iget-wide v0, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    #@b8
    iget-wide v2, p1, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    #@ba
    cmp-long v0, v0, v2

    #@bc
    if-nez v0, :cond_0

    #@be
    .line 302
    iget v0, p0, Landroid/view/DisplayInfo;->state:I

    #@c0
    iget v1, p1, Landroid/view/DisplayInfo;->state:I

    #@c2
    if-ne v0, v1, :cond_0

    #@c4
    .line 303
    iget v0, p0, Landroid/view/DisplayInfo;->ownerUid:I

    #@c6
    iget v1, p1, Landroid/view/DisplayInfo;->ownerUid:I

    #@c8
    if-ne v0, v1, :cond_0

    #@ca
    .line 304
    iget-object v0, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    #@cc
    iget-object v1, p1, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    #@ce
    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@d1
    move-result v0

    #@d2
    .line 273
    :goto_0
    return v0

    #@d3
    :cond_0
    const/4 v0, 0x0

    #@d4
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 269
    instance-of v0, p1, Landroid/view/DisplayInfo;

    #@2
    if-eqz v0, :cond_0

    #@4
    check-cast p1, Landroid/view/DisplayInfo;

    #@6
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public findDefaultModeByRefreshRate(F)I
    .locals 6
    .param p1, "refreshRate"    # F

    #@0
    .prologue
    .line 466
    iget-object v2, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@2
    .line 467
    .local v2, "modes":[Landroid/view/Display$Mode;
    invoke-virtual {p0}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    #@5
    move-result-object v0

    #@6
    .line 468
    .local v0, "defaultMode":Landroid/view/Display$Mode;
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    array-length v3, v2

    #@8
    if-ge v1, v3, :cond_1

    #@a
    .line 469
    aget-object v3, v2, v1

    #@c
    .line 470
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    #@f
    move-result v4

    #@10
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    #@13
    move-result v5

    #@14
    .line 469
    invoke-virtual {v3, v4, v5, p1}, Landroid/view/Display$Mode;->matches(IIF)Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_0

    #@1a
    .line 471
    aget-object v3, v2, v1

    #@1c
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    #@1f
    move-result v3

    #@20
    return v3

    #@21
    .line 468
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 474
    :cond_1
    const/4 v3, 0x0

    #@25
    return v3
.end method

.method public getAppMetrics(Landroid/util/DisplayMetrics;)V
    .locals 2
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;

    #@0
    .prologue
    .line 518
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    #@6
    .line 517
    return-void
.end method

.method public getAppMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "ci"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "configuration"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 528
    iget v4, p0, Landroid/view/DisplayInfo;->appWidth:I

    #@2
    iget v5, p0, Landroid/view/DisplayInfo;->appHeight:I

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v2, p2

    #@7
    move-object v3, p3

    #@8
    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayInfo;->getMetricsWithSize(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;II)V

    #@b
    .line 527
    return-void
.end method

.method public getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V
    .locals 6
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "displayAdjustments"    # Landroid/view/DisplayAdjustments;

    #@0
    .prologue
    .line 522
    invoke-virtual {p2}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@3
    move-result-object v2

    #@4
    .line 523
    invoke-virtual {p2}, Landroid/view/DisplayAdjustments;->getConfiguration()Landroid/content/res/Configuration;

    #@7
    move-result-object v3

    #@8
    iget v4, p0, Landroid/view/DisplayInfo;->appWidth:I

    #@a
    iget v5, p0, Landroid/view/DisplayInfo;->appHeight:I

    #@c
    move-object v0, p0

    #@d
    move-object v1, p1

    #@e
    .line 522
    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayInfo;->getMetricsWithSize(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;II)V

    #@11
    .line 521
    return-void
.end method

.method public getColorTransform()Landroid/view/Display$ColorTransform;
    .locals 1

    #@0
    .prologue
    .line 500
    iget v0, p0, Landroid/view/DisplayInfo;->colorTransformId:I

    #@2
    invoke-direct {p0, v0}, Landroid/view/DisplayInfo;->findColorTransform(I)Landroid/view/Display$ColorTransform;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDefaultColorTransform()Landroid/view/Display$ColorTransform;
    .locals 1

    #@0
    .prologue
    .line 504
    iget v0, p0, Landroid/view/DisplayInfo;->defaultColorTransformId:I

    #@2
    invoke-direct {p0, v0}, Landroid/view/DisplayInfo;->findColorTransform(I)Landroid/view/Display$ColorTransform;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDefaultMode()Landroid/view/Display$Mode;
    .locals 1

    #@0
    .prologue
    .line 449
    iget v0, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    #@2
    invoke-direct {p0, v0}, Landroid/view/DisplayInfo;->findMode(I)Landroid/view/Display$Mode;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDefaultRefreshRates()[F
    .locals 11

    #@0
    .prologue
    .line 481
    iget-object v4, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@2
    .line 482
    .local v4, "modes":[Landroid/view/Display$Mode;
    new-instance v7, Landroid/util/ArraySet;

    #@4
    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    #@7
    .line 483
    .local v7, "rates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Float;>;"
    invoke-virtual {p0}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    #@a
    move-result-object v0

    #@b
    .line 484
    .local v0, "defaultMode":Landroid/view/Display$Mode;
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    array-length v9, v4

    #@d
    if-ge v1, v9, :cond_1

    #@f
    .line 485
    aget-object v3, v4, v1

    #@11
    .line 486
    .local v3, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    #@14
    move-result v9

    #@15
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    #@18
    move-result v10

    #@19
    if-ne v9, v10, :cond_0

    #@1b
    .line 487
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    #@1e
    move-result v9

    #@1f
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    #@22
    move-result v10

    #@23
    if-ne v9, v10, :cond_0

    #@25
    .line 488
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getRefreshRate()F

    #@28
    move-result v9

    #@29
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@2c
    move-result-object v9

    #@2d
    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@30
    .line 484
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@32
    goto :goto_0

    #@33
    .line 491
    .end local v3    # "mode":Landroid/view/Display$Mode;
    :cond_1
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    #@36
    move-result v9

    #@37
    new-array v8, v9, [F

    #@39
    .line 492
    .local v8, "result":[F
    const/4 v1, 0x0

    #@3a
    .line 493
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3d
    move-result-object v6

    #@3e
    .local v6, "rate$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@41
    move-result v9

    #@42
    if-eqz v9, :cond_2

    #@44
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@47
    move-result-object v5

    #@48
    check-cast v5, Ljava/lang/Float;

    #@4a
    .line 494
    .local v5, "rate":Ljava/lang/Float;
    add-int/lit8 v2, v1, 0x1

    #@4c
    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    #@4f
    move-result v9

    #@50
    aput v9, v8, v1

    #@52
    move v1, v2

    #@53
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    #@54
    .line 496
    .end local v5    # "rate":Ljava/lang/Float;
    :cond_2
    return-object v8
.end method

.method public getLogicalMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "configuration"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 533
    iget v4, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    #@2
    iget v5, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v2, p2

    #@7
    move-object v3, p3

    #@8
    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayInfo;->getMetricsWithSize(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;II)V

    #@b
    .line 532
    return-void
.end method

.method public getMode()Landroid/view/Display$Mode;
    .locals 1

    #@0
    .prologue
    .line 445
    iget v0, p0, Landroid/view/DisplayInfo;->modeId:I

    #@2
    invoke-direct {p0, v0}, Landroid/view/DisplayInfo;->findMode(I)Landroid/view/Display$Mode;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNaturalHeight()I
    .locals 2

    #@0
    .prologue
    .line 542
    iget v0, p0, Landroid/view/DisplayInfo;->rotation:I

    #@2
    if-eqz v0, :cond_0

    #@4
    iget v0, p0, Landroid/view/DisplayInfo;->rotation:I

    #@6
    const/4 v1, 0x2

    #@7
    if-ne v0, v1, :cond_1

    #@9
    .line 543
    :cond_0
    iget v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    #@b
    .line 542
    :goto_0
    return v0

    #@c
    .line 543
    :cond_1
    iget v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    #@e
    goto :goto_0
.end method

.method public getNaturalWidth()I
    .locals 2

    #@0
    .prologue
    .line 537
    iget v0, p0, Landroid/view/DisplayInfo;->rotation:I

    #@2
    if-eqz v0, :cond_0

    #@4
    iget v0, p0, Landroid/view/DisplayInfo;->rotation:I

    #@6
    const/4 v1, 0x2

    #@7
    if-ne v0, v1, :cond_1

    #@9
    .line 538
    :cond_0
    iget v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    #@b
    .line 537
    :goto_0
    return v0

    #@c
    .line 538
    :cond_1
    iget v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    #@e
    goto :goto_0
.end method

.method public hasAccess(I)Z
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 550
    iget v0, p0, Landroid/view/DisplayInfo;->flags:I

    #@2
    iget v1, p0, Landroid/view/DisplayInfo;->ownerUid:I

    #@4
    invoke-static {p1, v0, v1}, Landroid/view/Display;->hasAccess(III)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 309
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v3

    #@4
    iput v3, p0, Landroid/view/DisplayInfo;->layerStack:I

    #@6
    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v3

    #@a
    iput v3, p0, Landroid/view/DisplayInfo;->flags:I

    #@c
    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v3

    #@10
    iput v3, p0, Landroid/view/DisplayInfo;->type:I

    #@12
    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    iput-object v3, p0, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    #@18
    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    iput-object v3, p0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    #@1e
    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v3

    #@22
    iput v3, p0, Landroid/view/DisplayInfo;->appWidth:I

    #@24
    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v3

    #@28
    iput v3, p0, Landroid/view/DisplayInfo;->appHeight:I

    #@2a
    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2d
    move-result v3

    #@2e
    iput v3, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    #@30
    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v3

    #@34
    iput v3, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    #@36
    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v3

    #@3a
    iput v3, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    #@3c
    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3f
    move-result v3

    #@40
    iput v3, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    #@42
    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v3

    #@46
    iput v3, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    #@48
    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4b
    move-result v3

    #@4c
    iput v3, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    #@4e
    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@51
    move-result v3

    #@52
    iput v3, p0, Landroid/view/DisplayInfo;->overscanLeft:I

    #@54
    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@57
    move-result v3

    #@58
    iput v3, p0, Landroid/view/DisplayInfo;->overscanTop:I

    #@5a
    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5d
    move-result v3

    #@5e
    iput v3, p0, Landroid/view/DisplayInfo;->overscanRight:I

    #@60
    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@63
    move-result v3

    #@64
    iput v3, p0, Landroid/view/DisplayInfo;->overscanBottom:I

    #@66
    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@69
    move-result v3

    #@6a
    iput v3, p0, Landroid/view/DisplayInfo;->rotation:I

    #@6c
    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6f
    move-result v3

    #@70
    iput v3, p0, Landroid/view/DisplayInfo;->modeId:I

    #@72
    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@75
    move-result v3

    #@76
    iput v3, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    #@78
    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7b
    move-result v2

    #@7c
    .line 372
    .local v2, "nModes":I
    new-array v3, v2, [Landroid/view/Display$Mode;

    #@7e
    iput-object v3, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@80
    .line 373
    const/4 v0, 0x0

    #@81
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@83
    .line 374
    iget-object v4, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@85
    sget-object v3, Landroid/view/Display$Mode;->CREATOR:Landroid/os/Parcelable$Creator;

    #@87
    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8a
    move-result-object v3

    #@8b
    check-cast v3, Landroid/view/Display$Mode;

    #@8d
    aput-object v3, v4, v0

    #@8f
    .line 373
    add-int/lit8 v0, v0, 0x1

    #@91
    goto :goto_0

    #@92
    .line 376
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@95
    move-result v3

    #@96
    iput v3, p0, Landroid/view/DisplayInfo;->colorTransformId:I

    #@98
    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9b
    move-result v3

    #@9c
    iput v3, p0, Landroid/view/DisplayInfo;->defaultColorTransformId:I

    #@9e
    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a1
    move-result v1

    #@a2
    .line 379
    .local v1, "nColorTransforms":I
    new-array v3, v1, [Landroid/view/Display$ColorTransform;

    #@a4
    iput-object v3, p0, Landroid/view/DisplayInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    #@a6
    .line 380
    const/4 v0, 0x0

    #@a7
    :goto_1
    if-ge v0, v1, :cond_1

    #@a9
    .line 381
    iget-object v4, p0, Landroid/view/DisplayInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    #@ab
    sget-object v3, Landroid/view/Display$ColorTransform;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ad
    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b0
    move-result-object v3

    #@b1
    check-cast v3, Landroid/view/Display$ColorTransform;

    #@b3
    aput-object v3, v4, v0

    #@b5
    .line 380
    add-int/lit8 v0, v0, 0x1

    #@b7
    goto :goto_1

    #@b8
    .line 383
    :cond_1
    const/4 v3, 0x0

    #@b9
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@bc
    move-result-object v3

    #@bd
    check-cast v3, Landroid/view/Display$HdrCapabilities;

    #@bf
    iput-object v3, p0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    #@c1
    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c4
    move-result v3

    #@c5
    iput v3, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    #@c7
    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@ca
    move-result v3

    #@cb
    iput v3, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    #@cd
    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@d0
    move-result v3

    #@d1
    iput v3, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    #@d3
    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@d6
    move-result-wide v4

    #@d7
    iput-wide v4, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    #@d9
    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@dc
    move-result-wide v4

    #@dd
    iput-wide v4, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    #@df
    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e2
    move-result v3

    #@e3
    iput v3, p0, Landroid/view/DisplayInfo;->state:I

    #@e5
    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e8
    move-result v3

    #@e9
    iput v3, p0, Landroid/view/DisplayInfo;->ownerUid:I

    #@eb
    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ee
    move-result-object v3

    #@ef
    iput-object v3, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    #@f1
    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f4
    move-result-object v3

    #@f5
    iput-object v3, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    #@f7
    .line 350
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 581
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "DisplayInfo{\""

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 582
    iget-object v1, p0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 583
    const-string/jumbo v1, "\", uniqueId \""

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 584
    iget-object v1, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 585
    const-string/jumbo v1, "\", app "

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 586
    iget v1, p0, Landroid/view/DisplayInfo;->appWidth:I

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    .line 587
    const-string/jumbo v1, " x "

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 588
    iget v1, p0, Landroid/view/DisplayInfo;->appHeight:I

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    .line 589
    const-string/jumbo v1, ", real "

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 590
    iget v1, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    .line 591
    const-string/jumbo v1, " x "

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    .line 592
    iget v1, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    .line 593
    iget v1, p0, Landroid/view/DisplayInfo;->overscanLeft:I

    #@49
    if-nez v1, :cond_0

    #@4b
    iget v1, p0, Landroid/view/DisplayInfo;->overscanTop:I

    #@4d
    if-eqz v1, :cond_5

    #@4f
    .line 594
    :cond_0
    :goto_0
    const-string/jumbo v1, ", overscan ("

    #@52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    .line 595
    iget v1, p0, Landroid/view/DisplayInfo;->overscanLeft:I

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    .line 596
    const-string/jumbo v1, ","

    #@5d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    .line 597
    iget v1, p0, Landroid/view/DisplayInfo;->overscanTop:I

    #@62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@65
    .line 598
    const-string/jumbo v1, ","

    #@68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    .line 599
    iget v1, p0, Landroid/view/DisplayInfo;->overscanRight:I

    #@6d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@70
    .line 600
    const-string/jumbo v1, ","

    #@73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    .line 601
    iget v1, p0, Landroid/view/DisplayInfo;->overscanBottom:I

    #@78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7b
    .line 602
    const-string/jumbo v1, ")"

    #@7e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    .line 604
    :cond_1
    const-string/jumbo v1, ", largest app "

    #@84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    .line 605
    iget v1, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    #@89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8c
    .line 606
    const-string/jumbo v1, " x "

    #@8f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    .line 607
    iget v1, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    #@94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@97
    .line 608
    const-string/jumbo v1, ", smallest app "

    #@9a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    .line 609
    iget v1, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    #@9f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a2
    .line 610
    const-string/jumbo v1, " x "

    #@a5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    .line 611
    iget v1, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    #@aa
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ad
    .line 612
    const-string/jumbo v1, ", mode "

    #@b0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    .line 613
    iget v1, p0, Landroid/view/DisplayInfo;->modeId:I

    #@b5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b8
    .line 614
    const-string/jumbo v1, ", defaultMode "

    #@bb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    .line 615
    iget v1, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    #@c0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c3
    .line 616
    const-string/jumbo v1, ", modes "

    #@c6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    .line 617
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@cb
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@ce
    move-result-object v1

    #@cf
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    .line 618
    const-string/jumbo v1, ", colorTransformId "

    #@d5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    .line 619
    iget v1, p0, Landroid/view/DisplayInfo;->colorTransformId:I

    #@da
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@dd
    .line 620
    const-string/jumbo v1, ", defaultColorTransformId "

    #@e0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    .line 621
    iget v1, p0, Landroid/view/DisplayInfo;->defaultColorTransformId:I

    #@e5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e8
    .line 622
    const-string/jumbo v1, ", supportedColorTransforms "

    #@eb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    .line 623
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    #@f0
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@f3
    move-result-object v1

    #@f4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    .line 624
    const-string/jumbo v1, ", hdrCapabilities "

    #@fa
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    .line 625
    iget-object v1, p0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    #@ff
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@102
    .line 626
    const-string/jumbo v1, ", rotation "

    #@105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    .line 627
    iget v1, p0, Landroid/view/DisplayInfo;->rotation:I

    #@10a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10d
    .line 628
    const-string/jumbo v1, ", density "

    #@110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@113
    .line 629
    iget v1, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    #@115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@118
    .line 630
    const-string/jumbo v1, " ("

    #@11b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    .line 631
    iget v1, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    #@120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@123
    .line 632
    const-string/jumbo v1, " x "

    #@126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    .line 633
    iget v1, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    #@12b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@12e
    .line 634
    const-string/jumbo v1, ") dpi, layerStack "

    #@131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    .line 635
    iget v1, p0, Landroid/view/DisplayInfo;->layerStack:I

    #@136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@139
    .line 636
    const-string/jumbo v1, ", appVsyncOff "

    #@13c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13f
    .line 637
    iget-wide v2, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    #@141
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@144
    .line 638
    const-string/jumbo v1, ", presDeadline "

    #@147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14a
    .line 639
    iget-wide v2, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    #@14c
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@14f
    .line 640
    const-string/jumbo v1, ", type "

    #@152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@155
    .line 641
    iget v1, p0, Landroid/view/DisplayInfo;->type:I

    #@157
    invoke-static {v1}, Landroid/view/Display;->typeToString(I)Ljava/lang/String;

    #@15a
    move-result-object v1

    #@15b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15e
    .line 642
    iget-object v1, p0, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    #@160
    if-eqz v1, :cond_2

    #@162
    .line 643
    const-string/jumbo v1, ", address "

    #@165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@168
    move-result-object v1

    #@169
    iget-object v2, p0, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    #@16b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16e
    .line 645
    :cond_2
    const-string/jumbo v1, ", state "

    #@171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@174
    .line 646
    iget v1, p0, Landroid/view/DisplayInfo;->state:I

    #@176
    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    #@179
    move-result-object v1

    #@17a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17d
    .line 647
    iget v1, p0, Landroid/view/DisplayInfo;->ownerUid:I

    #@17f
    if-nez v1, :cond_3

    #@181
    iget-object v1, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    #@183
    if-eqz v1, :cond_4

    #@185
    .line 648
    :cond_3
    const-string/jumbo v1, ", owner "

    #@188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18b
    move-result-object v1

    #@18c
    iget-object v2, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    #@18e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@191
    .line 649
    const-string/jumbo v1, " (uid "

    #@194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@197
    move-result-object v1

    #@198
    iget v2, p0, Landroid/view/DisplayInfo;->ownerUid:I

    #@19a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19d
    move-result-object v1

    #@19e
    const-string/jumbo v2, ")"

    #@1a1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a4
    .line 651
    :cond_4
    iget v1, p0, Landroid/view/DisplayInfo;->flags:I

    #@1a6
    invoke-static {v1}, Landroid/view/DisplayInfo;->flagsToString(I)Ljava/lang/String;

    #@1a9
    move-result-object v1

    #@1aa
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ad
    .line 652
    const-string/jumbo v1, "}"

    #@1b0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b3
    .line 653
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b6
    move-result-object v1

    #@1b7
    return-object v1

    #@1b8
    .line 593
    :cond_5
    iget v1, p0, Landroid/view/DisplayInfo;->overscanRight:I

    #@1ba
    if-nez v1, :cond_0

    #@1bc
    iget v1, p0, Landroid/view/DisplayInfo;->overscanBottom:I

    #@1be
    if-eqz v1, :cond_1

    #@1c0
    goto/16 :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 397
    iget v1, p0, Landroid/view/DisplayInfo;->layerStack:I

    #@2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 398
    iget v1, p0, Landroid/view/DisplayInfo;->flags:I

    #@7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 399
    iget v1, p0, Landroid/view/DisplayInfo;->type:I

    #@c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 400
    iget-object v1, p0, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 401
    iget-object v1, p0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    #@16
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 402
    iget v1, p0, Landroid/view/DisplayInfo;->appWidth:I

    #@1b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 403
    iget v1, p0, Landroid/view/DisplayInfo;->appHeight:I

    #@20
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 404
    iget v1, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    #@25
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 405
    iget v1, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    #@2a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 406
    iget v1, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    #@2f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 407
    iget v1, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    #@34
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    .line 408
    iget v1, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    #@39
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 409
    iget v1, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    #@3e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@41
    .line 410
    iget v1, p0, Landroid/view/DisplayInfo;->overscanLeft:I

    #@43
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@46
    .line 411
    iget v1, p0, Landroid/view/DisplayInfo;->overscanTop:I

    #@48
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4b
    .line 412
    iget v1, p0, Landroid/view/DisplayInfo;->overscanRight:I

    #@4d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@50
    .line 413
    iget v1, p0, Landroid/view/DisplayInfo;->overscanBottom:I

    #@52
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@55
    .line 414
    iget v1, p0, Landroid/view/DisplayInfo;->rotation:I

    #@57
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5a
    .line 415
    iget v1, p0, Landroid/view/DisplayInfo;->modeId:I

    #@5c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5f
    .line 416
    iget v1, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    #@61
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@64
    .line 417
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@66
    array-length v1, v1

    #@67
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@6a
    .line 418
    const/4 v0, 0x0

    #@6b
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@6d
    array-length v1, v1

    #@6e
    if-ge v0, v1, :cond_0

    #@70
    .line 419
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@72
    aget-object v1, v1, v0

    #@74
    invoke-virtual {v1, p1, p2}, Landroid/view/Display$Mode;->writeToParcel(Landroid/os/Parcel;I)V

    #@77
    .line 418
    add-int/lit8 v0, v0, 0x1

    #@79
    goto :goto_0

    #@7a
    .line 421
    :cond_0
    iget v1, p0, Landroid/view/DisplayInfo;->colorTransformId:I

    #@7c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@7f
    .line 422
    iget v1, p0, Landroid/view/DisplayInfo;->defaultColorTransformId:I

    #@81
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@84
    .line 423
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    #@86
    array-length v1, v1

    #@87
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@8a
    .line 424
    const/4 v0, 0x0

    #@8b
    :goto_1
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    #@8d
    array-length v1, v1

    #@8e
    if-ge v0, v1, :cond_1

    #@90
    .line 425
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    #@92
    aget-object v1, v1, v0

    #@94
    invoke-virtual {v1, p1, p2}, Landroid/view/Display$ColorTransform;->writeToParcel(Landroid/os/Parcel;I)V

    #@97
    .line 424
    add-int/lit8 v0, v0, 0x1

    #@99
    goto :goto_1

    #@9a
    .line 427
    :cond_1
    iget-object v1, p0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    #@9c
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@9f
    .line 428
    iget v1, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    #@a1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@a4
    .line 429
    iget v1, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    #@a6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@a9
    .line 430
    iget v1, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    #@ab
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@ae
    .line 431
    iget-wide v2, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    #@b0
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    #@b3
    .line 432
    iget-wide v2, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    #@b5
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    #@b8
    .line 433
    iget v1, p0, Landroid/view/DisplayInfo;->state:I

    #@ba
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@bd
    .line 434
    iget v1, p0, Landroid/view/DisplayInfo;->ownerUid:I

    #@bf
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c2
    .line 435
    iget-object v1, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    #@c4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c7
    .line 436
    iget-object v1, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    #@c9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@cc
    .line 396
    return-void
.end method
