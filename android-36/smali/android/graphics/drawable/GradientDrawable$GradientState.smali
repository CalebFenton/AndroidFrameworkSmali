.class final Landroid/graphics/drawable/GradientDrawable$GradientState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "GradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/GradientDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GradientState"
.end annotation


# instance fields
.field public greylist-max-p mAngle:I

.field greylist-max-o mAttrCorners:[I

.field greylist-max-o mAttrGradient:[I

.field greylist-max-o mAttrPadding:[I

.field greylist-max-o mAttrSize:[I

.field greylist-max-o mAttrSolid:[I

.field greylist-max-o mAttrStroke:[I

.field blacklist mBlendMode:Landroid/graphics/BlendMode;

.field greylist-max-o mCenterX:F

.field greylist-max-o mCenterY:F

.field public greylist-max-o mChangingConfigurations:I

.field greylist-max-o mDensity:I

.field public greylist-max-o mDither:Z

.field public greylist-max-p mGradient:I

.field public greylist-max-p mGradientColors:[Landroid/content/res/ColorStateList;

.field greylist-max-o mGradientRadius:F

.field greylist-max-o mGradientRadiusType:I

.field public greylist-max-p mHeight:I

.field public greylist-max-p mInnerRadius:I

.field public greylist-max-p mInnerRadiusRatio:F

.field greylist-max-o mOpaqueOverBounds:Z

.field greylist-max-o mOpaqueOverShape:Z

.field public greylist-max-o mOpticalInsets:Landroid/graphics/Insets;

.field public greylist-max-p mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public greylist-max-p mPadding:Landroid/graphics/Rect;

.field public greylist mPositions:[F

.field public greylist-max-p mRadius:F

.field public greylist-max-p mRadiusArray:[F

.field public greylist-max-p mShape:I

.field public greylist-max-p mSolidColors:Landroid/content/res/ColorStateList;

.field public blacklist mStrokeCap:I

.field public greylist-max-o mStrokeColors:Landroid/content/res/ColorStateList;

.field public greylist mStrokeDashGap:F

.field public greylist mStrokeDashWidth:F

.field public greylist mStrokeWidth:I

.field public greylist-max-o mTempColors:[I

.field public greylist-max-o mTempPositions:[F

.field greylist-max-o mThemeAttrs:[I

.field public greylist-max-p mThickness:I

.field public greylist-max-p mThicknessRatio:F

.field greylist-max-o mTint:Landroid/content/res/ColorStateList;

.field greylist-max-o mUseLevel:Z

.field greylist-max-o mUseLevelForShape:Z

.field public greylist-max-p mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mcomputeOpacity(Landroid/graphics/drawable/GradientDrawable$GradientState;)V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V
    .registers 7
    .param p1, "orig"    # Landroid/graphics/drawable/GradientDrawable$GradientState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 2195
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 2121
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    .line 2123
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    .line 2125
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    .line 2138
    const/4 v1, -0x1

    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    .line 2140
    const/4 v2, 0x0

    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    .line 2142
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    .line 2144
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    .line 2146
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    .line 2148
    iput-object v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    .line 2150
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    .line 2152
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    .line 2154
    const/high16 v3, 0x40400000    # 3.0f

    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    .line 2156
    const/high16 v3, 0x41100000    # 9.0f

    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    .line 2158
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    .line 2160
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    .line 2162
    const/4 v1, 0x1

    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeCap:I

    .line 2164
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    .line 2165
    sget-object v3, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 2167
    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    .line 2168
    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    .line 2169
    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    .line 2170
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    .line 2171
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    .line 2172
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    .line 2177
    iput-object v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    .line 2178
    sget-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 2180
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    .line 2196
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 2197
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    .line 2198
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    .line 2199
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    .line 2200
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 2201
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    .line 2202
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_70

    .line 2203
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, [Landroid/content/res/ColorStateList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    .line 2205
    :cond_70
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    if-eqz v0, :cond_7e

    .line 2206
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    .line 2208
    :cond_7e
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    .line 2209
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    .line 2210
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    .line 2211
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    .line 2212
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    .line 2213
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    if-eqz v0, :cond_a0

    .line 2214
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    .line 2216
    :cond_a0
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_ad

    .line 2217
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    .line 2219
    :cond_ad
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    .line 2220
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    .line 2221
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    .line 2222
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    .line 2223
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    .line 2224
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    .line 2225
    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    .line 2226
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 2227
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    .line 2228
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    .line 2229
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    .line 2230
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    .line 2231
    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    .line 2232
    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    .line 2233
    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverBounds:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverBounds:Z

    .line 2234
    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverShape:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverShape:Z

    .line 2235
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    .line 2236
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mBlendMode:Landroid/graphics/BlendMode;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 2237
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    .line 2238
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    .line 2239
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    .line 2240
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    .line 2241
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    .line 2242
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    .line 2243
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    .line 2245
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    invoke-static {p2, v0}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    .line 2246
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    iget v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    if-eq v0, v1, :cond_126

    .line 2247
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    iget v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->applyDensityScaling(II)V

    .line 2249
    :cond_126
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    .registers 7
    .param p1, "orientation"    # Landroid/graphics/drawable/GradientDrawable$Orientation;
    .param p2, "gradientColors"    # [I

    .line 2190
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 2121
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    .line 2123
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    .line 2125
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    .line 2138
    const/4 v1, -0x1

    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    .line 2140
    const/4 v2, 0x0

    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    .line 2142
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    .line 2144
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    .line 2146
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    .line 2148
    iput-object v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    .line 2150
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    .line 2152
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    .line 2154
    const/high16 v3, 0x40400000    # 3.0f

    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    .line 2156
    const/high16 v3, 0x41100000    # 9.0f

    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    .line 2158
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    .line 2160
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    .line 2162
    const/4 v1, 0x1

    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeCap:I

    .line 2164
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    .line 2165
    sget-object v3, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 2167
    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    .line 2168
    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    .line 2169
    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    .line 2170
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    .line 2171
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    .line 2172
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    .line 2177
    iput-object v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    .line 2178
    sget-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 2180
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    .line 2191
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 2192
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientColors([I)V

    .line 2193
    return-void
.end method

.method private greylist-max-o applyDensityScaling(II)V
    .registers 9
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    .line 2274
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    const/4 v1, 0x1

    if-lez v0, :cond_d

    .line 2275
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    .line 2278
    :cond_d
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    if-lez v0, :cond_19

    .line 2279
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    .line 2282
    :cond_19
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    if-eq v0, v2, :cond_45

    .line 2283
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v0, v0, Landroid/graphics/Insets;->left:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    .line 2285
    .local v0, "left":I
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->top:I

    invoke-static {v2, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v2

    .line 2287
    .local v2, "top":I
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->right:I

    invoke-static {v3, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v3

    .line 2289
    .local v3, "right":I
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->bottom:I

    invoke-static {v4, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v4

    .line 2291
    .local v4, "bottom":I
    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v5

    iput-object v5, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 2293
    .end local v0    # "left":I
    .end local v2    # "top":I
    .end local v3    # "right":I
    .end local v4    # "bottom":I
    :cond_45
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    const/4 v2, 0x0

    if-eqz v0, :cond_7a

    .line 2294
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v3, p1, p2, v2}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 2296
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v3, p1, p2, v2}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 2298
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v3, p1, p2, v2}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 2300
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, p1, p2, v2}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 2303
    :cond_7a
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_89

    .line 2304
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    invoke-static {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(FII)F

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    .line 2306
    :cond_89
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    if-eqz v0, :cond_c7

    .line 2307
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    aget v4, v4, v2

    float-to-int v4, v4

    invoke-static {v4, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v4

    int-to-float v4, v4

    aput v4, v0, v2

    .line 2309
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    aget v2, v2, v1

    float-to-int v2, v2

    invoke-static {v2, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v1

    .line 2311
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    const/4 v4, 0x2

    aget v2, v2, v4

    float-to-int v2, v2

    invoke-static {v2, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v4

    .line 2313
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    const/4 v4, 0x3

    aget v2, v2, v4

    float-to-int v2, v2

    invoke-static {v2, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v4

    .line 2316
    :cond_c7
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    if-lez v0, :cond_d3

    .line 2317
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    .line 2320
    :cond_d3
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_e1

    .line 2321
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    invoke-static {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(FII)F

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    .line 2324
    :cond_e1
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_ef

    .line 2325
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    invoke-static {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(FII)F

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    .line 2328
    :cond_ef
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    if-nez v0, :cond_fb

    .line 2329
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    invoke-static {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(FII)F

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    .line 2332
    :cond_fb
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    if-lez v0, :cond_107

    .line 2333
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    .line 2335
    :cond_107
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    if-lez v0, :cond_113

    .line 2336
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    .line 2338
    :cond_113
    return-void
.end method

.method private greylist-max-o computeOpacity()V
    .registers 5

    .line 2431
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverBounds:Z

    .line 2432
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverShape:Z

    .line 2434
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_27

    .line 2435
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    array-length v2, v2

    if-ge v1, v2, :cond_27

    .line 2436
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v2, v2, v1

    if-eqz v2, :cond_24

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v2, v2, v1

    .line 2437
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/drawable/GradientDrawable;->isOpaque(I)Z

    move-result v2

    if-nez v2, :cond_24

    .line 2438
    return-void

    .line 2435
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 2444
    .end local v1    # "i":I
    :cond_27
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    if-nez v1, :cond_30

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_30

    .line 2445
    return-void

    .line 2449
    :cond_30
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverShape:Z

    .line 2451
    iget v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    if-nez v2, :cond_43

    iget v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_43

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    if-nez v2, :cond_43

    move v0, v1

    :cond_43
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverBounds:Z

    .line 2454
    return-void
.end method


# virtual methods
.method public whitelist canApplyTheme()Z
    .registers 6

    .line 2342
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 2343
    .local v0, "mGradientColorState":Z
    :goto_9
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2a

    .line 2344
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    array-length v4, v4

    if-ge v3, v4, :cond_2a

    .line 2345
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v4, v4, v3

    if-eqz v4, :cond_25

    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v4, v4, v3

    .line 2346
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_25

    move v4, v2

    goto :goto_26

    :cond_25
    move v4, v1

    :goto_26
    or-int/2addr v0, v4

    .line 2344
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 2349
    .end local v3    # "i":I
    :cond_2a
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    if-nez v3, :cond_72

    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    if-nez v3, :cond_72

    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    if-nez v3, :cond_72

    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    if-nez v3, :cond_72

    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    if-nez v3, :cond_72

    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    if-nez v3, :cond_72

    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    if-nez v3, :cond_72

    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_52

    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    .line 2353
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v3

    if-nez v3, :cond_72

    :cond_52
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_5e

    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    .line 2354
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v3

    if-nez v3, :cond_72

    :cond_5e
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_6a

    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    .line 2355
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v3

    if-nez v3, :cond_72

    :cond_6a
    if-nez v0, :cond_72

    .line 2357
    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v3

    if-eqz v3, :cond_73

    :cond_72
    move v1, v2

    .line 2349
    :cond_73
    return v1
.end method

.method public whitelist getChangingConfigurations()I
    .registers 4

    .line 2382
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 2383
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v1

    goto :goto_f

    :cond_e
    move v1, v2

    :goto_f
    or-int/2addr v0, v1

    .line 2384
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v1

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    or-int/2addr v0, v1

    .line 2385
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_27

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v2

    :cond_27
    or-int/2addr v0, v2

    .line 2382
    return v0
.end method

.method public blacklist getOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;
    .registers 2

    .line 2404
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object v0
.end method

.method public blacklist hasCenterColor()Z
    .registers 3

    .line 2270
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    array-length v0, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 2362
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;Landroid/graphics/drawable/GradientDrawable-IA;)V

    return-object v0
.end method

.method public whitelist newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 2370
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    invoke-static {p1, v0}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v0

    .line 2371
    .local v0, "density":I
    iget v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    if-eq v0, v1, :cond_10

    .line 2372
    new-instance v1, Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-direct {v1, p0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    .local v1, "state":Landroid/graphics/drawable/GradientDrawable$GradientState;
    goto :goto_11

    .line 2374
    .end local v1    # "state":Landroid/graphics/drawable/GradientDrawable$GradientState;
    :cond_10
    move-object v1, p0

    .line 2377
    .restart local v1    # "state":Landroid/graphics/drawable/GradientDrawable$GradientState;
    :goto_11
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p1, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;Landroid/graphics/drawable/GradientDrawable-IA;)V

    return-object v2
.end method

.method public greylist-max-o setCornerRadii([F)V
    .registers 3
    .param p1, "radii"    # [F

    .line 2475
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    .line 2476
    if-nez p1, :cond_7

    .line 2477
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    .line 2479
    :cond_7
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    .line 2480
    return-void
.end method

.method public greylist-max-o setCornerRadius(F)V
    .registers 3
    .param p1, "radius"    # F

    .line 2466
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_6

    .line 2467
    const/4 p1, 0x0

    .line 2469
    :cond_6
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    .line 2470
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    .line 2471
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    .line 2472
    return-void
.end method

.method public final greylist-max-o setDensity(I)V
    .registers 3
    .param p1, "targetDensity"    # I

    .line 2261
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    if-eq v0, p1, :cond_b

    .line 2262
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    .line 2263
    .local v0, "sourceDensity":I
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    .line 2265
    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->applyDensityScaling(II)V

    .line 2267
    .end local v0    # "sourceDensity":I
    :cond_b
    return-void
.end method

.method public greylist-max-o setGradientCenter(FF)V
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 2398
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    .line 2399
    iput p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    .line 2400
    return-void
.end method

.method public greylist-max-o setGradientColors([I)V
    .registers 6
    .param p1, "colors"    # [I

    .line 2408
    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 2409
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    goto :goto_26

    .line 2413
    :cond_6
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    array-length v1, v1

    array-length v2, p1

    if-eq v1, v2, :cond_15

    .line 2414
    :cond_10
    array-length v1, p1

    new-array v1, v1, [Landroid/content/res/ColorStateList;

    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    .line 2416
    :cond_15
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    array-length v2, p1

    if-ge v1, v2, :cond_26

    .line 2417
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget v3, p1, v1

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    aput-object v3, v2, v1

    .line 2416
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 2420
    .end local v1    # "i":I
    :cond_26
    :goto_26
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    .line 2421
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    .line 2422
    return-void
.end method

.method public greylist-max-o setGradientRadius(FI)V
    .registers 3
    .param p1, "gradientRadius"    # F
    .param p2, "type"    # I

    .line 2488
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    .line 2489
    iput p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    .line 2490
    return-void
.end method

.method public greylist-max-o setGradientType(I)V
    .registers 2
    .param p1, "gradient"    # I

    .line 2394
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    .line 2395
    return-void
.end method

.method public greylist-max-o setShape(I)V
    .registers 2
    .param p1, "shape"    # I

    .line 2389
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    .line 2390
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    .line 2391
    return-void
.end method

.method public greylist-max-o setSize(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 2483
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    .line 2484
    iput p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    .line 2485
    return-void
.end method

.method public greylist-max-o setSolidColors(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .line 2425
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    .line 2426
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    .line 2427
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    .line 2428
    return-void
.end method

.method public greylist-max-o setStroke(ILandroid/content/res/ColorStateList;FF)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "colors"    # Landroid/content/res/ColorStateList;
    .param p3, "dashWidth"    # F
    .param p4, "dashGap"    # F

    .line 2458
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    .line 2459
    iput-object p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    .line 2460
    iput p3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    .line 2461
    iput p4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    .line 2462
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    .line 2463
    return-void
.end method
