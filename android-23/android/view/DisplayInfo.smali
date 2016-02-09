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

.field public defaultModeId:I

.field public flags:I

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

.field public supportedModes:[Landroid/view/Display$Mode;

.field public type:I

.field public uniqueId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 232
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
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 170
    sget-object v0, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    #@5
    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@7
    .line 244
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 170
    sget-object v0, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    #@5
    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@7
    .line 252
    invoke-virtual {p0, p1}, Landroid/view/DisplayInfo;->readFromParcel(Landroid/os/Parcel;)V

    #@a
    .line 251
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
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 170
    sget-object v0, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    #@5
    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@7
    .line 248
    invoke-virtual {p0, p1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    #@a
    .line 247
    return-void
.end method

.method private findMode(I)Landroid/view/Display$Mode;
    .locals 4
    .param p1, "id"    # I

    #@0
    .prologue
    .line 418
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
    .line 419
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
    .line 420
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@12
    aget-object v1, v1, v0

    #@14
    return-object v1

    #@15
    .line 418
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 423
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
    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 597
    .local v0, "result":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x2

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 598
    const-string/jumbo v1, ", FLAG_SECURE"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 600
    :cond_0
    and-int/lit8 v1, p0, 0x1

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 601
    const-string/jumbo v1, ", FLAG_SUPPORTS_PROTECTED_BUFFERS"

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 603
    :cond_1
    and-int/lit8 v1, p0, 0x4

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 604
    const-string/jumbo v1, ", FLAG_PRIVATE"

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 606
    :cond_2
    and-int/lit8 v1, p0, 0x8

    #@25
    if-eqz v1, :cond_3

    #@27
    .line 607
    const-string/jumbo v1, ", FLAG_PRESENTATION"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 609
    :cond_3
    const/high16 v1, 0x40000000    # 2.0f

    #@2f
    and-int/2addr v1, p0

    #@30
    if-eqz v1, :cond_4

    #@32
    .line 610
    const-string/jumbo v1, ", FLAG_SCALING_DISABLED"

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 612
    :cond_4
    and-int/lit8 v1, p0, 0x10

    #@3a
    if-eqz v1, :cond_5

    #@3c
    .line 613
    const-string/jumbo v1, ", FLAG_ROUND"

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    .line 615
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
    .line 502
    iget v0, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    #@4
    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    #@6
    iput v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    #@8
    .line 504
    iget v0, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    #@a
    int-to-float v0, v0

    #@b
    const v1, 0x3bcccccd    # 0.00625f

    #@e
    mul-float/2addr v0, v1

    #@f
    .line 503
    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    #@11
    iput v0, p1, Landroid/util/DisplayMetrics;->density:F

    #@13
    .line 505
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    #@15
    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    #@17
    iput v0, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    #@19
    .line 506
    iget v0, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    #@1b
    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    #@1d
    iput v0, p1, Landroid/util/DisplayMetrics;->xdpi:F

    #@1f
    .line 507
    iget v0, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    #@21
    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    #@23
    iput v0, p1, Landroid/util/DisplayMetrics;->ydpi:F

    #@25
    .line 509
    if-eqz p3, :cond_0

    #@27
    .line 510
    iget v0, p3, Landroid/content/res/Configuration;->screenWidthDp:I

    #@29
    if-eqz v0, :cond_0

    #@2b
    .line 511
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
    .line 512
    :cond_0
    if-eqz p3, :cond_1

    #@35
    .line 513
    iget v0, p3, Landroid/content/res/Configuration;->screenHeightDp:I

    #@37
    if-eqz v0, :cond_1

    #@39
    .line 514
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
    .line 516
    :cond_1
    iput p4, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    #@43
    iput p4, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    #@45
    .line 517
    iput p5, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    #@47
    iput p5, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    #@49
    .line 519
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    #@4b
    invoke-virtual {p2, v0}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v0

    #@4f
    if-nez v0, :cond_2

    #@51
    .line 520
    invoke-virtual {p2, p1}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    #@54
    .line 501
    :cond_2
    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/view/DisplayInfo;)V
    .locals 2
    .param p1, "other"    # Landroid/view/DisplayInfo;

    #@0
    .prologue
    .line 298
    iget v0, p1, Landroid/view/DisplayInfo;->layerStack:I

    #@2
    iput v0, p0, Landroid/view/DisplayInfo;->layerStack:I

    #@4
    .line 299
    iget v0, p1, Landroid/view/DisplayInfo;->flags:I

    #@6
    iput v0, p0, Landroid/view/DisplayInfo;->flags:I

    #@8
    .line 300
    iget v0, p1, Landroid/view/DisplayInfo;->type:I

    #@a
    iput v0, p0, Landroid/view/DisplayInfo;->type:I

    #@c
    .line 301
    iget-object v0, p1, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    #@e
    iput-object v0, p0, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    #@10
    .line 302
    iget-object v0, p1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    #@12
    iput-object v0, p0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    #@14
    .line 303
    iget-object v0, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    #@16
    iput-object v0, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    #@18
    .line 304
    iget v0, p1, Landroid/view/DisplayInfo;->appWidth:I

    #@1a
    iput v0, p0, Landroid/view/DisplayInfo;->appWidth:I

    #@1c
    .line 305
    iget v0, p1, Landroid/view/DisplayInfo;->appHeight:I

    #@1e
    iput v0, p0, Landroid/view/DisplayInfo;->appHeight:I

    #@20
    .line 306
    iget v0, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    #@22
    iput v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    #@24
    .line 307
    iget v0, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    #@26
    iput v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    #@28
    .line 308
    iget v0, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    #@2a
    iput v0, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    #@2c
    .line 309
    iget v0, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    #@2e
    iput v0, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    #@30
    .line 310
    iget v0, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    #@32
    iput v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    #@34
    .line 311
    iget v0, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    #@36
    iput v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    #@38
    .line 312
    iget v0, p1, Landroid/view/DisplayInfo;->overscanLeft:I

    #@3a
    iput v0, p0, Landroid/view/DisplayInfo;->overscanLeft:I

    #@3c
    .line 313
    iget v0, p1, Landroid/view/DisplayInfo;->overscanTop:I

    #@3e
    iput v0, p0, Landroid/view/DisplayInfo;->overscanTop:I

    #@40
    .line 314
    iget v0, p1, Landroid/view/DisplayInfo;->overscanRight:I

    #@42
    iput v0, p0, Landroid/view/DisplayInfo;->overscanRight:I

    #@44
    .line 315
    iget v0, p1, Landroid/view/DisplayInfo;->overscanBottom:I

    #@46
    iput v0, p0, Landroid/view/DisplayInfo;->overscanBottom:I

    #@48
    .line 316
    iget v0, p1, Landroid/view/DisplayInfo;->rotation:I

    #@4a
    iput v0, p0, Landroid/view/DisplayInfo;->rotation:I

    #@4c
    .line 317
    iget v0, p1, Landroid/view/DisplayInfo;->modeId:I

    #@4e
    iput v0, p0, Landroid/view/DisplayInfo;->modeId:I

    #@50
    .line 318
    iget v0, p1, Landroid/view/DisplayInfo;->defaultModeId:I

    #@52
    iput v0, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    #@54
    .line 319
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
    .line 320
    iget v0, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    #@63
    iput v0, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    #@65
    .line 321
    iget v0, p1, Landroid/view/DisplayInfo;->physicalXDpi:F

    #@67
    iput v0, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    #@69
    .line 322
    iget v0, p1, Landroid/view/DisplayInfo;->physicalYDpi:F

    #@6b
    iput v0, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    #@6d
    .line 323
    iget-wide v0, p1, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    #@6f
    iput-wide v0, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    #@71
    .line 324
    iget-wide v0, p1, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    #@73
    iput-wide v0, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    #@75
    .line 325
    iget v0, p1, Landroid/view/DisplayInfo;->state:I

    #@77
    iput v0, p0, Landroid/view/DisplayInfo;->state:I

    #@79
    .line 326
    iget v0, p1, Landroid/view/DisplayInfo;->ownerUid:I

    #@7b
    iput v0, p0, Landroid/view/DisplayInfo;->ownerUid:I

    #@7d
    .line 327
    iget-object v0, p1, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    #@7f
    iput-object v0, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    #@81
    .line 297
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 406
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Landroid/view/DisplayInfo;)Z
    .locals 4
    .param p1, "other"    # Landroid/view/DisplayInfo;

    #@0
    .prologue
    .line 261
    if-eqz p1, :cond_0

    #@2
    .line 262
    iget v0, p0, Landroid/view/DisplayInfo;->layerStack:I

    #@4
    iget v1, p1, Landroid/view/DisplayInfo;->layerStack:I

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 263
    iget v0, p0, Landroid/view/DisplayInfo;->flags:I

    #@a
    iget v1, p1, Landroid/view/DisplayInfo;->flags:I

    #@c
    if-ne v0, v1, :cond_0

    #@e
    .line 264
    iget v0, p0, Landroid/view/DisplayInfo;->type:I

    #@10
    iget v1, p1, Landroid/view/DisplayInfo;->type:I

    #@12
    if-ne v0, v1, :cond_0

    #@14
    .line 265
    iget-object v0, p0, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    #@16
    iget-object v1, p1, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    #@18
    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    .line 261
    if-eqz v0, :cond_0

    #@1e
    .line 266
    iget-object v0, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    #@20
    iget-object v1, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    #@22
    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@25
    move-result v0

    #@26
    .line 261
    if-eqz v0, :cond_0

    #@28
    .line 267
    iget v0, p0, Landroid/view/DisplayInfo;->appWidth:I

    #@2a
    iget v1, p1, Landroid/view/DisplayInfo;->appWidth:I

    #@2c
    if-ne v0, v1, :cond_0

    #@2e
    .line 268
    iget v0, p0, Landroid/view/DisplayInfo;->appHeight:I

    #@30
    iget v1, p1, Landroid/view/DisplayInfo;->appHeight:I

    #@32
    if-ne v0, v1, :cond_0

    #@34
    .line 269
    iget v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    #@36
    iget v1, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    #@38
    if-ne v0, v1, :cond_0

    #@3a
    .line 270
    iget v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    #@3c
    iget v1, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    #@3e
    if-ne v0, v1, :cond_0

    #@40
    .line 271
    iget v0, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    #@42
    iget v1, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    #@44
    if-ne v0, v1, :cond_0

    #@46
    .line 272
    iget v0, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    #@48
    iget v1, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    #@4a
    if-ne v0, v1, :cond_0

    #@4c
    .line 273
    iget v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    #@4e
    iget v1, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    #@50
    if-ne v0, v1, :cond_0

    #@52
    .line 274
    iget v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    #@54
    iget v1, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    #@56
    if-ne v0, v1, :cond_0

    #@58
    .line 275
    iget v0, p0, Landroid/view/DisplayInfo;->overscanLeft:I

    #@5a
    iget v1, p1, Landroid/view/DisplayInfo;->overscanLeft:I

    #@5c
    if-ne v0, v1, :cond_0

    #@5e
    .line 276
    iget v0, p0, Landroid/view/DisplayInfo;->overscanTop:I

    #@60
    iget v1, p1, Landroid/view/DisplayInfo;->overscanTop:I

    #@62
    if-ne v0, v1, :cond_0

    #@64
    .line 277
    iget v0, p0, Landroid/view/DisplayInfo;->overscanRight:I

    #@66
    iget v1, p1, Landroid/view/DisplayInfo;->overscanRight:I

    #@68
    if-ne v0, v1, :cond_0

    #@6a
    .line 278
    iget v0, p0, Landroid/view/DisplayInfo;->overscanBottom:I

    #@6c
    iget v1, p1, Landroid/view/DisplayInfo;->overscanBottom:I

    #@6e
    if-ne v0, v1, :cond_0

    #@70
    .line 279
    iget v0, p0, Landroid/view/DisplayInfo;->rotation:I

    #@72
    iget v1, p1, Landroid/view/DisplayInfo;->rotation:I

    #@74
    if-ne v0, v1, :cond_0

    #@76
    .line 280
    iget v0, p0, Landroid/view/DisplayInfo;->modeId:I

    #@78
    iget v1, p1, Landroid/view/DisplayInfo;->modeId:I

    #@7a
    if-ne v0, v1, :cond_0

    #@7c
    .line 281
    iget v0, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    #@7e
    iget v1, p1, Landroid/view/DisplayInfo;->defaultModeId:I

    #@80
    if-ne v0, v1, :cond_0

    #@82
    .line 282
    iget v0, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    #@84
    iget v1, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    #@86
    if-ne v0, v1, :cond_0

    #@88
    .line 283
    iget v0, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    #@8a
    iget v1, p1, Landroid/view/DisplayInfo;->physicalXDpi:F

    #@8c
    cmpl-float v0, v0, v1

    #@8e
    if-nez v0, :cond_0

    #@90
    .line 284
    iget v0, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    #@92
    iget v1, p1, Landroid/view/DisplayInfo;->physicalYDpi:F

    #@94
    cmpl-float v0, v0, v1

    #@96
    if-nez v0, :cond_0

    #@98
    .line 285
    iget-wide v0, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    #@9a
    iget-wide v2, p1, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    #@9c
    cmp-long v0, v0, v2

    #@9e
    if-nez v0, :cond_0

    #@a0
    .line 286
    iget-wide v0, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    #@a2
    iget-wide v2, p1, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    #@a4
    cmp-long v0, v0, v2

    #@a6
    if-nez v0, :cond_0

    #@a8
    .line 287
    iget v0, p0, Landroid/view/DisplayInfo;->state:I

    #@aa
    iget v1, p1, Landroid/view/DisplayInfo;->state:I

    #@ac
    if-ne v0, v1, :cond_0

    #@ae
    .line 288
    iget v0, p0, Landroid/view/DisplayInfo;->ownerUid:I

    #@b0
    iget v1, p1, Landroid/view/DisplayInfo;->ownerUid:I

    #@b2
    if-ne v0, v1, :cond_0

    #@b4
    .line 289
    iget-object v0, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    #@b6
    iget-object v1, p1, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    #@b8
    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@bb
    move-result v0

    #@bc
    .line 261
    :goto_0
    return v0

    #@bd
    :cond_0
    const/4 v0, 0x0

    #@be
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 257
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
    .line 431
    iget-object v2, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@2
    .line 432
    .local v2, "modes":[Landroid/view/Display$Mode;
    invoke-virtual {p0}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    #@5
    move-result-object v0

    #@6
    .line 433
    .local v0, "defaultMode":Landroid/view/Display$Mode;
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    array-length v3, v2

    #@8
    if-ge v1, v3, :cond_1

    #@a
    .line 434
    aget-object v3, v2, v1

    #@c
    .line 435
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    #@f
    move-result v4

    #@10
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    #@13
    move-result v5

    #@14
    .line 434
    invoke-virtual {v3, v4, v5, p1}, Landroid/view/Display$Mode;->matches(IIF)Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_0

    #@1a
    .line 436
    aget-object v3, v2, v1

    #@1c
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    #@1f
    move-result v3

    #@20
    return v3

    #@21
    .line 433
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 439
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
    .line 465
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    #@6
    .line 464
    return-void
.end method

.method public getAppMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "ci"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "configuration"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 475
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
    .line 474
    return-void
.end method

.method public getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V
    .locals 6
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "displayAdjustments"    # Landroid/view/DisplayAdjustments;

    #@0
    .prologue
    .line 469
    invoke-virtual {p2}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@3
    move-result-object v2

    #@4
    .line 470
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
    .line 469
    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayInfo;->getMetricsWithSize(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;II)V

    #@11
    .line 468
    return-void
.end method

.method public getDefaultMode()Landroid/view/Display$Mode;
    .locals 1

    #@0
    .prologue
    .line 414
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
    .line 446
    iget-object v4, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@2
    .line 447
    .local v4, "modes":[Landroid/view/Display$Mode;
    new-instance v7, Landroid/util/ArraySet;

    #@4
    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    #@7
    .line 448
    .local v7, "rates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Float;>;"
    invoke-virtual {p0}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    #@a
    move-result-object v0

    #@b
    .line 449
    .local v0, "defaultMode":Landroid/view/Display$Mode;
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    array-length v9, v4

    #@d
    if-ge v1, v9, :cond_1

    #@f
    .line 450
    aget-object v3, v4, v1

    #@11
    .line 451
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
    .line 452
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
    .line 453
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
    .line 449
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@32
    goto :goto_0

    #@33
    .line 456
    .end local v3    # "mode":Landroid/view/Display$Mode;
    :cond_1
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    #@36
    move-result v9

    #@37
    new-array v8, v9, [F

    #@39
    .line 457
    .local v8, "result":[F
    const/4 v1, 0x0

    #@3a
    .line 458
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
    .line 459
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
    .line 461
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
    .line 480
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
    .line 479
    return-void
.end method

.method public getMode()Landroid/view/Display$Mode;
    .locals 1

    #@0
    .prologue
    .line 410
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
    .line 489
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
    .line 490
    :cond_0
    iget v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    #@b
    .line 489
    :goto_0
    return v0

    #@c
    .line 490
    :cond_1
    iget v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    #@e
    goto :goto_0
.end method

.method public getNaturalWidth()I
    .locals 2

    #@0
    .prologue
    .line 484
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
    .line 485
    :cond_0
    iget v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    #@b
    .line 484
    :goto_0
    return v0

    #@c
    .line 485
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
    .line 497
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
    .line 294
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v2

    #@4
    iput v2, p0, Landroid/view/DisplayInfo;->layerStack:I

    #@6
    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v2

    #@a
    iput v2, p0, Landroid/view/DisplayInfo;->flags:I

    #@c
    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v2

    #@10
    iput v2, p0, Landroid/view/DisplayInfo;->type:I

    #@12
    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    iput-object v2, p0, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    #@18
    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    iput-object v2, p0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    #@1e
    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v2

    #@22
    iput v2, p0, Landroid/view/DisplayInfo;->appWidth:I

    #@24
    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v2

    #@28
    iput v2, p0, Landroid/view/DisplayInfo;->appHeight:I

    #@2a
    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2d
    move-result v2

    #@2e
    iput v2, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    #@30
    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v2

    #@34
    iput v2, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    #@36
    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v2

    #@3a
    iput v2, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    #@3c
    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3f
    move-result v2

    #@40
    iput v2, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    #@42
    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v2

    #@46
    iput v2, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    #@48
    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4b
    move-result v2

    #@4c
    iput v2, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    #@4e
    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@51
    move-result v2

    #@52
    iput v2, p0, Landroid/view/DisplayInfo;->overscanLeft:I

    #@54
    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@57
    move-result v2

    #@58
    iput v2, p0, Landroid/view/DisplayInfo;->overscanTop:I

    #@5a
    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5d
    move-result v2

    #@5e
    iput v2, p0, Landroid/view/DisplayInfo;->overscanRight:I

    #@60
    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@63
    move-result v2

    #@64
    iput v2, p0, Landroid/view/DisplayInfo;->overscanBottom:I

    #@66
    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@69
    move-result v2

    #@6a
    iput v2, p0, Landroid/view/DisplayInfo;->rotation:I

    #@6c
    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6f
    move-result v2

    #@70
    iput v2, p0, Landroid/view/DisplayInfo;->modeId:I

    #@72
    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@75
    move-result v2

    #@76
    iput v2, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    #@78
    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7b
    move-result v1

    #@7c
    .line 352
    .local v1, "nModes":I
    new-array v2, v1, [Landroid/view/Display$Mode;

    #@7e
    iput-object v2, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@80
    .line 353
    const/4 v0, 0x0

    #@81
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@83
    .line 354
    iget-object v3, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@85
    sget-object v2, Landroid/view/Display$Mode;->CREATOR:Landroid/os/Parcelable$Creator;

    #@87
    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8a
    move-result-object v2

    #@8b
    check-cast v2, Landroid/view/Display$Mode;

    #@8d
    aput-object v2, v3, v0

    #@8f
    .line 353
    add-int/lit8 v0, v0, 0x1

    #@91
    goto :goto_0

    #@92
    .line 356
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@95
    move-result v2

    #@96
    iput v2, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    #@98
    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@9b
    move-result v2

    #@9c
    iput v2, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    #@9e
    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@a1
    move-result v2

    #@a2
    iput v2, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    #@a4
    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@a7
    move-result-wide v2

    #@a8
    iput-wide v2, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    #@aa
    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@ad
    move-result-wide v2

    #@ae
    iput-wide v2, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    #@b0
    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@b3
    move-result v2

    #@b4
    iput v2, p0, Landroid/view/DisplayInfo;->state:I

    #@b6
    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@b9
    move-result v2

    #@ba
    iput v2, p0, Landroid/view/DisplayInfo;->ownerUid:I

    #@bc
    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@bf
    move-result-object v2

    #@c0
    iput-object v2, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    #@c2
    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c5
    move-result-object v2

    #@c6
    iput-object v2, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    #@c8
    .line 330
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 528
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "DisplayInfo{\""

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 529
    iget-object v1, p0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 530
    const-string/jumbo v1, "\", uniqueId \""

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 531
    iget-object v1, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 532
    const-string/jumbo v1, "\", app "

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 533
    iget v1, p0, Landroid/view/DisplayInfo;->appWidth:I

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    .line 534
    const-string/jumbo v1, " x "

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 535
    iget v1, p0, Landroid/view/DisplayInfo;->appHeight:I

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    .line 536
    const-string/jumbo v1, ", real "

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 537
    iget v1, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    .line 538
    const-string/jumbo v1, " x "

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    .line 539
    iget v1, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    .line 540
    iget v1, p0, Landroid/view/DisplayInfo;->overscanLeft:I

    #@49
    if-nez v1, :cond_0

    #@4b
    iget v1, p0, Landroid/view/DisplayInfo;->overscanTop:I

    #@4d
    if-eqz v1, :cond_5

    #@4f
    .line 541
    :cond_0
    :goto_0
    const-string/jumbo v1, ", overscan ("

    #@52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    .line 542
    iget v1, p0, Landroid/view/DisplayInfo;->overscanLeft:I

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    .line 543
    const-string/jumbo v1, ","

    #@5d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    .line 544
    iget v1, p0, Landroid/view/DisplayInfo;->overscanTop:I

    #@62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@65
    .line 545
    const-string/jumbo v1, ","

    #@68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    .line 546
    iget v1, p0, Landroid/view/DisplayInfo;->overscanRight:I

    #@6d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@70
    .line 547
    const-string/jumbo v1, ","

    #@73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    .line 548
    iget v1, p0, Landroid/view/DisplayInfo;->overscanBottom:I

    #@78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7b
    .line 549
    const-string/jumbo v1, ")"

    #@7e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    .line 551
    :cond_1
    const-string/jumbo v1, ", largest app "

    #@84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    .line 552
    iget v1, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    #@89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8c
    .line 553
    const-string/jumbo v1, " x "

    #@8f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    .line 554
    iget v1, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    #@94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@97
    .line 555
    const-string/jumbo v1, ", smallest app "

    #@9a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    .line 556
    iget v1, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    #@9f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a2
    .line 557
    const-string/jumbo v1, " x "

    #@a5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    .line 558
    iget v1, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    #@aa
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ad
    .line 559
    const-string/jumbo v1, ", mode "

    #@b0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    .line 560
    iget v1, p0, Landroid/view/DisplayInfo;->modeId:I

    #@b5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b8
    .line 561
    const-string/jumbo v1, ", defaultMode "

    #@bb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    .line 562
    iget v1, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    #@c0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c3
    .line 563
    const-string/jumbo v1, ", modes "

    #@c6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    .line 564
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@cb
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@ce
    move-result-object v1

    #@cf
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    .line 565
    const-string/jumbo v1, ", rotation "

    #@d5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    .line 566
    iget v1, p0, Landroid/view/DisplayInfo;->rotation:I

    #@da
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@dd
    .line 567
    const-string/jumbo v1, ", density "

    #@e0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    .line 568
    iget v1, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    #@e5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e8
    .line 569
    const-string/jumbo v1, " ("

    #@eb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    .line 570
    iget v1, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    #@f0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@f3
    .line 571
    const-string/jumbo v1, " x "

    #@f6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    .line 572
    iget v1, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    #@fb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@fe
    .line 573
    const-string/jumbo v1, ") dpi, layerStack "

    #@101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    .line 574
    iget v1, p0, Landroid/view/DisplayInfo;->layerStack:I

    #@106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@109
    .line 575
    const-string/jumbo v1, ", appVsyncOff "

    #@10c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    .line 576
    iget-wide v2, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    #@111
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@114
    .line 577
    const-string/jumbo v1, ", presDeadline "

    #@117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    .line 578
    iget-wide v2, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    #@11c
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@11f
    .line 579
    const-string/jumbo v1, ", type "

    #@122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    .line 580
    iget v1, p0, Landroid/view/DisplayInfo;->type:I

    #@127
    invoke-static {v1}, Landroid/view/Display;->typeToString(I)Ljava/lang/String;

    #@12a
    move-result-object v1

    #@12b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    .line 581
    iget-object v1, p0, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    #@130
    if-eqz v1, :cond_2

    #@132
    .line 582
    const-string/jumbo v1, ", address "

    #@135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v1

    #@139
    iget-object v2, p0, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    #@13b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    .line 584
    :cond_2
    const-string/jumbo v1, ", state "

    #@141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    .line 585
    iget v1, p0, Landroid/view/DisplayInfo;->state:I

    #@146
    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    #@149
    move-result-object v1

    #@14a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    .line 586
    iget v1, p0, Landroid/view/DisplayInfo;->ownerUid:I

    #@14f
    if-nez v1, :cond_3

    #@151
    iget-object v1, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    #@153
    if-eqz v1, :cond_4

    #@155
    .line 587
    :cond_3
    const-string/jumbo v1, ", owner "

    #@158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v1

    #@15c
    iget-object v2, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    #@15e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@161
    .line 588
    const-string/jumbo v1, " (uid "

    #@164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v1

    #@168
    iget v2, p0, Landroid/view/DisplayInfo;->ownerUid:I

    #@16a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v1

    #@16e
    const-string/jumbo v2, ")"

    #@171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@174
    .line 590
    :cond_4
    iget v1, p0, Landroid/view/DisplayInfo;->flags:I

    #@176
    invoke-static {v1}, Landroid/view/DisplayInfo;->flagsToString(I)Ljava/lang/String;

    #@179
    move-result-object v1

    #@17a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17d
    .line 591
    const-string/jumbo v1, "}"

    #@180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@183
    .line 592
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@186
    move-result-object v1

    #@187
    return-object v1

    #@188
    .line 540
    :cond_5
    iget v1, p0, Landroid/view/DisplayInfo;->overscanRight:I

    #@18a
    if-nez v1, :cond_0

    #@18c
    iget v1, p0, Landroid/view/DisplayInfo;->overscanBottom:I

    #@18e
    if-eqz v1, :cond_1

    #@190
    goto/16 :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 369
    iget v1, p0, Landroid/view/DisplayInfo;->layerStack:I

    #@2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 370
    iget v1, p0, Landroid/view/DisplayInfo;->flags:I

    #@7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 371
    iget v1, p0, Landroid/view/DisplayInfo;->type:I

    #@c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 372
    iget-object v1, p0, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 373
    iget-object v1, p0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    #@16
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 374
    iget v1, p0, Landroid/view/DisplayInfo;->appWidth:I

    #@1b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 375
    iget v1, p0, Landroid/view/DisplayInfo;->appHeight:I

    #@20
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 376
    iget v1, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    #@25
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 377
    iget v1, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    #@2a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 378
    iget v1, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    #@2f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 379
    iget v1, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    #@34
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    .line 380
    iget v1, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    #@39
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 381
    iget v1, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    #@3e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@41
    .line 382
    iget v1, p0, Landroid/view/DisplayInfo;->overscanLeft:I

    #@43
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@46
    .line 383
    iget v1, p0, Landroid/view/DisplayInfo;->overscanTop:I

    #@48
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4b
    .line 384
    iget v1, p0, Landroid/view/DisplayInfo;->overscanRight:I

    #@4d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@50
    .line 385
    iget v1, p0, Landroid/view/DisplayInfo;->overscanBottom:I

    #@52
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@55
    .line 386
    iget v1, p0, Landroid/view/DisplayInfo;->rotation:I

    #@57
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5a
    .line 387
    iget v1, p0, Landroid/view/DisplayInfo;->modeId:I

    #@5c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5f
    .line 388
    iget v1, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    #@61
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@64
    .line 389
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@66
    array-length v1, v1

    #@67
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@6a
    .line 390
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
    .line 391
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@72
    aget-object v1, v1, v0

    #@74
    invoke-virtual {v1, p1, p2}, Landroid/view/Display$Mode;->writeToParcel(Landroid/os/Parcel;I)V

    #@77
    .line 390
    add-int/lit8 v0, v0, 0x1

    #@79
    goto :goto_0

    #@7a
    .line 393
    :cond_0
    iget v1, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    #@7c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@7f
    .line 394
    iget v1, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    #@81
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@84
    .line 395
    iget v1, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    #@86
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@89
    .line 396
    iget-wide v2, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    #@8b
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    #@8e
    .line 397
    iget-wide v2, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    #@90
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    #@93
    .line 398
    iget v1, p0, Landroid/view/DisplayInfo;->state:I

    #@95
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@98
    .line 399
    iget v1, p0, Landroid/view/DisplayInfo;->ownerUid:I

    #@9a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@9d
    .line 400
    iget-object v1, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    #@9f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a2
    .line 401
    iget-object v1, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    #@a4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a7
    .line 368
    return-void
.end method
