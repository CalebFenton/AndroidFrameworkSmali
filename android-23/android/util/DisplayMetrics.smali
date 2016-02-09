.class public Landroid/util/DisplayMetrics;
.super Ljava/lang/Object;
.source "DisplayMetrics.java"


# static fields
.field public static final DENSITY_280:I = 0x118

.field public static final DENSITY_360:I = 0x168

.field public static final DENSITY_400:I = 0x190

.field public static final DENSITY_420:I = 0x1a4

.field public static final DENSITY_560:I = 0x230

.field public static final DENSITY_DEFAULT:I = 0xa0

.field public static final DENSITY_DEFAULT_SCALE:F = 0.00625f

.field public static DENSITY_DEVICE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DENSITY_HIGH:I = 0xf0

.field public static final DENSITY_LOW:I = 0x78

.field public static final DENSITY_MEDIUM:I = 0xa0

.field public static final DENSITY_TV:I = 0xd5

.field public static final DENSITY_XHIGH:I = 0x140

.field public static final DENSITY_XXHIGH:I = 0x1e0

.field public static final DENSITY_XXXHIGH:I = 0x280


# instance fields
.field public density:F

.field public densityDpi:I

.field public heightPixels:I

.field public noncompatDensity:F

.field public noncompatDensityDpi:I

.field public noncompatHeightPixels:I

.field public noncompatScaledDensity:F

.field public noncompatWidthPixels:I

.field public noncompatXdpi:F

.field public noncompatYdpi:F

.field public scaledDensity:F

.field public widthPixels:I

.field public xdpi:F

.field public ydpi:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 141
    invoke-static {}, Landroid/util/DisplayMetrics;->getDeviceDensity()I

    #@3
    move-result v0

    #@4
    sput v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    #@6
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getDeviceDensity()I
    .locals 3

    #@0
    .prologue
    .line 328
    const-string/jumbo v0, "qemu.sf.lcd_density"

    #@3
    .line 329
    const-string/jumbo v1, "ro.sf.lcd_density"

    #@6
    const/16 v2, 0xa0

    #@8
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@b
    move-result v1

    #@c
    .line 328
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@f
    move-result v0

    #@10
    return v0
.end method


# virtual methods
.method public equals(Landroid/util/DisplayMetrics;)Z
    .locals 3
    .param p1, "other"    # Landroid/util/DisplayMetrics;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 281
    invoke-virtual {p0, p1}, Landroid/util/DisplayMetrics;->equalsPhysical(Landroid/util/DisplayMetrics;)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 282
    iget v1, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    #@9
    iget v2, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    #@b
    cmpl-float v1, v1, v2

    #@d
    if-nez v1, :cond_0

    #@f
    .line 283
    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    #@11
    iget v2, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    #@13
    cmpl-float v1, v1, v2

    #@15
    if-nez v1, :cond_0

    #@17
    const/4 v0, 0x1

    #@18
    .line 281
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 271
    instance-of v0, p1, Landroid/util/DisplayMetrics;

    #@2
    if-eqz v0, :cond_0

    #@4
    check-cast p1, Landroid/util/DisplayMetrics;

    #@6
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/util/DisplayMetrics;->equals(Landroid/util/DisplayMetrics;)Z

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

.method public equalsPhysical(Landroid/util/DisplayMetrics;)Z
    .locals 3
    .param p1, "other"    # Landroid/util/DisplayMetrics;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 296
    if-eqz p1, :cond_0

    #@3
    .line 297
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@5
    iget v2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    #@7
    if-ne v1, v2, :cond_0

    #@9
    .line 298
    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    #@b
    iget v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    #@d
    if-ne v1, v2, :cond_0

    #@f
    .line 299
    iget v1, p0, Landroid/util/DisplayMetrics;->density:F

    #@11
    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    #@13
    cmpl-float v1, v1, v2

    #@15
    if-nez v1, :cond_0

    #@17
    .line 300
    iget v1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    #@19
    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    #@1b
    if-ne v1, v2, :cond_0

    #@1d
    .line 301
    iget v1, p0, Landroid/util/DisplayMetrics;->xdpi:F

    #@1f
    iget v2, p1, Landroid/util/DisplayMetrics;->xdpi:F

    #@21
    cmpl-float v1, v1, v2

    #@23
    if-nez v1, :cond_0

    #@25
    .line 302
    iget v1, p0, Landroid/util/DisplayMetrics;->ydpi:F

    #@27
    iget v2, p1, Landroid/util/DisplayMetrics;->ydpi:F

    #@29
    cmpl-float v1, v1, v2

    #@2b
    if-nez v1, :cond_0

    #@2d
    .line 303
    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    #@2f
    iget v2, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    #@31
    if-ne v1, v2, :cond_0

    #@33
    .line 304
    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    #@35
    iget v2, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    #@37
    if-ne v1, v2, :cond_0

    #@39
    .line 305
    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatDensity:F

    #@3b
    iget v2, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    #@3d
    cmpl-float v1, v1, v2

    #@3f
    if-nez v1, :cond_0

    #@41
    .line 306
    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    #@43
    iget v2, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    #@45
    if-ne v1, v2, :cond_0

    #@47
    .line 307
    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    #@49
    iget v2, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    #@4b
    cmpl-float v1, v1, v2

    #@4d
    if-nez v1, :cond_0

    #@4f
    .line 308
    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    #@51
    iget v2, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    #@53
    cmpl-float v1, v1, v2

    #@55
    if-nez v1, :cond_0

    #@57
    const/4 v0, 0x1

    #@58
    .line 296
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 313
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@2
    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    #@4
    mul-int/2addr v0, v1

    #@5
    iget v1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    #@7
    mul-int/2addr v0, v1

    #@8
    return v0
.end method

.method public setTo(Landroid/util/DisplayMetrics;)V
    .locals 1
    .param p1, "o"    # Landroid/util/DisplayMetrics;

    #@0
    .prologue
    .line 236
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    #@2
    iput v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@4
    .line 237
    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    #@6
    iput v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    #@8
    .line 238
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    #@a
    iput v0, p0, Landroid/util/DisplayMetrics;->density:F

    #@c
    .line 239
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    #@e
    iput v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    #@10
    .line 240
    iget v0, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    #@12
    iput v0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    #@14
    .line 241
    iget v0, p1, Landroid/util/DisplayMetrics;->xdpi:F

    #@16
    iput v0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    #@18
    .line 242
    iget v0, p1, Landroid/util/DisplayMetrics;->ydpi:F

    #@1a
    iput v0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    #@1c
    .line 243
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    #@1e
    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    #@20
    .line 244
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    #@22
    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    #@24
    .line 245
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    #@26
    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatDensity:F

    #@28
    .line 246
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    #@2a
    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    #@2c
    .line 247
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    #@2e
    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    #@30
    .line 248
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    #@32
    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    #@34
    .line 249
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    #@36
    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    #@38
    .line 235
    return-void
.end method

.method public setToDefaults()V
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 253
    iput v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@3
    .line 254
    iput v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    #@5
    .line 255
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    #@7
    int-to-float v0, v0

    #@8
    const/high16 v1, 0x43200000    # 160.0f

    #@a
    div-float/2addr v0, v1

    #@b
    iput v0, p0, Landroid/util/DisplayMetrics;->density:F

    #@d
    .line 256
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    #@f
    iput v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    #@11
    .line 257
    iget v0, p0, Landroid/util/DisplayMetrics;->density:F

    #@13
    iput v0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    #@15
    .line 258
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    #@17
    int-to-float v0, v0

    #@18
    iput v0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    #@1a
    .line 259
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    #@1c
    int-to-float v0, v0

    #@1d
    iput v0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    #@1f
    .line 260
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@21
    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    #@23
    .line 261
    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    #@25
    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    #@27
    .line 262
    iget v0, p0, Landroid/util/DisplayMetrics;->density:F

    #@29
    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatDensity:F

    #@2b
    .line 263
    iget v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    #@2d
    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    #@2f
    .line 264
    iget v0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    #@31
    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    #@33
    .line 265
    iget v0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    #@35
    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    #@37
    .line 266
    iget v0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    #@39
    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    #@3b
    .line 252
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "DisplayMetrics{density="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/util/DisplayMetrics;->density:F

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", width="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 319
    const-string/jumbo v1, ", height="

    #@22
    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 319
    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    #@28
    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 319
    const-string/jumbo v1, ", scaledDensity="

    #@2f
    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 319
    iget v1, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    #@35
    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 320
    const-string/jumbo v1, ", xdpi="

    #@3c
    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 320
    iget v1, p0, Landroid/util/DisplayMetrics;->xdpi:F

    #@42
    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 320
    const-string/jumbo v1, ", ydpi="

    #@49
    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 320
    iget v1, p0, Landroid/util/DisplayMetrics;->ydpi:F

    #@4f
    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    .line 320
    const-string/jumbo v1, "}"

    #@56
    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v0

    #@5e
    return-object v0
.end method
