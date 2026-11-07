.class public Landroid/widget/Switch;
.super Landroid/widget/CompoundButton;
.source "Switch.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final greylist-max-o CHECKED_STATE_SET:[I

.field private static final greylist-max-o MONOSPACE:I = 0x3

.field private static final greylist-max-o SANS:I = 0x1

.field private static final greylist-max-o SERIF:I = 0x2

.field private static final greylist-max-o THUMB_ANIMATION_DURATION:I = 0xfa

.field private static final greylist-max-o THUMB_POS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/widget/Switch;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TOUCH_MODE_DOWN:I = 0x1

.field private static final greylist-max-o TOUCH_MODE_DRAGGING:I = 0x2

.field private static final greylist-max-o TOUCH_MODE_IDLE:I


# instance fields
.field private greylist-max-o mHasThumbTint:Z

.field private greylist-max-o mHasThumbTintMode:Z

.field private greylist-max-o mHasTrackTint:Z

.field private greylist-max-o mHasTrackTintMode:Z

.field private greylist-max-o mMinFlingVelocity:I

.field private greylist mOffLayout:Landroid/text/Layout;

.field private greylist mOnLayout:Landroid/text/Layout;

.field private greylist-max-o mPositionAnimator:Landroid/animation/ObjectAnimator;

.field private greylist-max-o mShowText:Z

.field private greylist-max-o mSplitTrack:Z

.field private greylist-max-o mSwitchBottom:I

.field private greylist mSwitchHeight:I

.field private greylist-max-o mSwitchLeft:I

.field private greylist-max-r mSwitchMinWidth:I

.field private greylist-max-o mSwitchPadding:I

.field private greylist-max-o mSwitchRight:I

.field private greylist-max-o mSwitchTop:I

.field private greylist-max-o mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

.field private greylist mSwitchWidth:I

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;

.field private greylist-max-o mTextColors:Landroid/content/res/ColorStateList;

.field private greylist-max-o mTextOff:Ljava/lang/CharSequence;

.field private greylist-max-o mTextOn:Ljava/lang/CharSequence;

.field private greylist-max-o mTextPaint:Landroid/text/TextPaint;

.field private blacklist mThumbBlendMode:Landroid/graphics/BlendMode;

.field private greylist mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mThumbPosition:F

.field private greylist-max-o mThumbTextPadding:I

.field private greylist-max-o mThumbTintList:Landroid/content/res/ColorStateList;

.field private greylist mThumbWidth:I

.field private greylist-max-o mTouchMode:I

.field private greylist-max-o mTouchSlop:I

.field private greylist-max-o mTouchX:F

.field private greylist-max-o mTouchY:F

.field private blacklist mTrackBlendMode:Landroid/graphics/BlendMode;

.field private greylist mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mTrackTintList:Landroid/content/res/ColorStateList;

.field private greylist-max-o mUseFallbackLineSpacing:Z

.field private greylist-max-o mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public static synthetic blacklist $r8$lambda$-C4Tn0k0hKl-ZuR6lK3taOlynSc(Landroid/widget/Switch;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/Switch;->lambda$setTrackResourceAsync$0(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$4NI6w8_AqikNXRDN0OHM5QrpxFc(Landroid/widget/Switch;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/Switch;->lambda$setThumbResourceAsync$2(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BaTDP1CCT69n1tYbL6PBnK6zFgg(Landroid/widget/Switch;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/Switch;->lambda$setTrackIconAsync$1(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$aS9ELHnos918FmGoo4iuTv8akuY(Landroid/widget/Switch;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/Switch;->lambda$setThumbIconAsync$3(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmThumbPosition(Landroid/widget/Switch;)F
    .registers 1

    iget p0, p0, Landroid/widget/Switch;->mThumbPosition:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetThumbPosition(Landroid/widget/Switch;F)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/Switch;->setThumbPosition(F)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 191
    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/widget/Switch;->CHECKED_STATE_SET:[I

    .line 1611
    new-instance v0, Landroid/widget/Switch$1;

    const-string/jumbo v1, "thumbPos"

    invoke-direct {v0, v1}, Landroid/widget/Switch$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/Switch;->THUMB_POS:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 202
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 212
    const v0, 0x101043f

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 213
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 226
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 227
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 247
    invoke-direct/range {p0 .. p4}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Switch;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 116
    iput-object v0, p0, Landroid/widget/Switch;->mThumbBlendMode:Landroid/graphics/BlendMode;

    .line 117
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Switch;->mHasThumbTint:Z

    .line 118
    iput-boolean v1, p0, Landroid/widget/Switch;->mHasThumbTintMode:Z

    .line 122
    iput-object v0, p0, Landroid/widget/Switch;->mTrackTintList:Landroid/content/res/ColorStateList;

    .line 123
    iput-object v0, p0, Landroid/widget/Switch;->mTrackBlendMode:Landroid/graphics/BlendMode;

    .line 124
    iput-boolean v1, p0, Landroid/widget/Switch;->mHasTrackTint:Z

    .line 125
    iput-boolean v1, p0, Landroid/widget/Switch;->mHasTrackTintMode:Z

    .line 141
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 188
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 249
    new-instance v2, Landroid/text/TextPaint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    .line 251
    invoke-virtual {p0}, Landroid/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 252
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    iput v5, v4, Landroid/text/TextPaint;->density:F

    .line 253
    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 255
    sget-object v4, Lcom/android/internal/R$styleable;->Switch:[I

    move/from16 v11, p4

    invoke-virtual {p1, p2, v4, p3, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 257
    .local v9, "a":Landroid/content/res/TypedArray;
    sget-object v7, Lcom/android/internal/R$styleable;->Switch:[I

    move-object v5, p0

    move-object v6, p1

    move-object v8, p2

    move v10, p3

    invoke-virtual/range {v5 .. v11}, Landroid/widget/Switch;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 259
    const/4 v4, 0x2

    invoke-virtual {v9, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 260
    iget-object v4, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_64

    .line 261
    iget-object v4, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 263
    :cond_64
    const/4 v4, 0x4

    invoke-virtual {v9, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 264
    iget-object v4, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_74

    .line 265
    iget-object v4, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 267
    :cond_74
    invoke-virtual {v9, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 268
    invoke-virtual {v9, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 269
    const/16 v4, 0xb

    invoke-virtual {v9, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/Switch;->mShowText:Z

    .line 270
    const/4 v4, 0x7

    invoke-virtual {v9, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    .line 272
    const/4 v4, 0x5

    invoke-virtual {v9, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    .line 274
    const/4 v4, 0x6

    invoke-virtual {v9, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/Switch;->mSwitchPadding:I

    .line 276
    const/16 v4, 0x8

    invoke-virtual {v9, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/Switch;->mSplitTrack:Z

    .line 278
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x1c

    if-lt v4, v7, :cond_b1

    move v4, v3

    goto :goto_b2

    :cond_b1
    move v4, v1

    :goto_b2
    iput-boolean v4, p0, Landroid/widget/Switch;->mUseFallbackLineSpacing:Z

    .line 280
    const/16 v4, 0x9

    invoke-virtual {v9, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 282
    .local v4, "thumbTintList":Landroid/content/res/ColorStateList;
    if-eqz v4, :cond_c0

    .line 283
    iput-object v4, p0, Landroid/widget/Switch;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 284
    iput-boolean v3, p0, Landroid/widget/Switch;->mHasThumbTint:Z

    .line 286
    :cond_c0
    nop

    .line 287
    const/16 v7, 0xa

    const/4 v8, -0x1

    invoke-virtual {v9, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 286
    invoke-static {v7, v0}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v7

    .line 289
    .local v7, "thumbTintMode":Landroid/graphics/BlendMode;
    iget-object v10, p0, Landroid/widget/Switch;->mThumbBlendMode:Landroid/graphics/BlendMode;

    if-eq v10, v7, :cond_d4

    .line 290
    iput-object v7, p0, Landroid/widget/Switch;->mThumbBlendMode:Landroid/graphics/BlendMode;

    .line 291
    iput-boolean v3, p0, Landroid/widget/Switch;->mHasThumbTintMode:Z

    .line 293
    :cond_d4
    iget-boolean v10, p0, Landroid/widget/Switch;->mHasThumbTint:Z

    if-nez v10, :cond_dc

    iget-boolean v10, p0, Landroid/widget/Switch;->mHasThumbTintMode:Z

    if-eqz v10, :cond_df

    .line 294
    :cond_dc
    invoke-direct {p0}, Landroid/widget/Switch;->applyThumbTint()V

    .line 297
    :cond_df
    const/16 v10, 0xc

    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    .line 299
    .local v10, "trackTintList":Landroid/content/res/ColorStateList;
    if-eqz v10, :cond_eb

    .line 300
    iput-object v10, p0, Landroid/widget/Switch;->mTrackTintList:Landroid/content/res/ColorStateList;

    .line 301
    iput-boolean v3, p0, Landroid/widget/Switch;->mHasTrackTint:Z

    .line 303
    :cond_eb
    nop

    .line 304
    const/16 v11, 0xd

    invoke-virtual {v9, v11, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 303
    invoke-static {v8, v0}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v0

    .line 306
    .local v0, "trackTintMode":Landroid/graphics/BlendMode;
    iget-object v8, p0, Landroid/widget/Switch;->mTrackBlendMode:Landroid/graphics/BlendMode;

    if-eq v8, v0, :cond_fe

    .line 307
    iput-object v0, p0, Landroid/widget/Switch;->mTrackBlendMode:Landroid/graphics/BlendMode;

    .line 308
    iput-boolean v3, p0, Landroid/widget/Switch;->mHasTrackTintMode:Z

    .line 310
    :cond_fe
    iget-boolean v3, p0, Landroid/widget/Switch;->mHasTrackTint:Z

    if-nez v3, :cond_106

    iget-boolean v3, p0, Landroid/widget/Switch;->mHasTrackTintMode:Z

    if-eqz v3, :cond_109

    .line 311
    :cond_106
    invoke-direct {p0}, Landroid/widget/Switch;->applyTrackTint()V

    .line 314
    :cond_109
    const/4 v3, 0x3

    invoke-virtual {v9, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 316
    .local v1, "appearance":I
    if-eqz v1, :cond_113

    .line 317
    invoke-virtual {p0, p1, v1}, Landroid/widget/Switch;->setSwitchTextAppearance(Landroid/content/Context;I)V

    .line 319
    :cond_113
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 321
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 322
    .local v3, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v8

    iput v8, p0, Landroid/widget/Switch;->mTouchSlop:I

    .line 323
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v8

    iput v8, p0, Landroid/widget/Switch;->mMinFlingVelocity:I

    .line 326
    invoke-virtual {p0}, Landroid/widget/Switch;->refreshDrawableState()V

    .line 329
    invoke-virtual {p0}, Landroid/widget/Switch;->setDefaultStateDescription()V

    .line 330
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v8

    invoke-virtual {p0, v8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 331
    return-void
.end method

.method private greylist-max-o animateThumbToCheckedState(Z)V
    .registers 7
    .param p1, "newCheckedState"    # Z

    .line 1213
    if-eqz p1, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    .line 1214
    .local v0, "targetPosition":F
    :goto_6
    sget-object v1, Landroid/widget/Switch;->THUMB_POS:Landroid/util/FloatProperty;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 1215
    iget-object v1, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1216
    iget-object v1, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 1217
    iget-object v1, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 1218
    return-void
.end method

.method private greylist-max-o applyThumbTint()V
    .registers 3

    .line 867
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Landroid/widget/Switch;->mHasThumbTint:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroid/widget/Switch;->mHasThumbTintMode:Z

    if-eqz v0, :cond_3b

    .line 868
    :cond_c
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 870
    iget-boolean v0, p0, Landroid/widget/Switch;->mHasThumbTint:Z

    if-eqz v0, :cond_1f

    .line 871
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Switch;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 874
    :cond_1f
    iget-boolean v0, p0, Landroid/widget/Switch;->mHasThumbTintMode:Z

    if-eqz v0, :cond_2a

    .line 875
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Switch;->mThumbBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 880
    :cond_2a
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 881
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/Switch;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 884
    :cond_3b
    return-void
.end method

.method private greylist-max-o applyTrackTint()V
    .registers 3

    .line 686
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Landroid/widget/Switch;->mHasTrackTint:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroid/widget/Switch;->mHasTrackTintMode:Z

    if-eqz v0, :cond_3b

    .line 687
    :cond_c
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 689
    iget-boolean v0, p0, Landroid/widget/Switch;->mHasTrackTint:Z

    if-eqz v0, :cond_1f

    .line 690
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Switch;->mTrackTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 693
    :cond_1f
    iget-boolean v0, p0, Landroid/widget/Switch;->mHasTrackTintMode:Z

    if-eqz v0, :cond_2a

    .line 694
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Switch;->mTrackBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 699
    :cond_2a
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 700
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/Switch;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 703
    :cond_3b
    return-void
.end method

.method private greylist cancelPositionAnimator()V
    .registers 2

    .line 1222
    iget-object v0, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_9

    .line 1223
    iget-object v0, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1225
    :cond_9
    return-void
.end method

.method private greylist-max-o cancelSuperTouch(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1173
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1174
    .local v0, "cancel":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1175
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1176
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1177
    return-void
.end method

.method private greylist-max-o getTargetCheckedState()Z
    .registers 3

    .line 1228
    iget v0, p0, Landroid/widget/Switch;->mThumbPosition:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private greylist-max-o getThumbOffset()I
    .registers 4

    .line 1492
    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1493
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Landroid/widget/Switch;->mThumbPosition:F

    sub-float/2addr v0, v1

    .local v0, "thumbPosition":F
    goto :goto_e

    .line 1495
    .end local v0    # "thumbPosition":F
    :cond_c
    iget v0, p0, Landroid/widget/Switch;->mThumbPosition:F

    .line 1497
    .restart local v0    # "thumbPosition":F
    :goto_e
    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private greylist-max-o getThumbScrollRange()I
    .registers 5

    .line 1501
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2a

    .line 1502
    iget-object v0, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 1503
    .local v0, "padding":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1506
    iget-object v1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_16

    .line 1507
    iget-object v1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v1

    .local v1, "insets":Landroid/graphics/Insets;
    goto :goto_18

    .line 1509
    .end local v1    # "insets":Landroid/graphics/Insets;
    :cond_16
    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 1512
    .restart local v1    # "insets":Landroid/graphics/Insets;
    :goto_18
    iget v2, p0, Landroid/widget/Switch;->mSwitchWidth:I

    iget v3, p0, Landroid/widget/Switch;->mThumbWidth:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Insets;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Insets;->right:I

    sub-int/2addr v2, v3

    return v2

    .line 1515
    .end local v0    # "padding":Landroid/graphics/Rect;
    .end local v1    # "insets":Landroid/graphics/Insets;
    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o hitThumb(FF)Z
    .registers 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1077
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1078
    return v1

    .line 1082
    :cond_6
    invoke-direct {p0}, Landroid/widget/Switch;->getThumbOffset()I

    move-result v0

    .line 1084
    .local v0, "thumbOffset":I
    iget-object v2, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1085
    iget v2, p0, Landroid/widget/Switch;->mSwitchTop:I

    iget v3, p0, Landroid/widget/Switch;->mTouchSlop:I

    sub-int/2addr v2, v3

    .line 1086
    .local v2, "thumbTop":I
    iget v3, p0, Landroid/widget/Switch;->mSwitchLeft:I

    add-int/2addr v3, v0

    iget v4, p0, Landroid/widget/Switch;->mTouchSlop:I

    sub-int/2addr v3, v4

    .line 1087
    .local v3, "thumbLeft":I
    iget v4, p0, Landroid/widget/Switch;->mThumbWidth:I

    add-int/2addr v4, v3

    iget-object v5, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/widget/Switch;->mTouchSlop:I

    add-int/2addr v4, v5

    .line 1089
    .local v4, "thumbRight":I
    iget v5, p0, Landroid/widget/Switch;->mSwitchBottom:I

    iget v6, p0, Landroid/widget/Switch;->mTouchSlop:I

    add-int/2addr v5, v6

    .line 1090
    .local v5, "thumbBottom":I
    int-to-float v6, v3

    cmpl-float v6, p1, v6

    if-lez v6, :cond_46

    int-to-float v6, v4

    cmpg-float v6, p1, v6

    if-gez v6, :cond_46

    int-to-float v6, v2

    cmpl-float v6, p2, v6

    if-lez v6, :cond_46

    int-to-float v6, v5

    cmpg-float v6, p2, v6

    if-gez v6, :cond_46

    const/4 v1, 0x1

    :cond_46
    return v1
.end method

.method private synthetic blacklist lambda$setThumbIconAsync$3(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .line 771
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic blacklist lambda$setThumbResourceAsync$2(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 740
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic blacklist lambda$setTrackIconAsync$1(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .line 590
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic blacklist lambda$setTrackResourceAsync$0(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 561
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private greylist-max-o makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .registers 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 1062
    iget-object v0, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    if-eqz v0, :cond_b

    .line 1063
    iget-object v0, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    invoke-interface {v0, p1, p0}, Landroid/text/method/TransformationMethod2;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    .line 1064
    :cond_b
    move-object v0, p1

    :goto_c
    nop

    .line 1066
    .local v0, "transformed":Ljava/lang/CharSequence;
    nop

    .line 1067
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/Switch;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v3

    .line 1066
    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 1068
    .local v1, "width":I
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v0, v4, v2, v3, v1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/widget/Switch;->mUseFallbackLineSpacing:Z

    .line 1069
    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 1070
    invoke-virtual {v2}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v2

    .line 1068
    return-object v2
.end method

.method private greylist-max-o setSwitchTypefaceByIndex(II)V
    .registers 4
    .param p1, "typefaceIndex"    # I
    .param p2, "styleIndex"    # I

    .line 387
    const/4 v0, 0x0

    .line 388
    .local v0, "tf":Landroid/graphics/Typeface;
    packed-switch p1, :pswitch_data_12

    goto :goto_e

    .line 398
    :pswitch_5
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_e

    .line 394
    :pswitch_8
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 395
    goto :goto_e

    .line 390
    :pswitch_b
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 391
    nop

    .line 402
    :goto_e
    invoke-virtual {p0, v0, p2}, Landroid/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;I)V

    .line 403
    return-void

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private greylist setThumbPosition(F)V
    .registers 2
    .param p1, "position"    # F

    .line 1238
    iput p1, p0, Landroid/widget/Switch;->mThumbPosition:F

    .line 1239
    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    .line 1240
    return-void
.end method

.method private greylist-max-o stopDrag(Landroid/view/MotionEvent;)V
    .registers 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1185
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Switch;->mTouchMode:I

    .line 1189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    invoke-virtual {p0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_12

    move v1, v2

    goto :goto_13

    :cond_12
    move v1, v0

    .line 1190
    .local v1, "commitChange":Z
    :goto_13
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    .line 1192
    .local v3, "oldState":Z
    if-eqz v1, :cond_49

    .line 1193
    iget-object v4, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1194
    iget-object v4, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    .line 1195
    .local v4, "xvel":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Landroid/widget/Switch;->mMinFlingVelocity:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_44

    .line 1196
    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3d

    cmpg-float v5, v4, v6

    if-gez v5, :cond_42

    goto :goto_41

    :cond_3d
    cmpl-float v5, v4, v6

    if-lez v5, :cond_42

    :goto_41
    goto :goto_43

    :cond_42
    move v2, v0

    .local v2, "newState":Z
    :goto_43
    goto :goto_48

    .line 1198
    .end local v2    # "newState":Z
    :cond_44
    invoke-direct {p0}, Landroid/widget/Switch;->getTargetCheckedState()Z

    move-result v2

    .line 1200
    .end local v4    # "xvel":F
    .restart local v2    # "newState":Z
    :goto_48
    goto :goto_4a

    .line 1201
    .end local v2    # "newState":Z
    :cond_49
    move v2, v3

    .line 1204
    .restart local v2    # "newState":Z
    :goto_4a
    if-eq v2, v3, :cond_4f

    .line 1205
    invoke-virtual {p0, v0}, Landroid/widget/Switch;->playSoundEffect(I)V

    .line 1208
    :cond_4f
    invoke-virtual {p0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1209
    invoke-direct {p0, p1}, Landroid/widget/Switch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 1210
    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 15
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 1333
    iget-object v0, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 1334
    .local v0, "padding":Landroid/graphics/Rect;
    iget v1, p0, Landroid/widget/Switch;->mSwitchLeft:I

    .line 1335
    .local v1, "switchLeft":I
    iget v2, p0, Landroid/widget/Switch;->mSwitchTop:I

    .line 1336
    .local v2, "switchTop":I
    iget v3, p0, Landroid/widget/Switch;->mSwitchRight:I

    .line 1337
    .local v3, "switchRight":I
    iget v4, p0, Landroid/widget/Switch;->mSwitchBottom:I

    .line 1339
    .local v4, "switchBottom":I
    invoke-direct {p0}, Landroid/widget/Switch;->getThumbOffset()I

    move-result v5

    add-int/2addr v5, v1

    .line 1342
    .local v5, "thumbInitialLeft":I
    iget-object v6, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1a

    .line 1343
    iget-object v6, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v6

    .local v6, "thumbInsets":Landroid/graphics/Insets;
    goto :goto_1c

    .line 1345
    .end local v6    # "thumbInsets":Landroid/graphics/Insets;
    :cond_1a
    sget-object v6, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 1349
    .restart local v6    # "thumbInsets":Landroid/graphics/Insets;
    :goto_1c
    iget-object v7, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_65

    .line 1350
    iget-object v7, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1353
    iget v7, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v7

    .line 1356
    move v7, v1

    .line 1357
    .local v7, "trackLeft":I
    move v8, v2

    .line 1358
    .local v8, "trackTop":I
    move v9, v3

    .line 1359
    .local v9, "trackRight":I
    move v10, v4

    .line 1360
    .local v10, "trackBottom":I
    sget-object v11, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    if-eq v6, v11, :cond_60

    .line 1361
    iget v11, v6, Landroid/graphics/Insets;->left:I

    iget v12, v0, Landroid/graphics/Rect;->left:I

    if-le v11, v12, :cond_3c

    .line 1362
    iget v11, v6, Landroid/graphics/Insets;->left:I

    iget v12, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    add-int/2addr v7, v11

    .line 1364
    :cond_3c
    iget v11, v6, Landroid/graphics/Insets;->top:I

    iget v12, v0, Landroid/graphics/Rect;->top:I

    if-le v11, v12, :cond_48

    .line 1365
    iget v11, v6, Landroid/graphics/Insets;->top:I

    iget v12, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    add-int/2addr v8, v11

    .line 1367
    :cond_48
    iget v11, v6, Landroid/graphics/Insets;->right:I

    iget v12, v0, Landroid/graphics/Rect;->right:I

    if-le v11, v12, :cond_54

    .line 1368
    iget v11, v6, Landroid/graphics/Insets;->right:I

    iget v12, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v12

    sub-int/2addr v9, v11

    .line 1370
    :cond_54
    iget v11, v6, Landroid/graphics/Insets;->bottom:I

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    if-le v11, v12, :cond_60

    .line 1371
    iget v11, v6, Landroid/graphics/Insets;->bottom:I

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    sub-int/2addr v10, v11

    .line 1374
    :cond_60
    iget-object v11, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1378
    .end local v7    # "trackLeft":I
    .end local v8    # "trackTop":I
    .end local v9    # "trackRight":I
    .end local v10    # "trackBottom":I
    :cond_65
    iget-object v7, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_86

    .line 1379
    iget-object v7, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1381
    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int v7, v5, v7

    .line 1382
    .local v7, "thumbLeft":I
    iget v8, p0, Landroid/widget/Switch;->mThumbWidth:I

    add-int/2addr v8, v5

    iget v9, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    .line 1383
    .local v8, "thumbRight":I
    iget-object v9, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v7, v2, v8, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1385
    invoke-virtual {p0}, Landroid/widget/Switch;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1386
    .local v9, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_86

    .line 1387
    invoke-virtual {v9, v7, v2, v8, v4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 1392
    .end local v7    # "thumbLeft":I
    .end local v8    # "thumbRight":I
    .end local v9    # "background":Landroid/graphics/drawable/Drawable;
    :cond_86
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V

    .line 1393
    return-void
.end method

.method public whitelist drawableHotspotChanged(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1552
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->drawableHotspotChanged(FF)V

    .line 1554
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 1555
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1558
    :cond_c
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    .line 1559
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1561
    :cond_15
    return-void
.end method

.method protected whitelist drawableStateChanged()V
    .registers 6

    .line 1530
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 1532
    invoke-virtual {p0}, Landroid/widget/Switch;->getDrawableState()[I

    move-result-object v0

    .line 1533
    .local v0, "state":[I
    const/4 v1, 0x0

    .line 1535
    .local v1, "changed":Z
    iget-object v2, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 1536
    .local v2, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_17

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1537
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 1540
    :cond_17
    iget-object v3, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 1541
    .local v3, "trackDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_26

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1542
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    or-int/2addr v1, v4

    .line 1545
    :cond_26
    if-eqz v1, :cond_2b

    .line 1546
    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    .line 1548
    :cond_2b
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 1588
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getButtonStateDescription()Ljava/lang/CharSequence;
    .registers 3

    .line 1251
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1252
    iget-object v0, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    if-nez v0, :cond_16

    invoke-virtual {p0}, Landroid/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10401db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_16
    iget-object v0, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    :goto_18
    return-object v0

    .line 1254
    :cond_19
    iget-object v0, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    if-nez v0, :cond_29

    invoke-virtual {p0}, Landroid/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10401da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :cond_29
    iget-object v0, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    :goto_2b
    return-object v0
.end method

.method public whitelist getCompoundPaddingLeft()I
    .registers 3

    .line 1462
    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1463
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    return v0

    .line 1465
    :cond_b
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/widget/Switch;->mSwitchWidth:I

    add-int/2addr v0, v1

    .line 1466
    .local v0, "padding":I
    invoke-virtual {p0}, Landroid/widget/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 1467
    iget v1, p0, Landroid/widget/Switch;->mSwitchPadding:I

    add-int/2addr v0, v1

    .line 1469
    :cond_1f
    return v0
.end method

.method public whitelist getCompoundPaddingRight()I
    .registers 3

    .line 1474
    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1475
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    return v0

    .line 1477
    :cond_b
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/widget/Switch;->mSwitchWidth:I

    add-int/2addr v0, v1

    .line 1478
    .local v0, "padding":I
    invoke-virtual {p0}, Landroid/widget/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 1479
    iget v1, p0, Landroid/widget/Switch;->mSwitchPadding:I

    add-int/2addr v0, v1

    .line 1481
    :cond_1f
    return v0
.end method

.method public whitelist getShowText()Z
    .registers 2

    .line 979
    iget-boolean v0, p0, Landroid/widget/Switch;->mShowText:Z

    return v0
.end method

.method public whitelist getSplitTrack()Z
    .registers 2

    .line 908
    iget-boolean v0, p0, Landroid/widget/Switch;->mSplitTrack:Z

    return v0
.end method

.method public whitelist getSwitchMinWidth()I
    .registers 2

    .line 500
    iget v0, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    return v0
.end method

.method public whitelist getSwitchPadding()I
    .registers 2

    .line 473
    iget v0, p0, Landroid/widget/Switch;->mSwitchPadding:I

    return v0
.end method

.method public whitelist getTextOff()Ljava/lang/CharSequence;
    .registers 2

    .line 942
    iget-object v0, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTextOn()Ljava/lang/CharSequence;
    .registers 2

    .line 918
    iget-object v0, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 753
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getThumbTextPadding()I
    .registers 2

    .line 525
    iget v0, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    return v0
.end method

.method public whitelist getThumbTintBlendMode()Landroid/graphics/BlendMode;
    .registers 2

    .line 863
    iget-object v0, p0, Landroid/widget/Switch;->mThumbBlendMode:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public whitelist getThumbTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 804
    iget-object v0, p0, Landroid/widget/Switch;->mThumbTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 3

    .line 850
    invoke-virtual {p0}, Landroid/widget/Switch;->getThumbTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v0

    .line 851
    .local v0, "mode":Landroid/graphics/BlendMode;
    if-eqz v0, :cond_b

    invoke-static {v0}, Landroid/graphics/BlendMode;->blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method public whitelist getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 573
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getTrackTintBlendMode()Landroid/graphics/BlendMode;
    .registers 2

    .line 682
    iget-object v0, p0, Landroid/widget/Switch;->mTrackBlendMode:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public whitelist getTrackTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 623
    iget-object v0, p0, Landroid/widget/Switch;->mTrackTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getTrackTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 3

    .line 669
    invoke-virtual {p0}, Landroid/widget/Switch;->getTrackTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v0

    .line 670
    .local v0, "mode":Landroid/graphics/BlendMode;
    if-eqz v0, :cond_b

    invoke-static {v0}, Landroid/graphics/BlendMode;->blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method public whitelist jumpDrawablesToCurrentState()V
    .registers 2

    .line 1570
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 1572
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 1573
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1576
    :cond_c
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    .line 1577
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1580
    :cond_15
    iget-object v0, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1581
    iget-object v0, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 1582
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 1584
    :cond_29
    return-void
.end method

.method protected whitelist onCreateDrawableState(I)[I
    .registers 4
    .param p1, "extraSpace"    # I

    .line 1521
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1522
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1523
    sget-object v1, Landroid/widget/Switch;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/widget/Switch;->mergeDrawableStates([I[I)[I

    .line 1525
    :cond_11
    return-object v0
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1397
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 1399
    iget-object v2, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 1400
    .local v2, "padding":Landroid/graphics/Rect;
    iget-object v3, v0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 1401
    .local v3, "trackDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_11

    .line 1402
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_14

    .line 1404
    :cond_11
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1407
    :goto_14
    iget v4, v0, Landroid/widget/Switch;->mSwitchTop:I

    .line 1408
    .local v4, "switchTop":I
    iget v5, v0, Landroid/widget/Switch;->mSwitchBottom:I

    .line 1409
    .local v5, "switchBottom":I
    iget v6, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v4

    .line 1410
    .local v6, "switchInnerTop":I
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v5, v7

    .line 1412
    .local v7, "switchInnerBottom":I
    iget-object v8, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 1413
    .local v8, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_51

    .line 1414
    iget-boolean v9, v0, Landroid/widget/Switch;->mSplitTrack:Z

    if-eqz v9, :cond_4e

    if-eqz v8, :cond_4e

    .line 1415
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v9

    .line 1416
    .local v9, "insets":Landroid/graphics/Insets;
    invoke-virtual {v8, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1417
    iget v10, v2, Landroid/graphics/Rect;->left:I

    iget v11, v9, Landroid/graphics/Insets;->left:I

    add-int/2addr v10, v11

    iput v10, v2, Landroid/graphics/Rect;->left:I

    .line 1418
    iget v10, v2, Landroid/graphics/Rect;->right:I

    iget v11, v9, Landroid/graphics/Insets;->right:I

    sub-int/2addr v10, v11

    iput v10, v2, Landroid/graphics/Rect;->right:I

    .line 1420
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 1421
    .local v10, "saveCount":I
    sget-object v11, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v11}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1422
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1423
    invoke-virtual {v1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1424
    .end local v9    # "insets":Landroid/graphics/Insets;
    .end local v10    # "saveCount":I
    goto :goto_51

    .line 1425
    :cond_4e
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1429
    :cond_51
    :goto_51
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 1431
    .local v9, "saveCount":I
    if-eqz v8, :cond_5a

    .line 1432
    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1435
    :cond_5a
    invoke-direct {v0}, Landroid/widget/Switch;->getTargetCheckedState()Z

    move-result v10

    if-eqz v10, :cond_63

    iget-object v10, v0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    goto :goto_65

    :cond_63
    iget-object v10, v0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    .line 1436
    .local v10, "switchText":Landroid/text/Layout;
    :goto_65
    if-eqz v10, :cond_ab

    .line 1437
    invoke-virtual {v0}, Landroid/widget/Switch;->getDrawableState()[I

    move-result-object v11

    .line 1438
    .local v11, "drawableState":[I
    iget-object v12, v0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    if-eqz v12, :cond_7b

    .line 1439
    iget-object v12, v0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    iget-object v13, v0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    const/4 v14, 0x0

    invoke-virtual {v13, v11, v14}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/text/TextPaint;->setColor(I)V

    .line 1441
    :cond_7b
    iget-object v12, v0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    iput-object v11, v12, Landroid/text/TextPaint;->drawableState:[I

    .line 1444
    if-eqz v8, :cond_8b

    .line 1445
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    .line 1446
    .local v12, "bounds":Landroid/graphics/Rect;
    iget v13, v12, Landroid/graphics/Rect;->left:I

    iget v14, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v13, v14

    .line 1447
    .end local v12    # "bounds":Landroid/graphics/Rect;
    .local v13, "cX":I
    goto :goto_8f

    .line 1448
    .end local v13    # "cX":I
    :cond_8b
    invoke-virtual {v0}, Landroid/widget/Switch;->getWidth()I

    move-result v13

    .line 1451
    .restart local v13    # "cX":I
    :goto_8f
    div-int/lit8 v12, v13, 0x2

    invoke-virtual {v10}, Landroid/text/Layout;->getWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v12, v14

    .line 1452
    .local v12, "left":I
    add-int v14, v6, v7

    div-int/lit8 v14, v14, 0x2

    invoke-virtual {v10}, Landroid/text/Layout;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    .line 1453
    .local v14, "top":I
    int-to-float v15, v12

    int-to-float v0, v14

    invoke-virtual {v1, v15, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1454
    invoke-virtual {v10, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 1457
    .end local v11    # "drawableState":[I
    .end local v12    # "left":I
    .end local v13    # "cX":I
    .end local v14    # "top":I
    :cond_ab
    invoke-virtual {v1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1458
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 14
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1277
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 1279
    move v0, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "changed":Z
    .local v0, "bottom":I
    .local p2, "changed":Z
    .local p3, "left":I
    .local p4, "top":I
    .local p5, "right":I
    const/4 v1, 0x0

    .line 1280
    .local v1, "opticalInsetLeft":I
    const/4 v2, 0x0

    .line 1281
    .local v2, "opticalInsetRight":I
    iget-object v3, p1, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_37

    .line 1282
    iget-object v3, p1, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 1283
    .local v3, "trackPadding":Landroid/graphics/Rect;
    iget-object v4, p1, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1b

    .line 1284
    iget-object v4, p1, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_1e

    .line 1286
    :cond_1b
    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 1289
    :goto_1e
    iget-object v4, p1, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v4

    .line 1290
    .local v4, "insets":Landroid/graphics/Insets;
    iget v5, v4, Landroid/graphics/Insets;->left:I

    iget v6, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1291
    iget v5, v4, Landroid/graphics/Insets;->right:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v7

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1296
    .end local v3    # "trackPadding":Landroid/graphics/Rect;
    .end local v4    # "insets":Landroid/graphics/Insets;
    :cond_37
    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 1297
    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v1

    .line 1298
    .local v3, "switchLeft":I
    iget v4, p1, Landroid/widget/Switch;->mSwitchWidth:I

    add-int/2addr v4, v3

    sub-int/2addr v4, v1

    sub-int/2addr v4, v2

    .local v4, "switchRight":I
    goto :goto_59

    .line 1300
    .end local v3    # "switchLeft":I
    .end local v4    # "switchRight":I
    :cond_48
    invoke-virtual {p0}, Landroid/widget/Switch;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v4, v3, v2

    .line 1301
    .restart local v4    # "switchRight":I
    iget v3, p1, Landroid/widget/Switch;->mSwitchWidth:I

    sub-int v3, v4, v3

    add-int/2addr v3, v1

    add-int/2addr v3, v2

    .line 1306
    .restart local v3    # "switchLeft":I
    :goto_59
    invoke-virtual {p0}, Landroid/widget/Switch;->getGravity()I

    move-result v5

    and-int/lit8 v5, v5, 0x70

    sparse-switch v5, :sswitch_data_9c

    .line 1309
    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingTop()I

    move-result v6

    .line 1310
    .local v6, "switchTop":I
    iget v5, p1, Landroid/widget/Switch;->mSwitchHeight:I

    add-int/2addr v5, v6

    .line 1311
    .local v5, "switchBottom":I
    goto :goto_92

    .line 1320
    .end local v5    # "switchBottom":I
    .end local v6    # "switchTop":I
    :sswitch_6a
    invoke-virtual {p0}, Landroid/widget/Switch;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 1321
    .restart local v5    # "switchBottom":I
    iget v6, p1, Landroid/widget/Switch;->mSwitchHeight:I

    sub-int v6, v5, v6

    .restart local v6    # "switchTop":I
    goto :goto_92

    .line 1314
    .end local v5    # "switchBottom":I
    .end local v6    # "switchTop":I
    :sswitch_78
    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/Switch;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    iget v6, p1, Landroid/widget/Switch;->mSwitchHeight:I

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v5, v6

    .line 1316
    .restart local v6    # "switchTop":I
    iget v5, p1, Landroid/widget/Switch;->mSwitchHeight:I

    add-int/2addr v5, v6

    .line 1317
    .restart local v5    # "switchBottom":I
    nop

    .line 1325
    :goto_92
    iput v3, p1, Landroid/widget/Switch;->mSwitchLeft:I

    .line 1326
    iput v6, p1, Landroid/widget/Switch;->mSwitchTop:I

    .line 1327
    iput v5, p1, Landroid/widget/Switch;->mSwitchBottom:I

    .line 1328
    iput v4, p1, Landroid/widget/Switch;->mSwitchRight:I

    .line 1329
    return-void

    nop

    :sswitch_data_9c
    .sparse-switch
        0x10 -> :sswitch_78
        0x50 -> :sswitch_6a
    .end sparse-switch
.end method

.method public whitelist onMeasure(II)V
    .registers 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 984
    iget-boolean v0, p0, Landroid/widget/Switch;->mShowText:Z

    if-eqz v0, :cond_1c

    .line 985
    iget-object v0, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    if-nez v0, :cond_10

    .line 986
    iget-object v0, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroid/widget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    .line 989
    :cond_10
    iget-object v0, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    if-nez v0, :cond_1c

    .line 990
    iget-object v0, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroid/widget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    .line 994
    :cond_1c
    iget-object v0, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 997
    .local v0, "padding":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3a

    .line 999
    iget-object v1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1000
    iget-object v1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 1001
    .local v1, "thumbWidth":I
    iget-object v2, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .local v2, "thumbHeight":I
    goto :goto_3c

    .line 1003
    .end local v1    # "thumbWidth":I
    .end local v2    # "thumbHeight":I
    :cond_3a
    const/4 v1, 0x0

    .line 1004
    .restart local v1    # "thumbWidth":I
    const/4 v2, 0x0

    .line 1008
    .restart local v2    # "thumbHeight":I
    :goto_3c
    iget-boolean v3, p0, Landroid/widget/Switch;->mShowText:Z

    if-eqz v3, :cond_56

    .line 1009
    iget-object v3, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .local v3, "maxTextWidth":I
    goto :goto_57

    .line 1012
    .end local v3    # "maxTextWidth":I
    :cond_56
    const/4 v3, 0x0

    .line 1015
    .restart local v3    # "maxTextWidth":I
    :goto_57
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroid/widget/Switch;->mThumbWidth:I

    .line 1018
    iget-object v4, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6d

    .line 1019
    iget-object v4, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1020
    iget-object v4, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .local v4, "trackHeight":I
    goto :goto_71

    .line 1022
    .end local v4    # "trackHeight":I
    :cond_6d
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1023
    const/4 v4, 0x0

    .line 1028
    .restart local v4    # "trackHeight":I
    :goto_71
    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 1029
    .local v5, "paddingLeft":I
    iget v6, v0, Landroid/graphics/Rect;->right:I

    .line 1030
    .local v6, "paddingRight":I
    iget-object v7, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_8b

    .line 1031
    iget-object v7, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v7

    .line 1032
    .local v7, "inset":Landroid/graphics/Insets;
    iget v8, v7, Landroid/graphics/Insets;->left:I

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1033
    iget v8, v7, Landroid/graphics/Insets;->right:I

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1036
    .end local v7    # "inset":Landroid/graphics/Insets;
    :cond_8b
    iget v7, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    iget v8, p0, Landroid/widget/Switch;->mThumbWidth:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v5

    add-int/2addr v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1038
    .local v7, "switchWidth":I
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1039
    .local v8, "switchHeight":I
    iput v7, p0, Landroid/widget/Switch;->mSwitchWidth:I

    .line 1040
    iput v8, p0, Landroid/widget/Switch;->mSwitchHeight:I

    .line 1042
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 1044
    invoke-virtual {p0}, Landroid/widget/Switch;->getMeasuredHeight()I

    move-result v9

    .line 1045
    .local v9, "measuredHeight":I
    if-ge v9, v8, :cond_af

    .line 1046
    invoke-virtual {p0}, Landroid/widget/Switch;->getMeasuredWidthAndState()I

    move-result v10

    invoke-virtual {p0, v10, v8}, Landroid/widget/Switch;->setMeasuredDimension(II)V

    .line 1048
    :cond_af
    return-void
.end method

.method public greylist-max-o onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1053
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1055
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    goto :goto_e

    :cond_c
    iget-object v0, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 1056
    .local v0, "text":Ljava/lang/CharSequence;
    :goto_e
    if-eqz v0, :cond_17

    .line 1057
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1059
    :cond_17
    return-void
.end method

.method protected blacklist onProvideStructure(Landroid/view/ViewStructure;II)V
    .registers 9
    .param p1, "structure"    # Landroid/view/ViewStructure;
    .param p2, "viewFor"    # I
    .param p3, "flags"    # I

    .line 1595
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    goto :goto_b

    :cond_9
    iget-object v0, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 1596
    .local v0, "switchText":Ljava/lang/CharSequence;
    :goto_b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 1597
    invoke-virtual {p1}, Landroid/view/ViewStructure;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1598
    .local v1, "oldText":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1599
    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    goto :goto_34

    .line 1601
    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1602
    .local v2, "newText":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1603
    invoke-virtual {p1, v2}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    .line 1609
    .end local v1    # "oldText":Ljava/lang/CharSequence;
    .end local v2    # "newText":Ljava/lang/StringBuilder;
    :cond_34
    :goto_34
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1095
    iget-object v0, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1096
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1097
    .local v0, "action":I
    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_b6

    goto/16 :goto_b1

    .line 1110
    :pswitch_10
    iget v3, p0, Landroid/widget/Switch;->mTouchMode:I

    packed-switch v3, :pswitch_data_c2

    goto :goto_82

    .line 1130
    :pswitch_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1131
    .local v1, "x":F
    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v3

    .line 1132
    .local v3, "thumbScrollRange":I
    iget v4, p0, Landroid/widget/Switch;->mTouchX:F

    sub-float v4, v1, v4

    .line 1134
    .local v4, "thumbScrollOffset":F
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz v3, :cond_2b

    .line 1135
    int-to-float v7, v3

    div-float v7, v4, v7

    .local v7, "dPos":F
    goto :goto_33

    .line 1139
    .end local v7    # "dPos":F
    :cond_2b
    cmpl-float v7, v4, v6

    if-lez v7, :cond_31

    move v7, v5

    goto :goto_33

    :cond_31
    const/high16 v7, -0x40800000    # -1.0f

    .line 1141
    .restart local v7    # "dPos":F
    :goto_33
    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_3a

    .line 1142
    neg-float v7, v7

    .line 1144
    :cond_3a
    iget v8, p0, Landroid/widget/Switch;->mThumbPosition:F

    add-float/2addr v8, v7

    invoke-static {v8, v6, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v5

    .line 1145
    .local v5, "newPos":F
    iget v6, p0, Landroid/widget/Switch;->mThumbPosition:F

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_4c

    .line 1146
    iput v1, p0, Landroid/widget/Switch;->mTouchX:F

    .line 1147
    invoke-direct {p0, v5}, Landroid/widget/Switch;->setThumbPosition(F)V

    .line 1149
    :cond_4c
    return v2

    .line 1116
    .end local v1    # "x":F
    .end local v3    # "thumbScrollRange":I
    .end local v4    # "thumbScrollOffset":F
    .end local v5    # "newPos":F
    .end local v7    # "dPos":F
    :pswitch_4d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 1117
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 1118
    .local v4, "y":F
    iget v5, p0, Landroid/widget/Switch;->mTouchX:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Landroid/widget/Switch;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_73

    iget v5, p0, Landroid/widget/Switch;->mTouchY:F

    sub-float v5, v4, v5

    .line 1119
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Landroid/widget/Switch;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_82

    .line 1120
    :cond_73
    iput v1, p0, Landroid/widget/Switch;->mTouchMode:I

    .line 1121
    invoke-virtual {p0}, Landroid/widget/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1122
    iput v3, p0, Landroid/widget/Switch;->mTouchX:F

    .line 1123
    iput v4, p0, Landroid/widget/Switch;->mTouchY:F

    .line 1124
    return v2

    .line 1113
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_81
    nop

    .line 1152
    :cond_82
    :goto_82
    goto :goto_b1

    .line 1157
    :pswitch_83
    iget v3, p0, Landroid/widget/Switch;->mTouchMode:I

    if-ne v3, v1, :cond_8e

    .line 1158
    invoke-direct {p0, p1}, Landroid/widget/Switch;->stopDrag(Landroid/view/MotionEvent;)V

    .line 1160
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1161
    return v2

    .line 1163
    :cond_8e
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Switch;->mTouchMode:I

    .line 1164
    iget-object v1, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_b1

    .line 1099
    :pswitch_97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1100
    .restart local v1    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1101
    .local v3, "y":F
    invoke-virtual {p0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_b1

    invoke-direct {p0, v1, v3}, Landroid/widget/Switch;->hitThumb(FF)Z

    move-result v4

    if-eqz v4, :cond_b1

    .line 1102
    iput v2, p0, Landroid/widget/Switch;->mTouchMode:I

    .line 1103
    iput v1, p0, Landroid/widget/Switch;->mTouchX:F

    .line 1104
    iput v3, p0, Landroid/widget/Switch;->mTouchY:F

    .line 1169
    .end local v1    # "x":F
    .end local v3    # "y":F
    :cond_b1
    :goto_b1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_97
        :pswitch_83
        :pswitch_10
        :pswitch_83
    .end packed-switch

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_81
        :pswitch_4d
        :pswitch_16
    .end packed-switch
.end method

.method public whitelist setChecked(Z)V
    .registers 3
    .param p1, "checked"    # Z

    .line 1260
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1264
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    .line 1266
    invoke-virtual {p0}, Landroid/widget/Switch;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/widget/Switch;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1267
    invoke-direct {p0, p1}, Landroid/widget/Switch;->animateThumbToCheckedState(Z)V

    goto :goto_23

    .line 1270
    :cond_17
    invoke-direct {p0}, Landroid/widget/Switch;->cancelPositionAnimator()V

    .line 1271
    if-eqz p1, :cond_1f

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    invoke-direct {p0, v0}, Landroid/widget/Switch;->setThumbPosition(F)V

    .line 1273
    :goto_23
    return-void
.end method

.method public whitelist setShowText(Z)V
    .registers 3
    .param p1, "showText"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 967
    iget-boolean v0, p0, Landroid/widget/Switch;->mShowText:Z

    if-eq v0, p1, :cond_9

    .line 968
    iput-boolean p1, p0, Landroid/widget/Switch;->mShowText:Z

    .line 969
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 971
    :cond_9
    return-void
.end method

.method public whitelist setSplitTrack(Z)V
    .registers 2
    .param p1, "splitTrack"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 897
    iput-boolean p1, p0, Landroid/widget/Switch;->mSplitTrack:Z

    .line 898
    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    .line 899
    return-void
.end method

.method public whitelist setSwitchMinWidth(I)V
    .registers 2
    .param p1, "pixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 486
    iput p1, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    .line 487
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 488
    return-void
.end method

.method public whitelist setSwitchPadding(I)V
    .registers 2
    .param p1, "pixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 460
    iput p1, p0, Landroid/widget/Switch;->mSwitchPadding:I

    .line 461
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 462
    return-void
.end method

.method public whitelist setSwitchTextAppearance(Landroid/content/Context;I)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .line 340
    sget-object v0, Lcom/android/internal/R$styleable;->TextAppearance:[I

    .line 341
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 347
    .local v0, "appearance":Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 349
    .local v1, "colors":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_10

    .line 350
    iput-object v1, p0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    goto :goto_16

    .line 353
    :cond_10
    invoke-virtual {p0}, Landroid/widget/Switch;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    .line 356
    :goto_16
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 358
    .local v3, "ts":I
    if-eqz v3, :cond_31

    .line 359
    int-to-float v4, v3

    iget-object v5, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getTextSize()F

    move-result v5

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_31

    .line 360
    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 361
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 367
    :cond_31
    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 369
    .local v6, "typefaceIndex":I
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 372
    .local v5, "styleIndex":I
    invoke-direct {p0, v6, v5}, Landroid/widget/Switch;->setSwitchTypefaceByIndex(II)V

    .line 374
    const/16 v7, 0xb

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 376
    .local v2, "allCaps":Z
    if-eqz v2, :cond_58

    .line 377
    new-instance v7, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    .line 378
    iget-object v7, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    invoke-interface {v7, v4}, Landroid/text/method/TransformationMethod2;->setLengthChangesAllowed(Z)V

    goto :goto_5b

    .line 380
    :cond_58
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    .line 383
    :goto_5b
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 384
    return-void
.end method

.method public whitelist setSwitchTypeface(Landroid/graphics/Typeface;)V
    .registers 3
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .line 443
    iget-object v0, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_13

    .line 444
    iget-object v0, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 446
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 447
    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    .line 449
    :cond_13
    return-void
.end method

.method public whitelist setSwitchTypeface(Landroid/graphics/Typeface;I)V
    .registers 9
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .line 412
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p2, :cond_32

    .line 413
    if-nez p1, :cond_b

    .line 414
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_f

    .line 416
    :cond_b
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 419
    :goto_f
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    .line 421
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    goto :goto_1a

    :cond_19
    move v2, v1

    .line 422
    .local v2, "typefaceStyle":I
    :goto_1a
    not-int v3, v2

    and-int/2addr v3, p2

    .line 423
    .local v3, "need":I
    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_23

    const/4 v1, 0x1

    :cond_23
    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 424
    iget-object v1, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_2e

    const/high16 v0, -0x41800000    # -0.25f

    :cond_2e
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 425
    .end local v2    # "typefaceStyle":I
    .end local v3    # "need":I
    goto :goto_3f

    .line 426
    :cond_32
    iget-object v2, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 427
    iget-object v1, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 428
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    .line 430
    :goto_3f
    return-void
.end method

.method public whitelist setTextOff(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "textOff"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 952
    iput-object p1, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 953
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 956
    invoke-virtual {p0}, Landroid/widget/Switch;->setDefaultStateDescription()V

    .line 957
    return-void
.end method

.method public whitelist setTextOn(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "textOn"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 928
    iput-object p1, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 929
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 932
    invoke-virtual {p0}, Landroid/widget/Switch;->setDefaultStateDescription()V

    .line 933
    return-void
.end method

.method public whitelist setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .line 714
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 715
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 717
    :cond_a
    iput-object p1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 718
    if-eqz p1, :cond_11

    .line 719
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 721
    :cond_11
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 722
    return-void
.end method

.method public whitelist setThumbIcon(Landroid/graphics/drawable/Icon;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setThumbIconAsync"
    .end annotation

    .line 765
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_c
    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 766
    return-void
.end method

.method public blacklist setThumbIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 770
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 771
    .local v0, "track":Landroid/graphics/drawable/Drawable;
    :goto_c
    new-instance v1, Landroid/widget/Switch$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Landroid/widget/Switch$$ExternalSyntheticLambda1;-><init>(Landroid/widget/Switch;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public whitelist setThumbResource(I)V
    .registers 3
    .param p1, "resId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setThumbResourceAsync"
    .end annotation

    .line 734
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 735
    return-void
.end method

.method public blacklist setThumbResourceAsync(I)Ljava/lang/Runnable;
    .registers 4
    .param p1, "resId"    # I

    .line 739
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 740
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_c
    new-instance v1, Landroid/widget/Switch$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Landroid/widget/Switch$$ExternalSyntheticLambda0;-><init>(Landroid/widget/Switch;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public whitelist setThumbTextPadding(I)V
    .registers 2
    .param p1, "pixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 512
    iput p1, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    .line 513
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 514
    return-void
.end method

.method public whitelist setThumbTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 3
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 835
    iput-object p1, p0, Landroid/widget/Switch;->mThumbBlendMode:Landroid/graphics/BlendMode;

    .line 836
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Switch;->mHasThumbTintMode:Z

    .line 838
    invoke-direct {p0}, Landroid/widget/Switch;->applyThumbTint()V

    .line 839
    return-void
.end method

.method public whitelist setThumbTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 790
    iput-object p1, p0, Landroid/widget/Switch;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 791
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Switch;->mHasThumbTint:Z

    .line 793
    invoke-direct {p0}, Landroid/widget/Switch;->applyThumbTint()V

    .line 794
    return-void
.end method

.method public whitelist setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 819
    if-eqz p1, :cond_9

    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setThumbTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 820
    return-void
.end method

.method public whitelist setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .line 536
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 537
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 539
    :cond_a
    iput-object p1, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 540
    if-eqz p1, :cond_11

    .line 541
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 543
    :cond_11
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 544
    return-void
.end method

.method public whitelist setTrackIcon(Landroid/graphics/drawable/Icon;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setTrackIconAsync"
    .end annotation

    .line 584
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_c
    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 585
    return-void
.end method

.method public blacklist setTrackIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 589
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 590
    .local v0, "track":Landroid/graphics/drawable/Drawable;
    :goto_c
    new-instance v1, Landroid/widget/Switch$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Landroid/widget/Switch$$ExternalSyntheticLambda2;-><init>(Landroid/widget/Switch;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public whitelist setTrackResource(I)V
    .registers 3
    .param p1, "resId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setTrackResourceAsync"
    .end annotation

    .line 555
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 556
    return-void
.end method

.method public blacklist setTrackResourceAsync(I)Ljava/lang/Runnable;
    .registers 4
    .param p1, "resId"    # I

    .line 560
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 561
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_c
    new-instance v1, Landroid/widget/Switch$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Landroid/widget/Switch$$ExternalSyntheticLambda3;-><init>(Landroid/widget/Switch;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public whitelist setTrackTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 3
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 654
    iput-object p1, p0, Landroid/widget/Switch;->mTrackBlendMode:Landroid/graphics/BlendMode;

    .line 655
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Switch;->mHasTrackTintMode:Z

    .line 657
    invoke-direct {p0}, Landroid/widget/Switch;->applyTrackTint()V

    .line 658
    return-void
.end method

.method public whitelist setTrackTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 609
    iput-object p1, p0, Landroid/widget/Switch;->mTrackTintList:Landroid/content/res/ColorStateList;

    .line 610
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Switch;->mHasTrackTint:Z

    .line 612
    invoke-direct {p0}, Landroid/widget/Switch;->applyTrackTint()V

    .line 613
    return-void
.end method

.method public whitelist setTrackTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 638
    if-eqz p1, :cond_9

    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setTrackTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 639
    return-void
.end method

.method public whitelist toggle()V
    .registers 2

    .line 1244
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1245
    return-void
.end method

.method protected whitelist verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 1565
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_11

    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_f

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
