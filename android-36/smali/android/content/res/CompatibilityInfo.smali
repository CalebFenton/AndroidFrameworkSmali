.class public Landroid/content/res/CompatibilityInfo;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/CompatibilityInfo$Translator;,
        Landroid/content/res/CompatibilityInfo$CompatScale;
    }
.end annotation


# static fields
.field private static final greylist-max-o ALWAYS_NEEDS_COMPAT:I = 0x2

.field public static final greylist-max-p CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/res/CompatibilityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

.field public static final greylist-max-o DEFAULT_NORMAL_SHORT_DIMENSION:I = 0x140

.field private static final blacklist HAS_OVERRIDE_SCALING:I = 0x20

.field public static final greylist-max-o MAXIMUM_ASPECT_RATIO:F = 1.7791667f

.field private static final greylist-max-o NEEDS_COMPAT_RES:I = 0x10

.field private static final greylist-max-o NEEDS_SCREEN_COMPAT:I = 0x8

.field private static final greylist-max-o NEVER_NEEDS_COMPAT:I = 0x4

.field private static final greylist-max-o SCALING_REQUIRED:I = 0x1

.field private static blacklist sOverrideDensityInvertScale:F

.field private static blacklist sOverrideDisplayRotation:I

.field private static blacklist sOverrideInvertedScale:F


# instance fields
.field public final greylist-max-o applicationDensity:I

.field public final blacklist applicationDensityInvertedScale:F

.field public final blacklist applicationDensityScale:F

.field public blacklist applicationDisplayRotation:I

.field public final greylist-max-o applicationInvertedScale:F

.field public final greylist applicationScale:F

.field private final greylist-max-o mCompatibilityFlags:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 53
    new-instance v0, Landroid/content/res/CompatibilityInfo$1;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$1;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    .line 157
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    .line 160
    sput v0, Landroid/content/res/CompatibilityInfo;->sOverrideDensityInvertScale:F

    .line 164
    const/4 v0, -0x1

    sput v0, Landroid/content/res/CompatibilityInfo;->sOverrideDisplayRotation:I

    .line 932
    new-instance v0, Landroid/content/res/CompatibilityInfo$2;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$2;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist <init>()V
    .registers 4

    .line 359
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x4

    invoke-direct {p0, v2, v0, v1, v1}, Landroid/content/res/CompatibilityInfo;-><init>(IIFF)V

    .line 362
    return-void
.end method

.method private constructor greylist-max-o <init>(IIFF)V
    .registers 7
    .param p1, "compFlags"    # I
    .param p2, "dens"    # I
    .param p3, "scale"    # F
    .param p4, "invertedScale"    # F

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDisplayRotation:I

    .line 349
    iput p1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 350
    iput p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 351
    iput p3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 352
    iput p4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 353
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v0, v0

    int-to-float v1, p2

    div-float/2addr v0, v1

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    .line 354
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    .line 355
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/pm/ApplicationInfo;IIZ)V
    .registers 11
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "screenLayout"    # I
    .param p3, "sw"    # I
    .param p4, "forceCompat"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 170
    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local p2    # "screenLayout":I
    .end local p3    # "sw":I
    .end local p4    # "forceCompat":Z
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v2, "screenLayout":I
    .local v3, "sw":I
    .local v4, "forceCompat":Z
    invoke-direct/range {v0 .. v5}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZF)V

    .line 171
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/ApplicationInfo;IIZF)V
    .registers 13
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "screenLayout"    # I
    .param p3, "sw"    # I
    .param p4, "forceCompat"    # Z
    .param p5, "scaleFactor"    # F

    .line 175
    move v6, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local p2    # "screenLayout":I
    .end local p3    # "sw":I
    .end local p4    # "forceCompat":Z
    .end local p5    # "scaleFactor":F
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v2, "screenLayout":I
    .local v3, "sw":I
    .local v4, "forceCompat":Z
    .local v5, "scaleFactor":F
    invoke-direct/range {v0 .. v6}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZFF)V

    .line 176
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/ApplicationInfo;IIZFF)V
    .registers 16
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "screenLayout"    # I
    .param p3, "sw"    # I
    .param p4, "forceCompat"    # Z
    .param p5, "scaleFactor"    # F
    .param p6, "densityScaleFactor"    # F

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDisplayRotation:I

    .line 180
    const/4 v0, 0x0

    .line 182
    .local v0, "compatFlags":I
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_f

    .line 183
    or-int/lit8 v0, v0, 0x10

    .line 185
    :cond_f
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p5, v1

    if-nez v2, :cond_104

    cmpl-float v2, p6, v1

    if-eqz v2, :cond_1b

    goto/16 :goto_104

    .line 196
    :cond_1b
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-nez v2, :cond_c2

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-nez v2, :cond_c2

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    if-eqz v2, :cond_29

    goto/16 :goto_c2

    .line 246
    :cond_29
    const/4 v2, 0x2

    .line 252
    .local v2, "EXPANDABLE":I
    const/16 v3, 0x8

    .line 258
    .local v3, "LARGE_SCREENS":I
    const/16 v4, 0x20

    .line 260
    .local v4, "XLARGE_SCREENS":I
    const/4 v5, 0x0

    .line 264
    .local v5, "sizeInfo":I
    const/4 v6, 0x0

    .line 266
    .local v6, "anyResizeable":Z
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x800

    if-eqz v7, :cond_3d

    .line 267
    or-int/lit8 v5, v5, 0x8

    .line 268
    const/4 v6, 0x1

    .line 269
    if-nez p4, :cond_3d

    .line 273
    or-int/lit8 v5, v5, 0x22

    .line 276
    :cond_3d
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x80000

    and-int/2addr v7, v8

    if-eqz v7, :cond_49

    .line 277
    const/4 v6, 0x1

    .line 278
    if-nez p4, :cond_49

    .line 279
    or-int/lit8 v5, v5, 0x22

    .line 282
    :cond_49
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x1000

    if-eqz v7, :cond_52

    .line 283
    const/4 v6, 0x1

    .line 284
    or-int/lit8 v5, v5, 0x2

    .line 287
    :cond_52
    if-eqz p4, :cond_56

    .line 292
    and-int/lit8 v5, v5, -0x3

    .line 295
    :cond_56
    or-int/lit8 v0, v0, 0x8

    .line 296
    and-int/lit8 v7, p2, 0xf

    packed-switch v7, :pswitch_data_120

    goto :goto_7a

    .line 298
    :pswitch_5e
    and-int/lit8 v7, v5, 0x20

    if-eqz v7, :cond_64

    .line 299
    and-int/lit8 v0, v0, -0x9

    .line 301
    :cond_64
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_7a

    .line 302
    or-int/lit8 v0, v0, 0x4

    goto :goto_7a

    .line 306
    :pswitch_6c
    and-int/lit8 v7, v5, 0x8

    if-eqz v7, :cond_72

    .line 307
    and-int/lit8 v0, v0, -0x9

    .line 309
    :cond_72
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x800

    if-eqz v7, :cond_7a

    .line 310
    or-int/lit8 v0, v0, 0x4

    .line 315
    :cond_7a
    :goto_7a
    const/high16 v7, 0x10000000

    and-int/2addr v7, p2

    if-eqz v7, :cond_8b

    .line 316
    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_86

    .line 317
    and-int/lit8 v0, v0, -0x9

    goto :goto_8f

    .line 318
    :cond_86
    if-nez v6, :cond_8f

    .line 319
    or-int/lit8 v0, v0, 0x2

    goto :goto_8f

    .line 322
    :cond_8b
    and-int/lit8 v0, v0, -0x9

    .line 323
    or-int/lit8 v0, v0, 0x4

    .line 326
    :cond_8f
    :goto_8f
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x2000

    if-eqz v7, :cond_a2

    .line 327
    sget v7, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v7, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 328
    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 329
    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 330
    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    .line 331
    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    goto :goto_101

    .line 333
    :cond_a2
    const/16 v7, 0xa0

    iput v7, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 334
    sget v7, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v7, v7

    const/high16 v8, 0x43200000    # 160.0f

    div-float/2addr v7, v8

    iput v7, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 336
    iget v7, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    div-float v7, v1, v7

    iput v7, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 337
    sget v7, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v7, v7

    div-float/2addr v7, v8

    iput v7, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    .line 339
    iget v7, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    div-float/2addr v1, v7

    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    .line 340
    or-int/lit8 v0, v0, 0x1

    goto :goto_101

    .line 199
    .end local v2    # "EXPANDABLE":I
    .end local v3    # "LARGE_SCREENS":I
    .end local v4    # "XLARGE_SCREENS":I
    .end local v5    # "sizeInfo":I
    .end local v6    # "anyResizeable":Z
    :cond_c2
    :goto_c2
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-eqz v2, :cond_c9

    .line 200
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    goto :goto_cb

    .line 201
    :cond_c9
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    :goto_cb
    nop

    .line 202
    .local v2, "required":I
    if-nez v2, :cond_d0

    .line 203
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 205
    :cond_d0
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-eqz v3, :cond_d7

    .line 206
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    goto :goto_d8

    :cond_d7
    move v3, v2

    .line 207
    .local v3, "compat":I
    :goto_d8
    if-ge v3, v2, :cond_db

    .line 208
    move v3, v2

    .line 210
    :cond_db
    iget v4, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 212
    .local v4, "largest":I
    const/16 v5, 0x140

    if-le v2, v5, :cond_e4

    .line 219
    or-int/lit8 v0, v0, 0x4

    goto :goto_f4

    .line 220
    :cond_e4
    if-eqz v4, :cond_eb

    if-le p3, v4, :cond_eb

    .line 224
    or-int/lit8 v0, v0, 0xa

    goto :goto_f4

    .line 225
    :cond_eb
    if-lt v3, p3, :cond_f0

    .line 228
    or-int/lit8 v0, v0, 0x4

    goto :goto_f4

    .line 229
    :cond_f0
    if-eqz p4, :cond_f4

    .line 232
    or-int/lit8 v0, v0, 0x8

    .line 236
    :cond_f4
    :goto_f4
    sget v5, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v5, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 237
    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 238
    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 239
    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    .line 240
    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    .line 241
    .end local v2    # "required":I
    .end local v3    # "compat":I
    .end local v4    # "largest":I
    nop

    .line 344
    :goto_101
    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 345
    return-void

    .line 186
    :cond_104
    :goto_104
    iput p5, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 187
    div-float v2, v1, p5

    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 188
    iput p6, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    .line 189
    div-float/2addr v1, p6

    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    .line 190
    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v1, v1

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 192
    const/16 v1, 0x24

    iput v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 194
    return-void

    :pswitch_data_120
    .packed-switch 0x3
        :pswitch_6c
        :pswitch_5e
    .end packed-switch
.end method

.method synthetic constructor blacklist <init>(Landroid/content/res/CompatibilityInfo-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/res/CompatibilityInfo;-><init>()V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 945
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDisplayRotation:I

    .line 946
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 947
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 948
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 949
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 950
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    .line 951
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    .line 952
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDisplayRotation:I

    .line 953
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/res/CompatibilityInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist applyDisplayRotationConfiguration(ILandroid/content/res/Configuration;)V
    .registers 3
    .param p0, "displayRotation"    # I
    .param p1, "inoutConfig"    # Landroid/content/res/Configuration;

    .line 692
    const/4 v0, -0x1

    if-eq p0, v0, :cond_8

    .line 693
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p0}, Landroid/app/WindowConfiguration;->setDisplayRotation(I)V

    .line 695
    :cond_8
    return-void
.end method

.method public static blacklist applyOverrideIfNeeded(Landroid/content/res/Configuration;)V
    .registers 3
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 699
    invoke-static {}, Landroid/content/res/CompatibilityInfo;->hasOverrideDisplayRotation()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 700
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideDisplayRotation:I

    invoke-static {v0, p0}, Landroid/content/res/CompatibilityInfo;->applyDisplayRotationConfiguration(ILandroid/content/res/Configuration;)V

    .line 702
    :cond_b
    invoke-static {}, Landroid/content/res/CompatibilityInfo;->hasOverrideScale()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 703
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    sget v1, Landroid/content/res/CompatibilityInfo;->sOverrideDensityInvertScale:F

    invoke-static {v0, v1, p0}, Landroid/content/res/CompatibilityInfo;->scaleConfiguration(FFLandroid/content/res/Configuration;)V

    .line 705
    :cond_18
    return-void
.end method

.method public static blacklist applyOverrideIfNeeded(Landroid/util/MergedConfiguration;)V
    .registers 4
    .param p0, "mergedConfig"    # Landroid/util/MergedConfiguration;

    .line 709
    invoke-static {}, Landroid/content/res/CompatibilityInfo;->hasOverrideDisplayRotation()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 710
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideDisplayRotation:I

    .line 711
    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 710
    invoke-static {v0, v1}, Landroid/content/res/CompatibilityInfo;->applyDisplayRotationConfiguration(ILandroid/content/res/Configuration;)V

    .line 712
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideDisplayRotation:I

    .line 713
    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 712
    invoke-static {v0, v1}, Landroid/content/res/CompatibilityInfo;->applyDisplayRotationConfiguration(ILandroid/content/res/Configuration;)V

    .line 714
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideDisplayRotation:I

    .line 715
    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 714
    invoke-static {v0, v1}, Landroid/content/res/CompatibilityInfo;->applyDisplayRotationConfiguration(ILandroid/content/res/Configuration;)V

    .line 717
    :cond_21
    invoke-static {}, Landroid/content/res/CompatibilityInfo;->hasOverrideScale()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 718
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    sget v1, Landroid/content/res/CompatibilityInfo;->sOverrideDensityInvertScale:F

    .line 719
    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 718
    invoke-static {v0, v1, v2}, Landroid/content/res/CompatibilityInfo;->scaleConfiguration(FFLandroid/content/res/Configuration;)V

    .line 720
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    sget v1, Landroid/content/res/CompatibilityInfo;->sOverrideDensityInvertScale:F

    .line 721
    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 720
    invoke-static {v0, v1, v2}, Landroid/content/res/CompatibilityInfo;->scaleConfiguration(FFLandroid/content/res/Configuration;)V

    .line 722
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    sget v1, Landroid/content/res/CompatibilityInfo;->sOverrideDensityInvertScale:F

    .line 723
    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 722
    invoke-static {v0, v1, v2}, Landroid/content/res/CompatibilityInfo;->scaleConfiguration(FFLandroid/content/res/Configuration;)V

    .line 725
    :cond_48
    return-void
.end method

.method public static greylist-max-r computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F
    .registers 15
    .param p0, "dm"    # Landroid/util/DisplayMetrics;
    .param p1, "outDm"    # Landroid/util/DisplayMetrics;

    .line 777
    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 778
    .local v0, "width":I
    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 780
    .local v1, "height":I
    if-ge v0, v1, :cond_9

    .line 781
    move v2, v0

    .line 782
    .local v2, "shortSize":I
    move v3, v1

    .local v3, "longSize":I
    goto :goto_b

    .line 784
    .end local v2    # "shortSize":I
    .end local v3    # "longSize":I
    :cond_9
    move v2, v1

    .line 785
    .restart local v2    # "shortSize":I
    move v3, v0

    .line 787
    .restart local v3    # "longSize":I
    :goto_b
    const/high16 v4, 0x43a00000    # 320.0f

    iget v5, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v5, v4

    float-to-int v5, v5

    .line 788
    .local v5, "newShortSize":I
    int-to-float v6, v3

    int-to-float v7, v2

    div-float/2addr v6, v7

    .line 789
    .local v6, "aspect":F
    const v7, 0x3fe3bbbc

    cmpl-float v7, v6, v7

    if-lez v7, :cond_21

    .line 790
    const v6, 0x3fe3bbbc

    .line 792
    :cond_21
    int-to-float v7, v5

    mul-float/2addr v7, v6

    add-float/2addr v7, v4

    float-to-int v4, v7

    .line 794
    .local v4, "newLongSize":I
    if-ge v0, v1, :cond_2a

    .line 795
    move v7, v5

    .line 796
    .local v7, "newWidth":I
    move v8, v4

    .local v8, "newHeight":I
    goto :goto_2c

    .line 798
    .end local v7    # "newWidth":I
    .end local v8    # "newHeight":I
    :cond_2a
    move v7, v4

    .line 799
    .restart local v7    # "newWidth":I
    move v8, v5

    .line 802
    .restart local v8    # "newHeight":I
    :goto_2c
    int-to-float v9, v0

    int-to-float v10, v7

    div-float/2addr v9, v10

    .line 803
    .local v9, "sw":F
    int-to-float v10, v1

    int-to-float v11, v8

    div-float/2addr v10, v11

    .line 804
    .local v10, "sh":F
    cmpg-float v11, v9, v10

    if-gez v11, :cond_38

    move v11, v9

    goto :goto_39

    :cond_38
    move v11, v10

    .line 805
    .local v11, "scale":F
    :goto_39
    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v12, v11, v12

    if-gez v12, :cond_41

    .line 806
    const/high16 v11, 0x3f800000    # 1.0f

    .line 809
    :cond_41
    if-eqz p1, :cond_47

    .line 810
    iput v7, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 811
    iput v8, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 814
    :cond_47
    return v11
.end method

.method public static blacklist getOverrideDensityInvertedScale()F
    .registers 1

    .line 750
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideDensityInvertScale:F

    return v0
.end method

.method public static blacklist getOverrideDisplayRotation()I
    .registers 1

    .line 765
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideDisplayRotation:I

    return v0
.end method

.method public static blacklist getOverrideInvertedScale()F
    .registers 1

    .line 745
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    return v0
.end method

.method private static blacklist hasOverrideDisplayRotation()Z
    .registers 2

    .line 755
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideDisplayRotation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private static blacklist hasOverrideScale()Z
    .registers 2

    .line 729
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_11

    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideDensityInvertScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method private blacklist isCompatibilityFlagsEqual(Landroid/content/res/CompatibilityInfo;)Z
    .registers 4
    .param p1, "oc"    # Landroid/content/res/CompatibilityInfo;

    .line 865
    if-eqz p1, :cond_a

    iget v0, p1, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private blacklist isDisplayRotationEqual(Landroid/content/res/CompatibilityInfo;)Z
    .registers 4
    .param p1, "oc"    # Landroid/content/res/CompatibilityInfo;

    .line 861
    if-eqz p1, :cond_a

    iget v0, p1, Landroid/content/res/CompatibilityInfo;->applicationDisplayRotation:I

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDisplayRotation:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private blacklist isScaleEqual(Landroid/content/res/CompatibilityInfo;)Z
    .registers 5
    .param p1, "oc"    # Landroid/content/res/CompatibilityInfo;

    .line 851
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 852
    :cond_4
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iget v2, p1, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    if-eq v1, v2, :cond_b

    return v0

    .line 853
    :cond_b
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v2, p1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_14

    return v0

    .line 854
    :cond_14
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v2, p1, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1d

    return v0

    .line 855
    :cond_1d
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    iget v2, p1, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_26

    return v0

    .line 856
    :cond_26
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    iget v2, p1, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2f

    return v0

    .line 857
    :cond_2f
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist scaleConfiguration(FFLandroid/content/res/Configuration;)V
    .registers 5
    .param p0, "invertScale"    # F
    .param p1, "densityInvertScale"    # F
    .param p2, "inoutConfig"    # Landroid/content/res/Configuration;

    .line 684
    iget v0, p2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 686
    iget-object v0, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p0}, Landroid/app/WindowConfiguration;->scale(F)V

    .line 687
    return-void
.end method

.method public static blacklist scaleConfiguration(FLandroid/content/res/Configuration;)V
    .registers 2
    .param p0, "invertScale"    # F
    .param p1, "inoutConfig"    # Landroid/content/res/Configuration;

    .line 678
    invoke-static {p0, p0, p1}, Landroid/content/res/CompatibilityInfo;->scaleConfiguration(FFLandroid/content/res/Configuration;)V

    .line 679
    return-void
.end method

.method private static blacklist scaleDisplayMetrics(FFLandroid/util/DisplayMetrics;Z)V
    .registers 6
    .param p0, "invertScale"    # F
    .param p1, "densityInvertScale"    # F
    .param p2, "inoutDm"    # Landroid/util/DisplayMetrics;
    .param p3, "applyToSize"    # Z

    .line 628
    iget v0, p2, Landroid/util/DisplayMetrics;->noncompatDensity:F

    mul-float/2addr v0, p1

    iput v0, p2, Landroid/util/DisplayMetrics;->density:F

    .line 629
    iget v0, p2, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 644
    iget v0, p2, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    mul-float/2addr v0, p1

    iput v0, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 645
    iget v0, p2, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    mul-float/2addr v0, p1

    iput v0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    .line 646
    iget v0, p2, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    mul-float/2addr v0, p1

    iput v0, p2, Landroid/util/DisplayMetrics;->ydpi:F

    .line 647
    if-eqz p3, :cond_30

    .line 648
    iget v0, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, p0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 649
    iget v0, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, p0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 651
    :cond_30
    return-void
.end method

.method public static blacklist setOverrideDisplayRotation(I)V
    .registers 1
    .param p0, "displayRotation"    # I

    .line 760
    sput p0, Landroid/content/res/CompatibilityInfo;->sOverrideDisplayRotation:I

    .line 761
    return-void
.end method

.method public static blacklist setOverrideInvertedScale(F)V
    .registers 1
    .param p0, "invertScale"    # F

    .line 734
    invoke-static {p0, p0}, Landroid/content/res/CompatibilityInfo;->setOverrideInvertedScale(FF)V

    .line 735
    return-void
.end method

.method public static blacklist setOverrideInvertedScale(FF)V
    .registers 2
    .param p0, "invertScale"    # F
    .param p1, "densityInvertScale"    # F

    .line 739
    sput p0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    .line 740
    sput p1, Landroid/content/res/CompatibilityInfo;->sOverrideDensityInvertScale:F

    .line 741
    return-void
.end method


# virtual methods
.method public greylist-max-o alwaysSupportsScreen()Z
    .registers 2

    .line 392
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist applyDisplayMetricsIfNeeded(Landroid/util/DisplayMetrics;Z)V
    .registers 5
    .param p1, "inoutDm"    # Landroid/util/DisplayMetrics;
    .param p2, "applyToSize"    # Z

    .line 598
    invoke-static {}, Landroid/content/res/CompatibilityInfo;->hasOverrideScale()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 599
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    sget v1, Landroid/content/res/CompatibilityInfo;->sOverrideDensityInvertScale:F

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/CompatibilityInfo;->scaleDisplayMetrics(FFLandroid/util/DisplayMetrics;Z)V

    .line 601
    return-void

    .line 603
    :cond_e
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v0}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 604
    invoke-virtual {p0, p1}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 606
    :cond_19
    return-void
.end method

.method public greylist-max-o applyToConfiguration(ILandroid/content/res/Configuration;)V
    .registers 5
    .param p1, "displayDensity"    # I
    .param p2, "inoutConfig"    # Landroid/content/res/Configuration;

    .line 654
    invoke-static {}, Landroid/content/res/CompatibilityInfo;->hasOverrideDisplayRotation()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 655
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideDisplayRotation:I

    invoke-static {v0, p2}, Landroid/content/res/CompatibilityInfo;->applyDisplayRotationConfiguration(ILandroid/content/res/Configuration;)V

    .line 657
    :cond_b
    invoke-static {}, Landroid/content/res/CompatibilityInfo;->hasOverrideScale()Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 658
    :cond_12
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 662
    iget v0, p2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, -0x10

    or-int/lit8 v0, v0, 0x2

    iput v0, p2, Landroid/content/res/Configuration;->screenLayout:I

    .line 665
    iget v0, p2, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 666
    iget v0, p2, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 667
    iget v0, p2, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 669
    :cond_2c
    iput p1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 670
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 671
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    invoke-static {v0, v1, p2}, Landroid/content/res/CompatibilityInfo;->scaleConfiguration(FFLandroid/content/res/Configuration;)V

    .line 674
    :cond_3b
    return-void
.end method

.method public greylist-max-o applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .registers 5
    .param p1, "inoutDm"    # Landroid/util/DisplayMetrics;

    .line 609
    invoke-static {}, Landroid/content/res/CompatibilityInfo;->hasOverrideScale()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 610
    :cond_7
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_11

    .line 613
    invoke-static {p1, p1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    goto :goto_19

    .line 615
    :cond_11
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iput v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 616
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iput v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 619
    :goto_19
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 620
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Landroid/content/res/CompatibilityInfo;->scaleDisplayMetrics(FFLandroid/util/DisplayMetrics;Z)V

    .line 623
    :cond_27
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 917
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 819
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 820
    return v0

    .line 823
    :cond_4
    instance-of v1, p1, Landroid/content/res/CompatibilityInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    move-object v1, p1

    check-cast v1, Landroid/content/res/CompatibilityInfo;

    .line 827
    .local v1, "oc":Landroid/content/res/CompatibilityInfo;
    invoke-direct {p0, v1}, Landroid/content/res/CompatibilityInfo;->isCompatibilityFlagsEqual(Landroid/content/res/CompatibilityInfo;)Z

    move-result v3

    if-nez v3, :cond_13

    return v2

    .line 828
    :cond_13
    invoke-direct {p0, v1}, Landroid/content/res/CompatibilityInfo;->isScaleEqual(Landroid/content/res/CompatibilityInfo;)Z

    move-result v3

    if-nez v3, :cond_1a

    return v2

    .line 829
    :cond_1a
    invoke-direct {p0, v1}, Landroid/content/res/CompatibilityInfo;->isDisplayRotationEqual(Landroid/content/res/CompatibilityInfo;)Z

    move-result v3

    if-nez v3, :cond_21

    return v2

    .line 830
    :cond_21
    return v0

    .line 824
    .end local v1    # "oc":Landroid/content/res/CompatibilityInfo;
    :cond_22
    return v2
.end method

.method public blacklist getCompatibilityChangesForConfig(Landroid/content/res/CompatibilityInfo;)I
    .registers 4
    .param p1, "o"    # Landroid/content/res/CompatibilityInfo;

    .line 838
    const/4 v0, 0x0

    .line 839
    .local v0, "changes":I
    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;->isDisplayRotationEqual(Landroid/content/res/CompatibilityInfo;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 840
    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    .line 842
    :cond_a
    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;->isScaleEqual(Landroid/content/res/CompatibilityInfo;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;->isCompatibilityFlagsEqual(Landroid/content/res/CompatibilityInfo;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 843
    :cond_16
    or-int/lit16 v0, v0, 0xd00

    .line 847
    :cond_18
    return v0
.end method

.method public greylist getTranslator()Landroid/content/res/CompatibilityInfo$Translator;
    .registers 2

    .line 405
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_c

    new-instance v0, Landroid/content/res/CompatibilityInfo$Translator;

    invoke-direct {v0, p0}, Landroid/content/res/CompatibilityInfo$Translator;-><init>(Landroid/content/res/CompatibilityInfo;)V

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0
.end method

.method public blacklist hasOverrideScaling()Z
    .registers 2

    .line 374
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 904
    const/16 v0, 0x11

    .line 905
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    add-int/2addr v1, v2

    .line 906
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    add-int/2addr v0, v2

    .line 907
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 908
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 909
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 910
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 911
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDisplayRotation:I

    add-int/2addr v1, v2

    .line 912
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public blacklist isOverrideDisplayRotationRequired()Z
    .registers 3

    .line 379
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDisplayRotation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public greylist isScalingRequired()Z
    .registers 3

    .line 369
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public greylist-max-o needsCompatResources()Z
    .registers 2

    .line 396
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o neverSupportsScreen()Z
    .registers 2

    .line 388
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist supportsScreen()Z
    .registers 2

    .line 384
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 871
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 873
    const-string v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 875
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 877
    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    :cond_2d
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->hasOverrideScaling()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 880
    const-string v1, " overrideInvScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 882
    const-string v1, " overrideDensityInvScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 885
    :cond_47
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isOverrideDisplayRotationRequired()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 886
    const-string v1, " overrideDisplayRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDisplayRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 889
    :cond_57
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_62

    .line 890
    const-string v1, " resizing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    :cond_62
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 893
    const-string v1, " never-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    :cond_6d
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 896
    const-string v1, " always-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    :cond_78
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 922
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 923
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 924
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 925
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 926
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 927
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 928
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDisplayRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 929
    return-void
.end method
