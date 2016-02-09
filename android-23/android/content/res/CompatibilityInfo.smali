.class public Landroid/content/res/CompatibilityInfo;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/CompatibilityInfo$Translator;,
        Landroid/content/res/CompatibilityInfo$1;,
        Landroid/content/res/CompatibilityInfo$2;
    }
.end annotation


# static fields
.field private static final ALWAYS_NEEDS_COMPAT:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/CompatibilityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

.field public static final DEFAULT_NORMAL_SHORT_DIMENSION:I = 0x140

.field public static final MAXIMUM_ASPECT_RATIO:F = 1.7791667f

.field private static final NEEDS_SCREEN_COMPAT:I = 0x8

.field private static final NEVER_NEEDS_COMPAT:I = 0x4

.field private static final SCALING_REQUIRED:I = 0x1


# instance fields
.field public final applicationDensity:I

.field public final applicationInvertedScale:F

.field public final applicationScale:F

.field private final mCompatibilityFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 39
    new-instance v0, Landroid/content/res/CompatibilityInfo$1;

    #@2
    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$1;-><init>()V

    #@5
    sput-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    #@7
    .line 583
    new-instance v0, Landroid/content/res/CompatibilityInfo$2;

    #@9
    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$2;-><init>()V

    #@c
    .line 582
    sput-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e
    .line 37
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    #@2
    .line 253
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    #@4
    const/4 v1, 0x4

    #@5
    invoke-direct {p0, v1, v0, v2, v2}, Landroid/content/res/CompatibilityInfo;-><init>(IIFF)V

    #@8
    .line 252
    return-void
.end method

.method private constructor <init>(IIFF)V
    .locals 0
    .param p1, "compFlags"    # I
    .param p2, "dens"    # I
    .param p3, "scale"    # F
    .param p4, "invertedScale"    # F

    #@0
    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 246
    iput p1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    #@5
    .line 247
    iput p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    #@7
    .line 248
    iput p3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    #@9
    .line 249
    iput p4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    #@b
    .line 245
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;IIZ)V
    .locals 11
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "screenLayout"    # I
    .param p3, "sw"    # I
    .param p4, "forceCompat"    # Z

    #@0
    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 97
    const/4 v5, 0x0

    #@4
    .line 99
    .local v5, "compatFlags":I
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    #@6
    if-nez v9, :cond_0

    #@8
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    #@a
    if-eqz v9, :cond_4

    #@c
    .line 102
    :cond_0
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    #@e
    if-eqz v9, :cond_b

    #@10
    .line 103
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    #@12
    .line 105
    .local v7, "required":I
    :goto_0
    if-nez v7, :cond_1

    #@14
    .line 106
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    #@16
    .line 108
    :cond_1
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    #@18
    if-eqz v9, :cond_c

    #@1a
    .line 109
    iget v4, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    #@1c
    .line 110
    .local v4, "compat":I
    :goto_1
    if-ge v4, v7, :cond_2

    #@1e
    .line 111
    move v4, v7

    #@1f
    .line 113
    :cond_2
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    #@21
    .line 115
    .local v6, "largest":I
    const/16 v9, 0x140

    #@23
    if-le v7, v9, :cond_d

    #@25
    .line 122
    const/4 v5, 0x4

    #@26
    .line 139
    :cond_3
    :goto_2
    sget v9, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    #@28
    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    #@2a
    .line 140
    const/high16 v9, 0x3f800000    # 1.0f

    #@2c
    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    #@2e
    .line 141
    const/high16 v9, 0x3f800000    # 1.0f

    #@30
    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    #@32
    .line 241
    .end local v4    # "compat":I
    .end local v6    # "largest":I
    .end local v7    # "required":I
    :goto_3
    iput v5, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    #@34
    .line 96
    return-void

    #@35
    .line 100
    :cond_4
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    #@37
    if-nez v9, :cond_0

    #@39
    .line 148
    const/4 v0, 0x2

    #@3a
    .line 154
    .local v0, "EXPANDABLE":I
    const/16 v1, 0x8

    #@3c
    .line 160
    .local v1, "LARGE_SCREENS":I
    const/16 v2, 0x20

    #@3e
    .line 162
    .local v2, "XLARGE_SCREENS":I
    const/4 v8, 0x0

    #@3f
    .line 166
    .local v8, "sizeInfo":I
    const/4 v3, 0x0

    #@40
    .line 168
    .local v3, "anyResizeable":Z
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    #@42
    and-int/lit16 v9, v9, 0x800

    #@44
    if-eqz v9, :cond_5

    #@46
    .line 169
    const/16 v8, 0x8

    #@48
    .line 170
    const/4 v3, 0x1

    #@49
    .line 171
    if-nez p4, :cond_5

    #@4b
    .line 175
    or-int/lit8 v8, v8, 0x22

    #@4d
    .line 178
    :cond_5
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    #@4f
    const/high16 v10, 0x80000

    #@51
    and-int/2addr v9, v10

    #@52
    if-eqz v9, :cond_6

    #@54
    .line 179
    const/4 v3, 0x1

    #@55
    .line 180
    if-nez p4, :cond_6

    #@57
    .line 181
    or-int/lit8 v8, v8, 0x22

    #@59
    .line 184
    :cond_6
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    #@5b
    and-int/lit16 v9, v9, 0x1000

    #@5d
    if-eqz v9, :cond_7

    #@5f
    .line 185
    const/4 v3, 0x1

    #@60
    .line 186
    or-int/lit8 v8, v8, 0x2

    #@62
    .line 189
    :cond_7
    if-eqz p4, :cond_8

    #@64
    .line 194
    and-int/lit8 v8, v8, -0x3

    #@66
    .line 197
    :cond_8
    const/16 v5, 0x8

    #@68
    .line 198
    and-int/lit8 v9, p2, 0xf

    #@6a
    packed-switch v9, :pswitch_data_0

    #@6d
    .line 217
    :cond_9
    :goto_4
    const/high16 v9, 0x10000000

    #@6f
    and-int/2addr v9, p2

    #@70
    if-eqz v9, :cond_13

    #@72
    .line 218
    and-int/lit8 v9, v8, 0x2

    #@74
    if-eqz v9, :cond_12

    #@76
    .line 219
    and-int/lit8 v5, v5, -0x9

    #@78
    .line 228
    :cond_a
    :goto_5
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    #@7a
    and-int/lit16 v9, v9, 0x2000

    #@7c
    if-eqz v9, :cond_14

    #@7e
    .line 229
    sget v9, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    #@80
    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    #@82
    .line 230
    const/high16 v9, 0x3f800000    # 1.0f

    #@84
    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    #@86
    .line 231
    const/high16 v9, 0x3f800000    # 1.0f

    #@88
    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    #@8a
    goto :goto_3

    #@8b
    .line 104
    .end local v0    # "EXPANDABLE":I
    .end local v1    # "LARGE_SCREENS":I
    .end local v2    # "XLARGE_SCREENS":I
    .end local v3    # "anyResizeable":Z
    .end local v8    # "sizeInfo":I
    :cond_b
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    #@8d
    .restart local v7    # "required":I
    goto :goto_0

    #@8e
    .line 109
    :cond_c
    move v4, v7

    #@8f
    .restart local v4    # "compat":I
    goto :goto_1

    #@90
    .line 123
    .restart local v6    # "largest":I
    :cond_d
    if-eqz v6, :cond_e

    #@92
    if-le p3, v6, :cond_e

    #@94
    .line 127
    const/16 v5, 0xa

    #@96
    .line 123
    goto :goto_2

    #@97
    .line 128
    :cond_e
    if-lt v4, p3, :cond_f

    #@99
    .line 131
    const/4 v5, 0x4

    #@9a
    goto :goto_2

    #@9b
    .line 132
    :cond_f
    if-eqz p4, :cond_3

    #@9d
    .line 135
    const/16 v5, 0x8

    #@9f
    goto :goto_2

    #@a0
    .line 200
    .end local v4    # "compat":I
    .end local v6    # "largest":I
    .end local v7    # "required":I
    .restart local v0    # "EXPANDABLE":I
    .restart local v1    # "LARGE_SCREENS":I
    .restart local v2    # "XLARGE_SCREENS":I
    .restart local v3    # "anyResizeable":Z
    .restart local v8    # "sizeInfo":I
    :pswitch_0
    and-int/lit8 v9, v8, 0x20

    #@a2
    if-eqz v9, :cond_10

    #@a4
    .line 201
    and-int/lit8 v5, v5, -0x9

    #@a6
    .line 203
    :cond_10
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    #@a8
    const/high16 v10, 0x80000

    #@aa
    and-int/2addr v9, v10

    #@ab
    if-eqz v9, :cond_9

    #@ad
    .line 204
    or-int/lit8 v5, v5, 0x4

    #@af
    goto :goto_4

    #@b0
    .line 208
    :pswitch_1
    and-int/lit8 v9, v8, 0x8

    #@b2
    if-eqz v9, :cond_11

    #@b4
    .line 209
    and-int/lit8 v5, v5, -0x9

    #@b6
    .line 211
    :cond_11
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    #@b8
    and-int/lit16 v9, v9, 0x800

    #@ba
    if-eqz v9, :cond_9

    #@bc
    .line 212
    or-int/lit8 v5, v5, 0x4

    #@be
    goto :goto_4

    #@bf
    .line 220
    :cond_12
    if-nez v3, :cond_a

    #@c1
    .line 221
    or-int/lit8 v5, v5, 0x2

    #@c3
    goto :goto_5

    #@c4
    .line 224
    :cond_13
    and-int/lit8 v5, v5, -0x9

    #@c6
    .line 225
    or-int/lit8 v5, v5, 0x4

    #@c8
    goto :goto_5

    #@c9
    .line 233
    :cond_14
    const/16 v9, 0xa0

    #@cb
    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    #@cd
    .line 234
    sget v9, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    #@cf
    int-to-float v9, v9

    #@d0
    .line 235
    const/high16 v10, 0x43200000    # 160.0f

    #@d2
    .line 234
    div-float/2addr v9, v10

    #@d3
    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    #@d5
    .line 236
    iget v9, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    #@d7
    const/high16 v10, 0x3f800000    # 1.0f

    #@d9
    div-float v9, v10, v9

    #@db
    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    #@dd
    .line 237
    or-int/lit8 v5, v5, 0x1

    #@df
    goto/16 :goto_3

    #@e1
    .line 198
    nop

    #@e2
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/content/res/CompatibilityInfo;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/content/res/CompatibilityInfo;-><init>()V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 596
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    #@9
    .line 597
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    #@f
    .line 598
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    #@15
    .line 599
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    #@1b
    .line 595
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/CompatibilityInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public static computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F
    .locals 14
    .param p0, "dm"    # Landroid/util/DisplayMetrics;
    .param p1, "outDm"    # Landroid/util/DisplayMetrics;

    #@0
    .prologue
    .line 478
    iget v11, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    #@2
    .line 479
    .local v11, "width":I
    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    #@4
    .line 481
    .local v1, "height":I
    if-ge v11, v1, :cond_3

    #@6
    .line 482
    move v9, v11

    #@7
    .line 483
    .local v9, "shortSize":I
    move v2, v1

    #@8
    .line 488
    .local v2, "longSize":I
    :goto_0
    iget v12, p0, Landroid/util/DisplayMetrics;->density:F

    #@a
    const/high16 v13, 0x43a00000    # 320.0f

    #@c
    mul-float/2addr v12, v13

    #@d
    const/high16 v13, 0x3f000000    # 0.5f

    #@f
    add-float/2addr v12, v13

    #@10
    float-to-int v5, v12

    #@11
    .line 489
    .local v5, "newShortSize":I
    int-to-float v12, v2

    #@12
    int-to-float v13, v9

    #@13
    div-float v0, v12, v13

    #@15
    .line 490
    .local v0, "aspect":F
    const v12, 0x3fe3bbbc

    #@18
    cmpl-float v12, v0, v12

    #@1a
    if-lez v12, :cond_0

    #@1c
    .line 491
    const v0, 0x3fe3bbbc

    #@1f
    .line 493
    :cond_0
    int-to-float v12, v5

    #@20
    mul-float/2addr v12, v0

    #@21
    const/high16 v13, 0x3f000000    # 0.5f

    #@23
    add-float/2addr v12, v13

    #@24
    float-to-int v4, v12

    #@25
    .line 495
    .local v4, "newLongSize":I
    if-ge v11, v1, :cond_4

    #@27
    .line 496
    move v6, v5

    #@28
    .line 497
    .local v6, "newWidth":I
    move v3, v4

    #@29
    .line 503
    .local v3, "newHeight":I
    :goto_1
    int-to-float v12, v11

    #@2a
    int-to-float v13, v6

    #@2b
    div-float v10, v12, v13

    #@2d
    .line 504
    .local v10, "sw":F
    int-to-float v12, v1

    #@2e
    int-to-float v13, v3

    #@2f
    div-float v8, v12, v13

    #@31
    .line 505
    .local v8, "sh":F
    cmpg-float v12, v10, v8

    #@33
    if-gez v12, :cond_5

    #@35
    move v7, v10

    #@36
    .line 506
    .local v7, "scale":F
    :goto_2
    const/high16 v12, 0x3f800000    # 1.0f

    #@38
    cmpg-float v12, v7, v12

    #@3a
    if-gez v12, :cond_1

    #@3c
    .line 507
    const/high16 v7, 0x3f800000    # 1.0f

    #@3e
    .line 510
    :cond_1
    if-eqz p1, :cond_2

    #@40
    .line 511
    iput v6, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    #@42
    .line 512
    iput v3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    #@44
    .line 515
    :cond_2
    return v7

    #@45
    .line 485
    .end local v0    # "aspect":F
    .end local v2    # "longSize":I
    .end local v3    # "newHeight":I
    .end local v4    # "newLongSize":I
    .end local v5    # "newShortSize":I
    .end local v6    # "newWidth":I
    .end local v7    # "scale":F
    .end local v8    # "sh":F
    .end local v9    # "shortSize":I
    .end local v10    # "sw":F
    :cond_3
    move v9, v1

    #@46
    .line 486
    .restart local v9    # "shortSize":I
    move v2, v11

    #@47
    .restart local v2    # "longSize":I
    goto :goto_0

    #@48
    .line 499
    .restart local v0    # "aspect":F
    .restart local v4    # "newLongSize":I
    .restart local v5    # "newShortSize":I
    :cond_4
    move v6, v4

    #@49
    .line 500
    .restart local v6    # "newWidth":I
    move v3, v5

    #@4a
    .restart local v3    # "newHeight":I
    goto :goto_1

    #@4b
    .line 505
    .restart local v8    # "sh":F
    .restart local v10    # "sw":F
    :cond_5
    move v7, v8

    #@4c
    .restart local v7    # "scale":F
    goto :goto_2
.end method


# virtual methods
.method public alwaysSupportsScreen()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 274
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    #@3
    and-int/lit8 v1, v1, 0x4

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public applyToConfiguration(ILandroid/content/res/Configuration;)V
    .locals 3
    .param p1, "displayDensity"    # I
    .param p2, "inoutConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 452
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 457
    iget v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    #@8
    and-int/lit8 v1, v1, -0x10

    #@a
    or-int/lit8 v1, v1, 0x2

    #@c
    .line 456
    iput v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    #@e
    .line 459
    iget v1, p2, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    #@10
    iput v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    #@12
    .line 460
    iget v1, p2, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    #@14
    iput v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    #@16
    .line 461
    iget v1, p2, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    #@18
    iput v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@1a
    .line 463
    :cond_0
    iput p1, p2, Landroid/content/res/Configuration;->densityDpi:I

    #@1c
    .line 464
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_1

    #@22
    .line 465
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    #@24
    .line 466
    .local v0, "invertedRatio":F
    iget v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    #@26
    int-to-float v1, v1

    #@27
    mul-float/2addr v1, v0

    #@28
    const/high16 v2, 0x3f000000    # 0.5f

    #@2a
    add-float/2addr v1, v2

    #@2b
    float-to-int v1, v1

    #@2c
    iput v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    #@2e
    .line 451
    .end local v0    # "invertedRatio":F
    :cond_1
    return-void
.end method

.method public applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 3
    .param p1, "inoutDm"    # Landroid/util/DisplayMetrics;

    #@0
    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    #@2
    .line 430
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_1

    #@8
    .line 433
    invoke-static {p1, p1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    #@b
    .line 439
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 440
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    #@13
    .line 441
    .local v0, "invertedRatio":F
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    #@15
    mul-float/2addr v1, v0

    #@16
    iput v1, p1, Landroid/util/DisplayMetrics;->density:F

    #@18
    .line 442
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    #@1a
    int-to-float v1, v1

    #@1b
    mul-float/2addr v1, v0

    #@1c
    add-float/2addr v1, v2

    #@1d
    float-to-int v1, v1

    #@1e
    iput v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    #@20
    .line 443
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    #@22
    mul-float/2addr v1, v0

    #@23
    iput v1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    #@25
    .line 444
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    #@27
    mul-float/2addr v1, v0

    #@28
    iput v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    #@2a
    .line 445
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    #@2c
    mul-float/2addr v1, v0

    #@2d
    iput v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    #@2f
    .line 446
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    #@31
    int-to-float v1, v1

    #@32
    mul-float/2addr v1, v0

    #@33
    add-float/2addr v1, v2

    #@34
    float-to-int v1, v1

    #@35
    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    #@37
    .line 447
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    #@39
    int-to-float v1, v1

    #@3a
    mul-float/2addr v1, v0

    #@3b
    add-float/2addr v1, v2

    #@3c
    float-to-int v1, v1

    #@3d
    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    #@3f
    .line 429
    .end local v0    # "invertedRatio":F
    :cond_0
    return-void

    #@40
    .line 435
    :cond_1
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    #@42
    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    #@44
    .line 436
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    #@46
    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    #@48
    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 571
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 520
    if-ne p0, p1, :cond_0

    #@4
    .line 521
    return v6

    #@5
    .line 524
    :cond_0
    :try_start_0
    move-object v0, p1

    #@6
    check-cast v0, Landroid/content/res/CompatibilityInfo;

    #@8
    move-object v2, v0

    #@9
    .line 525
    .local v2, "oc":Landroid/content/res/CompatibilityInfo;
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    #@b
    iget v4, v2, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    #@d
    if-eq v3, v4, :cond_1

    #@f
    return v5

    #@10
    .line 526
    :cond_1
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    #@12
    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    #@14
    if-eq v3, v4, :cond_2

    #@16
    return v5

    #@17
    .line 527
    :cond_2
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    #@19
    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    #@1b
    cmpl-float v3, v3, v4

    #@1d
    if-eqz v3, :cond_3

    #@1f
    return v5

    #@20
    .line 528
    :cond_3
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    #@22
    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    cmpl-float v3, v3, v4

    #@26
    if-eqz v3, :cond_4

    #@28
    return v5

    #@29
    .line 529
    :cond_4
    return v6

    #@2a
    .line 530
    .end local v2    # "oc":Landroid/content/res/CompatibilityInfo;
    :catch_0
    move-exception v1

    #@2b
    .line 531
    .local v1, "e":Ljava/lang/ClassCastException;
    return v5
.end method

.method public getTranslator()Landroid/content/res/CompatibilityInfo$Translator;
    .locals 1

    #@0
    .prologue
    .line 282
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    new-instance v0, Landroid/content/res/CompatibilityInfo$Translator;

    #@8
    invoke-direct {v0, p0}, Landroid/content/res/CompatibilityInfo$Translator;-><init>(Landroid/content/res/CompatibilityInfo;)V

    #@b
    :goto_0
    return-object v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 562
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    #@2
    add-int/lit16 v0, v1, 0x20f

    #@4
    .line 563
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@6
    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    #@8
    add-int v0, v1, v2

    #@a
    .line 564
    mul-int/lit8 v1, v0, 0x1f

    #@c
    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    #@e
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    #@11
    move-result v2

    #@12
    add-int v0, v1, v2

    #@14
    .line 565
    mul-int/lit8 v1, v0, 0x1f

    #@16
    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    #@18
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    #@1b
    move-result v2

    #@1c
    add-int v0, v1, v2

    #@1e
    .line 566
    return v0
.end method

.method public isScalingRequired()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 262
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public neverSupportsScreen()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 270
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    #@3
    and-int/lit8 v1, v1, 0x2

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public supportsScreen()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 266
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    #@3
    and-int/lit8 v1, v1, 0x8

    #@5
    if-nez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 538
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 539
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    .line 540
    const-string/jumbo v1, "dpi"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 541
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_0

    #@1e
    .line 542
    const-string/jumbo v1, " "

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 543
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@29
    .line 544
    const-string/jumbo v1, "x"

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    .line 546
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    #@32
    move-result v1

    #@33
    if-nez v1, :cond_1

    #@35
    .line 547
    const-string/jumbo v1, " resizing"

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    .line 549
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    #@3e
    move-result v1

    #@3f
    if-eqz v1, :cond_2

    #@41
    .line 550
    const-string/jumbo v1, " never-compat"

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    .line 552
    :cond_2
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    #@4a
    move-result v1

    #@4b
    if-eqz v1, :cond_3

    #@4d
    .line 553
    const-string/jumbo v1, " always-compat"

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    .line 555
    :cond_3
    const-string/jumbo v1, "}"

    #@56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    .line 556
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v1

    #@5d
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 576
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 577
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 578
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@f
    .line 579
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@14
    .line 575
    return-void
.end method
