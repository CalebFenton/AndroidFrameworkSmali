.class public Landroid/app/Notification$Colors;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Colors"
.end annotation


# instance fields
.field private blacklist mBackgroundColor:I

.field private blacklist mContrastColor:I

.field private blacklist mErrorColor:I

.field private blacklist mOnTertiaryAccentTextColor:I

.field private blacklist mOnTertiaryFixedAccentTextColor:I

.field private blacklist mPaletteIsForColorized:Z

.field private blacklist mPaletteIsForNightMode:Z

.field private blacklist mPaletteIsForRawColor:I

.field private blacklist mPrimaryAccentColor:I

.field private blacklist mPrimaryTextColor:I

.field private blacklist mProtectionColor:I

.field private blacklist mRippleAlpha:I

.field private blacklist mSecondaryAccentColor:I

.field private blacklist mSecondaryTextColor:I

.field private blacklist mTertiaryAccentColor:I

.field private blacklist mTertiaryFixedDimAccentColor:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smflattenAlpha(II)I
    .registers 2

    invoke-static {p0, p1}, Landroid/app/Notification$Colors;->flattenAlpha(II)I

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 15081
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15082
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/Notification$Colors;->mPaletteIsForRawColor:I

    .line 15083
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Notification$Colors;->mPaletteIsForColorized:Z

    .line 15084
    iput-boolean v1, p0, Landroid/app/Notification$Colors;->mPaletteIsForNightMode:Z

    .line 15086
    iput v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 15087
    iput v0, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    .line 15088
    iput v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    .line 15089
    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    .line 15090
    iput v0, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    .line 15091
    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    .line 15092
    iput v0, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    .line 15093
    iput v0, p0, Landroid/app/Notification$Colors;->mOnTertiaryAccentTextColor:I

    .line 15094
    iput v0, p0, Landroid/app/Notification$Colors;->mTertiaryFixedDimAccentColor:I

    .line 15095
    iput v0, p0, Landroid/app/Notification$Colors;->mOnTertiaryFixedAccentTextColor:I

    .line 15097
    iput v0, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    .line 15098
    iput v0, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    .line 15099
    const/16 v0, 0x33

    iput v0, p0, Landroid/app/Notification$Colors;->mRippleAlpha:I

    return-void
.end method

.method private static blacklist calculateContrastColor(Landroid/content/Context;IIIZ)I
    .registers 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "rawColor"    # I
    .param p2, "accentColor"    # I
    .param p3, "backgroundColor"    # I
    .param p4, "nightMode"    # Z

    .line 15252
    if-nez p1, :cond_b

    .line 15253
    move v0, p2

    .line 15254
    .local v0, "color":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 15255
    invoke-static {p0, p3, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveDefaultColor(Landroid/content/Context;IZ)I

    move-result v0

    goto :goto_f

    .line 15258
    .end local v0    # "color":I
    :cond_b
    invoke-static {p0, p1, p3, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveContrastColor(Landroid/content/Context;IIZ)I

    move-result v0

    .line 15261
    .restart local v0    # "color":I
    :cond_f
    :goto_f
    invoke-static {v0, p3}, Landroid/app/Notification$Colors;->flattenAlpha(II)I

    move-result v1

    return v1
.end method

.method private static blacklist flattenAlpha(II)I
    .registers 4
    .param p0, "color"    # I
    .param p1, "background"    # I

    .line 15266
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_a

    move v0, p0

    goto :goto_e

    .line 15267
    :cond_a
    invoke-static {p0, p1}, Lcom/android/internal/util/ContrastColorUtil;->compositeColors(II)I

    move-result v0

    .line 15266
    :goto_e
    return v0
.end method

.method private static blacklist getColor(Landroid/content/res/TypedArray;II)I
    .registers 4
    .param p0, "ta"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 15126
    if-nez p0, :cond_4

    move v0, p2

    goto :goto_8

    :cond_4
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    :goto_8
    return v0
.end method

.method private static blacklist obtainDayNightAttributes(Landroid/content/Context;[I)Landroid/content/res/TypedArray;
    .registers 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "attrs"    # [I

    .line 15115
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-nez v0, :cond_8

    .line 15116
    const/4 v0, 0x0

    return-object v0

    .line 15118
    :cond_8
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x10302e3

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 15119
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 15120
    .local v0, "theme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist getBackgroundColor()I
    .registers 2

    .line 15272
    iget v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    return v0
.end method

.method public blacklist getContrastColor()I
    .registers 2

    .line 15328
    iget v0, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    return v0
.end method

.method public blacklist getErrorColor()I
    .registers 2

    .line 15333
    iget v0, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    return v0
.end method

.method public blacklist getOnTertiaryAccentTextColor()I
    .registers 2

    .line 15310
    iget v0, p0, Landroid/app/Notification$Colors;->mOnTertiaryAccentTextColor:I

    return v0
.end method

.method public blacklist getOnTertiaryFixedAccentTextColor()I
    .registers 2

    .line 15320
    iget v0, p0, Landroid/app/Notification$Colors;->mOnTertiaryFixedAccentTextColor:I

    return v0
.end method

.method public blacklist getPrimaryAccentColor()I
    .registers 2

    .line 15295
    iget v0, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    return v0
.end method

.method public blacklist getPrimaryTextColor()I
    .registers 2

    .line 15285
    iget v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    return v0
.end method

.method public blacklist getProtectionColor()I
    .registers 2

    .line 15280
    iget v0, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    return v0
.end method

.method public blacklist getRippleAlpha()I
    .registers 2

    .line 15338
    iget v0, p0, Landroid/app/Notification$Colors;->mRippleAlpha:I

    return v0
.end method

.method public blacklist getSecondaryAccentColor()I
    .registers 2

    .line 15300
    iget v0, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    return v0
.end method

.method public blacklist getSecondaryTextColor()I
    .registers 2

    .line 15290
    iget v0, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    return v0
.end method

.method public blacklist getTertiaryAccentColor()I
    .registers 2

    .line 15305
    iget v0, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    return v0
.end method

.method public blacklist getTertiaryFixedDimAccentColor()I
    .registers 2

    .line 15315
    iget v0, p0, Landroid/app/Notification$Colors;->mTertiaryFixedDimAccentColor:I

    return v0
.end method

.method public blacklist resolvePalette(Landroid/content/Context;IZZ)V
    .registers 12
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "rawColor"    # I
    .param p3, "isColorized"    # Z
    .param p4, "nightMode"    # Z

    .line 15143
    iget v0, p0, Landroid/app/Notification$Colors;->mPaletteIsForRawColor:I

    if-ne v0, p2, :cond_d

    iget-boolean v0, p0, Landroid/app/Notification$Colors;->mPaletteIsForColorized:Z

    if-ne v0, p3, :cond_d

    iget-boolean v0, p0, Landroid/app/Notification$Colors;->mPaletteIsForNightMode:Z

    if-ne v0, p4, :cond_d

    .line 15146
    return-void

    .line 15148
    :cond_d
    iput p2, p0, Landroid/app/Notification$Colors;->mPaletteIsForRawColor:I

    .line 15149
    iput-boolean p3, p0, Landroid/app/Notification$Colors;->mPaletteIsForColorized:Z

    .line 15150
    iput-boolean p4, p0, Landroid/app/Notification$Colors;->mPaletteIsForNightMode:Z

    .line 15152
    const v0, 0x3f666666    # 0.9f

    const v1, 0x10602c6

    if-eqz p3, :cond_a2

    .line 15153
    if-nez p2, :cond_24

    .line 15154
    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    goto :goto_26

    .line 15156
    :cond_24
    iput p2, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 15158
    :goto_26
    invoke-static {}, Landroid/app/Flags;->uiRichOngoing()Z

    move-result v1

    const-wide/high16 v2, 0x4012000000000000L    # 4.5

    if-eqz v1, :cond_5a

    .line 15159
    iget v1, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {v1}, Landroid/app/Notification$Builder;->isColorDark(I)Z

    move-result v1

    .line 15160
    .local v1, "isBgDark":Z
    if-eqz v1, :cond_38

    const/4 v4, -0x1

    goto :goto_3a

    :cond_38
    const/high16 v4, -0x1000000

    .line 15161
    .local v4, "onSurfaceColorExtreme":I
    :goto_3a
    iget v5, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 15162
    invoke-static {v5, v4, v0}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v5

    iget v6, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 15161
    invoke-static {v5, v6, v1, v2, v3}, Lcom/android/internal/util/ContrastColorUtil;->ensureContrast(IIZD)I

    move-result v5

    iput v5, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    .line 15164
    iget v5, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 15165
    const v6, 0x3f4ccccd    # 0.8f

    invoke-static {v5, v4, v6}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v5

    iget v6, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 15164
    invoke-static {v5, v6, v1, v2, v3}, Lcom/android/internal/util/ContrastColorUtil;->ensureContrast(IIZD)I

    move-result v2

    iput v2, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    .line 15167
    .end local v1    # "isBgDark":Z
    .end local v4    # "onSurfaceColorExtreme":I
    goto :goto_76

    .line 15168
    :cond_5a
    iget v1, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 15169
    invoke-static {p1, v1, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result v1

    iget v4, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 15168
    invoke-static {v1, v4, v2, v3}, Lcom/android/internal/util/ContrastColorUtil;->findAlphaToMeetContrast(IID)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    .line 15171
    iget v1, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 15172
    invoke-static {p1, v1, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveSecondaryColor(Landroid/content/Context;IZ)I

    move-result v1

    iget v4, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 15171
    invoke-static {v1, v4, v2, v3}, Lcom/android/internal/util/ContrastColorUtil;->findAlphaToMeetContrast(IID)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    .line 15175
    :goto_76
    iget v1, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iput v1, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    .line 15176
    iget v1, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iput v1, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    .line 15177
    iget v1, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    iput v1, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    .line 15178
    iget v1, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iget v2, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {v1, v2}, Landroid/app/Notification$Colors;->flattenAlpha(II)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    .line 15179
    iget v1, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    iput v1, p0, Landroid/app/Notification$Colors;->mOnTertiaryAccentTextColor:I

    .line 15180
    iget v1, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    iput v1, p0, Landroid/app/Notification$Colors;->mTertiaryFixedDimAccentColor:I

    .line 15181
    iget v1, p0, Landroid/app/Notification$Colors;->mOnTertiaryAccentTextColor:I

    iput v1, p0, Landroid/app/Notification$Colors;->mOnTertiaryFixedAccentTextColor:I

    .line 15182
    iget v1, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iput v1, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    .line 15183
    const/16 v1, 0x33

    iput v1, p0, Landroid/app/Notification$Colors;->mRippleAlpha:I

    goto/16 :goto_184

    .line 15185
    :cond_a2
    const v2, 0x1010543

    const v3, 0x101042c

    filled-new-array {v2, v3}, [I

    move-result-object v2

    .line 15190
    .local v2, "attrs":[I
    const v3, 0x10602ce

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    iput v3, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 15191
    const v3, 0x10602b4

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    iput v3, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    .line 15192
    const v3, 0x10602b5

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    iput v3, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    .line 15193
    const v3, 0x10602c1

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    iput v3, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    .line 15194
    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    .line 15195
    const v1, 0x10602d5

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    .line 15196
    const v1, 0x10602b6

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mOnTertiaryAccentTextColor:I

    .line 15197
    const v1, 0x10602d8

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mTertiaryFixedDimAccentColor:I

    .line 15199
    const v1, 0x10602b8

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mOnTertiaryFixedAccentTextColor:I

    .line 15202
    invoke-static {p1, v2}, Landroid/app/Notification$Colors;->obtainDayNightAttributes(Landroid/content/Context;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 15203
    .local v1, "ta":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_100
    invoke-static {v1, v3, v4}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    .line 15204
    const v3, 0x33ffffff

    invoke-static {v1, v4, v3}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    iput v3, p0, Landroid/app/Notification$Colors;->mRippleAlpha:I
    :try_end_113
    .catchall {:try_start_100 .. :try_end_113} :catchall_18f

    .line 15205
    if-eqz v1, :cond_118

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->close()V

    .line 15206
    .end local v1    # "ta":Landroid/content/res/TypedArray;
    :cond_118
    iget v1, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    iget v3, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {p1, p2, v1, v3, p4}, Landroid/app/Notification$Colors;->calculateContrastColor(Landroid/content/Context;IIIZ)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    .line 15210
    iget v1, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    if-ne v1, v4, :cond_12e

    .line 15211
    iget v1, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {p1, v1, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    .line 15214
    :cond_12e
    iget v1, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    if-ne v1, v4, :cond_13a

    .line 15215
    iget v1, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {p1, v1, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveSecondaryColor(Landroid/content/Context;IZ)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    .line 15218
    :cond_13a
    iget v1, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    if-ne v1, v4, :cond_142

    .line 15219
    iget v1, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    iput v1, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    .line 15221
    :cond_142
    iget v1, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    if-ne v1, v4, :cond_14a

    .line 15222
    iget v1, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    iput v1, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    .line 15224
    :cond_14a
    iget v1, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    if-ne v1, v4, :cond_152

    .line 15225
    iget v1, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    iput v1, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    .line 15227
    :cond_152
    iget v1, p0, Landroid/app/Notification$Colors;->mOnTertiaryAccentTextColor:I

    const/16 v3, 0xff

    if-ne v1, v4, :cond_164

    .line 15228
    iget v1, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    .line 15229
    invoke-static {p1, v1, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result v1

    .line 15228
    invoke-static {v1, v3}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mOnTertiaryAccentTextColor:I

    .line 15232
    :cond_164
    iget v1, p0, Landroid/app/Notification$Colors;->mTertiaryFixedDimAccentColor:I

    if-ne v1, v4, :cond_16c

    .line 15233
    iget v1, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    iput v1, p0, Landroid/app/Notification$Colors;->mTertiaryFixedDimAccentColor:I

    .line 15235
    :cond_16c
    iget v1, p0, Landroid/app/Notification$Colors;->mOnTertiaryFixedAccentTextColor:I

    if-ne v1, v4, :cond_17c

    .line 15236
    iget v1, p0, Landroid/app/Notification$Colors;->mTertiaryFixedDimAccentColor:I

    .line 15237
    invoke-static {p1, v1, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result v1

    .line 15236
    invoke-static {v1, v3}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mOnTertiaryFixedAccentTextColor:I

    .line 15240
    :cond_17c
    iget v1, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    if-ne v1, v4, :cond_184

    .line 15241
    iget v1, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iput v1, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    .line 15245
    .end local v2    # "attrs":[I
    :cond_184
    :goto_184
    iget v1, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iget v2, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {v1, v2, v0}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    .line 15246
    return-void

    .line 15202
    .restart local v1    # "ta":Landroid/content/res/TypedArray;
    .restart local v2    # "attrs":[I
    :catchall_18f
    move-exception v0

    if-eqz v1, :cond_19a

    :try_start_192
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->close()V
    :try_end_195
    .catchall {:try_start_192 .. :try_end_195} :catchall_196

    goto :goto_19a

    :catchall_196
    move-exception v3

    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_19a
    :goto_19a
    throw v0
.end method
