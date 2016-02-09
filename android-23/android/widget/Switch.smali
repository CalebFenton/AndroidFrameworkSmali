.class public Landroid/widget/Switch;
.super Landroid/widget/CompoundButton;
.source "Switch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Switch$1;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final THUMB_ANIMATION_DURATION:I = 0xfa

.field private static final THUMB_POS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty",
            "<",
            "Landroid/widget/Switch;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I


# instance fields
.field private mHasThumbTint:Z

.field private mHasThumbTintMode:Z

.field private mHasTrackTint:Z

.field private mHasTrackTintMode:Z

.field private mMinFlingVelocity:I

.field private mOffLayout:Landroid/text/Layout;

.field private mOnLayout:Landroid/text/Layout;

.field private mPositionAnimator:Landroid/animation/ObjectAnimator;

.field private mShowText:Z

.field private mSplitTrack:Z

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextColors:Landroid/content/res/ColorStateList;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbPosition:F

.field private mThumbTextPadding:I

.field private mThumbTintList:Landroid/content/res/ColorStateList;

.field private mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackTintList:Landroid/content/res/ColorStateList;

.field private mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static synthetic -get0(Landroid/widget/Switch;)F
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/Switch;->mThumbPosition:F

    #@2
    return v0
.end method

.method static synthetic -wrap0(Landroid/widget/Switch;F)V
    .locals 0
    .param p1, "position"    # F

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Switch;->setThumbPosition(F)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 160
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [I

    #@3
    .line 161
    const v1, 0x10100a0

    #@6
    const/4 v2, 0x0

    #@7
    aput v1, v0, v2

    #@9
    .line 160
    sput-object v0, Landroid/widget/Switch;->CHECKED_STATE_SET:[I

    #@b
    .line 1432
    new-instance v0, Landroid/widget/Switch$1;

    #@d
    const-string/jumbo v1, "thumbPos"

    #@10
    invoke-direct {v0, v1}, Landroid/widget/Switch$1;-><init>(Ljava/lang/String;)V

    #@13
    sput-object v0, Landroid/widget/Switch;->THUMB_POS:Landroid/util/FloatProperty;

    #@15
    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 170
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 181
    const v0, 0x101043f

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 195
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 216
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 92
    const/4 v8, 0x0

    #@4
    iput-object v8, p0, Landroid/widget/Switch;->mThumbTintList:Landroid/content/res/ColorStateList;

    #@6
    .line 93
    const/4 v8, 0x0

    #@7
    iput-object v8, p0, Landroid/widget/Switch;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    #@9
    .line 94
    const/4 v8, 0x0

    #@a
    iput-boolean v8, p0, Landroid/widget/Switch;->mHasThumbTint:Z

    #@c
    .line 95
    const/4 v8, 0x0

    #@d
    iput-boolean v8, p0, Landroid/widget/Switch;->mHasThumbTintMode:Z

    #@f
    .line 98
    const/4 v8, 0x0

    #@10
    iput-object v8, p0, Landroid/widget/Switch;->mTrackTintList:Landroid/content/res/ColorStateList;

    #@12
    .line 99
    const/4 v8, 0x0

    #@13
    iput-object v8, p0, Landroid/widget/Switch;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    #@15
    .line 100
    const/4 v8, 0x0

    #@16
    iput-boolean v8, p0, Landroid/widget/Switch;->mHasTrackTint:Z

    #@18
    .line 101
    const/4 v8, 0x0

    #@19
    iput-boolean v8, p0, Landroid/widget/Switch;->mHasTrackTintMode:Z

    #@1b
    .line 115
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@1e
    move-result-object v8

    #@1f
    iput-object v8, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@21
    .line 158
    new-instance v8, Landroid/graphics/Rect;

    #@23
    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    #@26
    iput-object v8, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    #@28
    .line 218
    new-instance v8, Landroid/text/TextPaint;

    #@2a
    const/4 v9, 0x1

    #@2b
    invoke-direct {v8, v9}, Landroid/text/TextPaint;-><init>(I)V

    #@2e
    iput-object v8, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    #@30
    .line 220
    invoke-virtual {p0}, Landroid/widget/Switch;->getResources()Landroid/content/res/Resources;

    #@33
    move-result-object v3

    #@34
    .line 221
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v8, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    #@36
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@39
    move-result-object v9

    #@3a
    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    #@3c
    iput v9, v8, Landroid/text/TextPaint;->density:F

    #@3e
    .line 222
    iget-object v8, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    #@40
    invoke-virtual {v3}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@43
    move-result-object v9

    #@44
    iget v9, v9, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    #@46
    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    #@49
    .line 225
    sget-object v8, Lcom/android/internal/R$styleable;->Switch:[I

    #@4b
    .line 224
    invoke-virtual {p1, p2, v8, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@4e
    move-result-object v0

    #@4f
    .line 226
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v8, 0x2

    #@50
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@53
    move-result-object v8

    #@54
    iput-object v8, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@56
    .line 227
    iget-object v8, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@58
    if-eqz v8, :cond_0

    #@5a
    .line 228
    iget-object v8, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@5c
    invoke-virtual {v8, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@5f
    .line 230
    :cond_0
    const/4 v8, 0x4

    #@60
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@63
    move-result-object v8

    #@64
    iput-object v8, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@66
    .line 231
    iget-object v8, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@68
    if-eqz v8, :cond_1

    #@6a
    .line 232
    iget-object v8, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@6c
    invoke-virtual {v8, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@6f
    .line 234
    :cond_1
    const/4 v8, 0x0

    #@70
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@73
    move-result-object v8

    #@74
    iput-object v8, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    #@76
    .line 235
    const/4 v8, 0x1

    #@77
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@7a
    move-result-object v8

    #@7b
    iput-object v8, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    #@7d
    .line 236
    const/16 v8, 0xb

    #@7f
    const/4 v9, 0x1

    #@80
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@83
    move-result v8

    #@84
    iput-boolean v8, p0, Landroid/widget/Switch;->mShowText:Z

    #@86
    .line 238
    const/4 v8, 0x7

    #@87
    const/4 v9, 0x0

    #@88
    .line 237
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@8b
    move-result v8

    #@8c
    iput v8, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    #@8e
    .line 240
    const/4 v8, 0x5

    #@8f
    const/4 v9, 0x0

    #@90
    .line 239
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@93
    move-result v8

    #@94
    iput v8, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    #@96
    .line 242
    const/4 v8, 0x6

    #@97
    const/4 v9, 0x0

    #@98
    .line 241
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@9b
    move-result v8

    #@9c
    iput v8, p0, Landroid/widget/Switch;->mSwitchPadding:I

    #@9e
    .line 243
    const/16 v8, 0x8

    #@a0
    const/4 v9, 0x0

    #@a1
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@a4
    move-result v8

    #@a5
    iput-boolean v8, p0, Landroid/widget/Switch;->mSplitTrack:Z

    #@a7
    .line 246
    const/16 v8, 0x9

    #@a9
    .line 245
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@ac
    move-result-object v4

    #@ad
    .line 247
    .local v4, "thumbTintList":Landroid/content/res/ColorStateList;
    if-eqz v4, :cond_2

    #@af
    .line 248
    iput-object v4, p0, Landroid/widget/Switch;->mThumbTintList:Landroid/content/res/ColorStateList;

    #@b1
    .line 249
    const/4 v8, 0x1

    #@b2
    iput-boolean v8, p0, Landroid/widget/Switch;->mHasThumbTint:Z

    #@b4
    .line 252
    :cond_2
    const/16 v8, 0xa

    #@b6
    const/4 v9, -0x1

    #@b7
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    #@ba
    move-result v8

    #@bb
    const/4 v9, 0x0

    #@bc
    .line 251
    invoke-static {v8, v9}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@bf
    move-result-object v5

    #@c0
    .line 253
    .local v5, "thumbTintMode":Landroid/graphics/PorterDuff$Mode;
    iget-object v8, p0, Landroid/widget/Switch;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    #@c2
    if-eq v8, v5, :cond_3

    #@c4
    .line 254
    iput-object v5, p0, Landroid/widget/Switch;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    #@c6
    .line 255
    const/4 v8, 0x1

    #@c7
    iput-boolean v8, p0, Landroid/widget/Switch;->mHasThumbTintMode:Z

    #@c9
    .line 257
    :cond_3
    iget-boolean v8, p0, Landroid/widget/Switch;->mHasThumbTint:Z

    #@cb
    if-nez v8, :cond_4

    #@cd
    iget-boolean v8, p0, Landroid/widget/Switch;->mHasThumbTintMode:Z

    #@cf
    if-eqz v8, :cond_5

    #@d1
    .line 258
    :cond_4
    invoke-direct {p0}, Landroid/widget/Switch;->applyThumbTint()V

    #@d4
    .line 262
    :cond_5
    const/16 v8, 0xc

    #@d6
    .line 261
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@d9
    move-result-object v6

    #@da
    .line 263
    .local v6, "trackTintList":Landroid/content/res/ColorStateList;
    if-eqz v6, :cond_6

    #@dc
    .line 264
    iput-object v6, p0, Landroid/widget/Switch;->mTrackTintList:Landroid/content/res/ColorStateList;

    #@de
    .line 265
    const/4 v8, 0x1

    #@df
    iput-boolean v8, p0, Landroid/widget/Switch;->mHasTrackTint:Z

    #@e1
    .line 268
    :cond_6
    const/16 v8, 0xd

    #@e3
    const/4 v9, -0x1

    #@e4
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    #@e7
    move-result v8

    #@e8
    const/4 v9, 0x0

    #@e9
    .line 267
    invoke-static {v8, v9}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@ec
    move-result-object v7

    #@ed
    .line 269
    .local v7, "trackTintMode":Landroid/graphics/PorterDuff$Mode;
    iget-object v8, p0, Landroid/widget/Switch;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    #@ef
    if-eq v8, v7, :cond_7

    #@f1
    .line 270
    iput-object v7, p0, Landroid/widget/Switch;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    #@f3
    .line 271
    const/4 v8, 0x1

    #@f4
    iput-boolean v8, p0, Landroid/widget/Switch;->mHasTrackTintMode:Z

    #@f6
    .line 273
    :cond_7
    iget-boolean v8, p0, Landroid/widget/Switch;->mHasTrackTint:Z

    #@f8
    if-nez v8, :cond_8

    #@fa
    iget-boolean v8, p0, Landroid/widget/Switch;->mHasTrackTintMode:Z

    #@fc
    if-eqz v8, :cond_9

    #@fe
    .line 274
    :cond_8
    invoke-direct {p0}, Landroid/widget/Switch;->applyTrackTint()V

    #@101
    .line 278
    :cond_9
    const/4 v8, 0x3

    #@102
    const/4 v9, 0x0

    #@103
    .line 277
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@106
    move-result v1

    #@107
    .line 279
    .local v1, "appearance":I
    if-eqz v1, :cond_a

    #@109
    .line 280
    invoke-virtual {p0, p1, v1}, Landroid/widget/Switch;->setSwitchTextAppearance(Landroid/content/Context;I)V

    #@10c
    .line 282
    :cond_a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@10f
    .line 284
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@112
    move-result-object v2

    #@113
    .line 285
    .local v2, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@116
    move-result v8

    #@117
    iput v8, p0, Landroid/widget/Switch;->mTouchSlop:I

    #@119
    .line 286
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    #@11c
    move-result v8

    #@11d
    iput v8, p0, Landroid/widget/Switch;->mMinFlingVelocity:I

    #@11f
    .line 289
    invoke-virtual {p0}, Landroid/widget/Switch;->refreshDrawableState()V

    #@122
    .line 290
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    #@125
    move-result v8

    #@126
    invoke-virtual {p0, v8}, Landroid/widget/Switch;->setChecked(Z)V

    #@129
    .line 215
    return-void
.end method

.method private animateThumbToCheckedState(Z)V
    .locals 6
    .param p1, "newCheckedState"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 1036
    if-eqz p1, :cond_0

    #@4
    move v1, v2

    #@5
    :goto_0
    int-to-float v0, v1

    #@6
    .line 1037
    .local v0, "targetPosition":F
    sget-object v1, Landroid/widget/Switch;->THUMB_POS:Landroid/util/FloatProperty;

    #@8
    new-array v4, v2, [F

    #@a
    aput v0, v4, v3

    #@c
    invoke-static {p0, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@f
    move-result-object v1

    #@10
    iput-object v1, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    #@12
    .line 1038
    iget-object v1, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    #@14
    const-wide/16 v4, 0xfa

    #@16
    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@19
    .line 1039
    iget-object v1, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    #@1b
    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    #@1e
    .line 1040
    iget-object v1, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    #@20
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    #@23
    .line 1035
    return-void

    #@24
    .end local v0    # "targetPosition":F
    :cond_0
    move v1, v3

    #@25
    .line 1036
    goto :goto_0
.end method

.method private applyThumbTint()V
    .locals 2

    #@0
    .prologue
    .line 706
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_3

    #@4
    iget-boolean v0, p0, Landroid/widget/Switch;->mHasThumbTint:Z

    #@6
    if-nez v0, :cond_0

    #@8
    iget-boolean v0, p0, Landroid/widget/Switch;->mHasThumbTintMode:Z

    #@a
    if-eqz v0, :cond_3

    #@c
    .line 707
    :cond_0
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@e
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@14
    .line 709
    iget-boolean v0, p0, Landroid/widget/Switch;->mHasThumbTint:Z

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 710
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@1a
    iget-object v1, p0, Landroid/widget/Switch;->mThumbTintList:Landroid/content/res/ColorStateList;

    #@1c
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    #@1f
    .line 713
    :cond_1
    iget-boolean v0, p0, Landroid/widget/Switch;->mHasThumbTintMode:Z

    #@21
    if-eqz v0, :cond_2

    #@23
    .line 714
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@25
    iget-object v1, p0, Landroid/widget/Switch;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    #@27
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@2a
    .line 719
    :cond_2
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@2c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_3

    #@32
    .line 720
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@34
    invoke-virtual {p0}, Landroid/widget/Switch;->getDrawableState()[I

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@3b
    .line 705
    :cond_3
    return-void
.end method

.method private applyTrackTint()V
    .locals 2

    #@0
    .prologue
    .line 583
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_3

    #@4
    iget-boolean v0, p0, Landroid/widget/Switch;->mHasTrackTint:Z

    #@6
    if-nez v0, :cond_0

    #@8
    iget-boolean v0, p0, Landroid/widget/Switch;->mHasTrackTintMode:Z

    #@a
    if-eqz v0, :cond_3

    #@c
    .line 584
    :cond_0
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@e
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@14
    .line 586
    iget-boolean v0, p0, Landroid/widget/Switch;->mHasTrackTint:Z

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 587
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@1a
    iget-object v1, p0, Landroid/widget/Switch;->mTrackTintList:Landroid/content/res/ColorStateList;

    #@1c
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    #@1f
    .line 590
    :cond_1
    iget-boolean v0, p0, Landroid/widget/Switch;->mHasTrackTintMode:Z

    #@21
    if-eqz v0, :cond_2

    #@23
    .line 591
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@25
    iget-object v1, p0, Landroid/widget/Switch;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    #@27
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@2a
    .line 596
    :cond_2
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@2c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_3

    #@32
    .line 597
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@34
    invoke-virtual {p0}, Landroid/widget/Switch;->getDrawableState()[I

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@3b
    .line 582
    :cond_3
    return-void
.end method

.method private cancelPositionAnimator()V
    .locals 1

    #@0
    .prologue
    .line 1044
    iget-object v0, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1045
    iget-object v0, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    #@6
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    #@9
    .line 1043
    :cond_0
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 996
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@3
    move-result-object v0

    #@4
    .line 997
    .local v0, "cancel":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    #@5
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    #@8
    .line 998
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@b
    .line 999
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    #@e
    .line 995
    return-void
.end method

.method private getTargetCheckedState()Z
    .locals 2

    #@0
    .prologue
    .line 1050
    iget v0, p0, Landroid/widget/Switch;->mThumbPosition:F

    #@2
    const/high16 v1, 0x3f000000    # 0.5f

    #@4
    cmpl-float v0, v0, v1

    #@6
    if-lez v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method private getThumbOffset()I
    .locals 3

    #@0
    .prologue
    .line 1302
    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1303
    iget v1, p0, Landroid/widget/Switch;->mThumbPosition:F

    #@8
    const/high16 v2, 0x3f800000    # 1.0f

    #@a
    sub-float v0, v2, v1

    #@c
    .line 1307
    .local v0, "thumbPosition":F
    :goto_0
    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    #@f
    move-result v1

    #@10
    int-to-float v1, v1

    #@11
    mul-float/2addr v1, v0

    #@12
    const/high16 v2, 0x3f000000    # 0.5f

    #@14
    add-float/2addr v1, v2

    #@15
    float-to-int v1, v1

    #@16
    return v1

    #@17
    .line 1305
    .end local v0    # "thumbPosition":F
    :cond_0
    iget v0, p0, Landroid/widget/Switch;->mThumbPosition:F

    #@19
    .restart local v0    # "thumbPosition":F
    goto :goto_0
.end method

.method private getThumbScrollRange()I
    .locals 4

    #@0
    .prologue
    .line 1311
    iget-object v2, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 1312
    iget-object v1, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    #@6
    .line 1313
    .local v1, "padding":Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@8
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@b
    .line 1316
    iget-object v2, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 1317
    iget-object v2, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@11
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    #@14
    move-result-object v0

    #@15
    .line 1322
    .local v0, "insets":Landroid/graphics/Insets;
    :goto_0
    iget v2, p0, Landroid/widget/Switch;->mSwitchWidth:I

    #@17
    iget v3, p0, Landroid/widget/Switch;->mThumbWidth:I

    #@19
    sub-int/2addr v2, v3

    #@1a
    iget v3, v1, Landroid/graphics/Rect;->left:I

    #@1c
    sub-int/2addr v2, v3

    #@1d
    iget v3, v1, Landroid/graphics/Rect;->right:I

    #@1f
    sub-int/2addr v2, v3

    #@20
    .line 1323
    iget v3, v0, Landroid/graphics/Insets;->left:I

    #@22
    .line 1322
    sub-int/2addr v2, v3

    #@23
    .line 1323
    iget v3, v0, Landroid/graphics/Insets;->right:I

    #@25
    .line 1322
    sub-int/2addr v2, v3

    #@26
    return v2

    #@27
    .line 1319
    .end local v0    # "insets":Landroid/graphics/Insets;
    :cond_0
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@29
    .restart local v0    # "insets":Landroid/graphics/Insets;
    goto :goto_0

    #@2a
    .line 1325
    .end local v0    # "insets":Landroid/graphics/Insets;
    .end local v1    # "padding":Landroid/graphics/Rect;
    :cond_1
    const/4 v2, 0x0

    #@2b
    return v2
.end method

.method private hitThumb(FF)Z
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 900
    iget-object v6, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@3
    if-nez v6, :cond_0

    #@5
    .line 901
    return v5

    #@6
    .line 905
    :cond_0
    invoke-direct {p0}, Landroid/widget/Switch;->getThumbOffset()I

    #@9
    move-result v2

    #@a
    .line 907
    .local v2, "thumbOffset":I
    iget-object v6, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@c
    iget-object v7, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    #@e
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@11
    .line 908
    iget v6, p0, Landroid/widget/Switch;->mSwitchTop:I

    #@13
    iget v7, p0, Landroid/widget/Switch;->mTouchSlop:I

    #@15
    sub-int v4, v6, v7

    #@17
    .line 909
    .local v4, "thumbTop":I
    iget v6, p0, Landroid/widget/Switch;->mSwitchLeft:I

    #@19
    add-int/2addr v6, v2

    #@1a
    iget v7, p0, Landroid/widget/Switch;->mTouchSlop:I

    #@1c
    sub-int v1, v6, v7

    #@1e
    .line 910
    .local v1, "thumbLeft":I
    iget v6, p0, Landroid/widget/Switch;->mThumbWidth:I

    #@20
    add-int/2addr v6, v1

    #@21
    .line 911
    iget-object v7, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    #@23
    iget v7, v7, Landroid/graphics/Rect;->left:I

    #@25
    .line 910
    add-int/2addr v6, v7

    #@26
    .line 911
    iget-object v7, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    #@28
    iget v7, v7, Landroid/graphics/Rect;->right:I

    #@2a
    .line 910
    add-int/2addr v6, v7

    #@2b
    .line 911
    iget v7, p0, Landroid/widget/Switch;->mTouchSlop:I

    #@2d
    .line 910
    add-int v3, v6, v7

    #@2f
    .line 912
    .local v3, "thumbRight":I
    iget v6, p0, Landroid/widget/Switch;->mSwitchBottom:I

    #@31
    iget v7, p0, Landroid/widget/Switch;->mTouchSlop:I

    #@33
    add-int v0, v6, v7

    #@35
    .line 913
    .local v0, "thumbBottom":I
    int-to-float v6, v1

    #@36
    cmpl-float v6, p1, v6

    #@38
    if-lez v6, :cond_1

    #@3a
    int-to-float v6, v3

    #@3b
    cmpg-float v6, p1, v6

    #@3d
    if-gez v6, :cond_1

    #@3f
    int-to-float v6, v4

    #@40
    cmpl-float v6, p2, v6

    #@42
    if-lez v6, :cond_1

    #@44
    int-to-float v6, v0

    #@45
    cmpg-float v6, p2, v6

    #@47
    if-gez v6, :cond_1

    #@49
    const/4 v5, 0x1

    #@4a
    :cond_1
    return v5
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 887
    iget-object v0, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 888
    iget-object v0, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    #@6
    invoke-interface {v0, p1, p0}, Landroid/text/method/TransformationMethod2;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    #@9
    move-result-object v1

    #@a
    .line 891
    .local v1, "transformed":Ljava/lang/CharSequence;
    :goto_0
    new-instance v0, Landroid/text/StaticLayout;

    #@c
    iget-object v2, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    #@e
    .line 892
    iget-object v3, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    #@10
    invoke-static {v1, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    #@13
    move-result v3

    #@14
    float-to-double v4, v3

    #@15
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    #@18
    move-result-wide v4

    #@19
    double-to-int v3, v4

    #@1a
    .line 893
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@1c
    const/4 v6, 0x0

    #@1d
    const/high16 v5, 0x3f800000    # 1.0f

    #@1f
    const/4 v7, 0x1

    #@20
    .line 891
    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    #@23
    return-object v0

    #@24
    .line 889
    .end local v1    # "transformed":Ljava/lang/CharSequence;
    :cond_0
    move-object v1, p1

    #@25
    .restart local v1    # "transformed":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private setSwitchTypefaceByIndex(II)V
    .locals 1
    .param p1, "typefaceIndex"    # I
    .param p2, "styleIndex"    # I

    #@0
    .prologue
    .line 347
    const/4 v0, 0x0

    #@1
    .line 348
    .local v0, "tf":Landroid/graphics/Typeface;
    packed-switch p1, :pswitch_data_0

    #@4
    .line 362
    .end local v0    # "tf":Landroid/graphics/Typeface;
    :goto_0
    invoke-virtual {p0, v0, p2}, Landroid/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;I)V

    #@7
    .line 346
    return-void

    #@8
    .line 350
    .restart local v0    # "tf":Landroid/graphics/Typeface;
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    #@a
    .local v0, "tf":Landroid/graphics/Typeface;
    goto :goto_0

    #@b
    .line 354
    .local v0, "tf":Landroid/graphics/Typeface;
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    #@d
    .local v0, "tf":Landroid/graphics/Typeface;
    goto :goto_0

    #@e
    .line 358
    .local v0, "tf":Landroid/graphics/Typeface;
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    #@10
    .local v0, "tf":Landroid/graphics/Typeface;
    goto :goto_0

    #@11
    .line 348
    nop

    #@12
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setThumbPosition(F)V
    .locals 0
    .param p1, "position"    # F

    #@0
    .prologue
    .line 1059
    iput p1, p0, Landroid/widget/Switch;->mThumbPosition:F

    #@2
    .line 1060
    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    #@5
    .line 1058
    return-void
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 1008
    iput v7, p0, Landroid/widget/Switch;->mTouchMode:I

    #@4
    .line 1012
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@7
    move-result v4

    #@8
    const/4 v5, 0x1

    #@9
    if-ne v4, v5, :cond_1

    #@b
    invoke-virtual {p0}, Landroid/widget/Switch;->isEnabled()Z

    #@e
    move-result v0

    #@f
    .line 1013
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    #@12
    move-result v2

    #@13
    .line 1015
    .local v2, "oldState":Z
    if-eqz v0, :cond_5

    #@15
    .line 1016
    iget-object v4, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@17
    const/16 v5, 0x3e8

    #@19
    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    #@1c
    .line 1017
    iget-object v4, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1e
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    #@21
    move-result v3

    #@22
    .line 1018
    .local v3, "xvel":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    #@25
    move-result v4

    #@26
    iget v5, p0, Landroid/widget/Switch;->mMinFlingVelocity:I

    #@28
    int-to-float v5, v5

    #@29
    cmpl-float v4, v4, v5

    #@2b
    if-lez v4, :cond_4

    #@2d
    .line 1019
    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    #@30
    move-result v4

    #@31
    if-eqz v4, :cond_3

    #@33
    cmpg-float v4, v3, v6

    #@35
    if-gez v4, :cond_2

    #@37
    :goto_1
    const/4 v1, 0x1

    #@38
    .line 1027
    .end local v3    # "xvel":F
    :goto_2
    if-eq v1, v2, :cond_0

    #@3a
    .line 1028
    invoke-virtual {p0, v7}, Landroid/widget/Switch;->playSoundEffect(I)V

    #@3d
    .line 1029
    invoke-virtual {p0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    #@40
    .line 1032
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/Switch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    #@43
    .line 1007
    return-void

    #@44
    .line 1012
    .end local v2    # "oldState":Z
    :cond_1
    const/4 v0, 0x0

    #@45
    .local v0, "commitChange":Z
    goto :goto_0

    #@46
    .line 1019
    .end local v0    # "commitChange":Z
    .restart local v2    # "oldState":Z
    .restart local v3    # "xvel":F
    :cond_2
    const/4 v1, 0x0

    #@47
    .local v1, "newState":Z
    goto :goto_2

    #@48
    .end local v1    # "newState":Z
    :cond_3
    cmpl-float v4, v3, v6

    #@4a
    if-lez v4, :cond_2

    #@4c
    goto :goto_1

    #@4d
    .line 1021
    :cond_4
    invoke-direct {p0}, Landroid/widget/Switch;->getTargetCheckedState()Z

    #@50
    move-result v1

    #@51
    .local v1, "newState":Z
    goto :goto_2

    #@52
    .line 1024
    .end local v1    # "newState":Z
    .end local v3    # "xvel":F
    :cond_5
    move v1, v2

    #@53
    .restart local v1    # "newState":Z
    goto :goto_2
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "c"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 1143
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    #@4
    .line 1144
    .local v2, "padding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@6
    iget v4, v0, Landroid/widget/Switch;->mSwitchLeft:I

    #@8
    .line 1145
    .local v4, "switchLeft":I
    move-object/from16 v0, p0

    #@a
    iget v6, v0, Landroid/widget/Switch;->mSwitchTop:I

    #@c
    .line 1146
    .local v6, "switchTop":I
    move-object/from16 v0, p0

    #@e
    iget v5, v0, Landroid/widget/Switch;->mSwitchRight:I

    #@10
    .line 1147
    .local v5, "switchRight":I
    move-object/from16 v0, p0

    #@12
    iget v3, v0, Landroid/widget/Switch;->mSwitchBottom:I

    #@14
    .line 1149
    .local v3, "switchBottom":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/Switch;->getThumbOffset()I

    #@17
    move-result v15

    #@18
    add-int v7, v4, v15

    #@1a
    .line 1152
    .local v7, "thumbInitialLeft":I
    move-object/from16 v0, p0

    #@1c
    iget-object v15, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@1e
    if-eqz v15, :cond_6

    #@20
    .line 1153
    move-object/from16 v0, p0

    #@22
    iget-object v15, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@24
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    #@27
    move-result-object v8

    #@28
    .line 1159
    .local v8, "thumbInsets":Landroid/graphics/Insets;
    :goto_0
    move-object/from16 v0, p0

    #@2a
    iget-object v15, v0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@2c
    if-eqz v15, :cond_4

    #@2e
    .line 1160
    move-object/from16 v0, p0

    #@30
    iget-object v15, v0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@32
    invoke-virtual {v15, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@35
    .line 1163
    iget v15, v2, Landroid/graphics/Rect;->left:I

    #@37
    add-int/2addr v7, v15

    #@38
    .line 1166
    move v12, v4

    #@39
    .line 1167
    .local v12, "trackLeft":I
    move v14, v6

    #@3a
    .line 1168
    .local v14, "trackTop":I
    move v13, v5

    #@3b
    .line 1169
    .local v13, "trackRight":I
    move v11, v3

    #@3c
    .line 1170
    .local v11, "trackBottom":I
    sget-object v15, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@3e
    if-eq v8, v15, :cond_3

    #@40
    .line 1171
    iget v15, v8, Landroid/graphics/Insets;->left:I

    #@42
    iget v0, v2, Landroid/graphics/Rect;->left:I

    #@44
    move/from16 v16, v0

    #@46
    move/from16 v0, v16

    #@48
    if-le v15, v0, :cond_0

    #@4a
    .line 1172
    iget v15, v8, Landroid/graphics/Insets;->left:I

    #@4c
    iget v0, v2, Landroid/graphics/Rect;->left:I

    #@4e
    move/from16 v16, v0

    #@50
    sub-int v15, v15, v16

    #@52
    add-int/2addr v12, v15

    #@53
    .line 1174
    :cond_0
    iget v15, v8, Landroid/graphics/Insets;->top:I

    #@55
    iget v0, v2, Landroid/graphics/Rect;->top:I

    #@57
    move/from16 v16, v0

    #@59
    move/from16 v0, v16

    #@5b
    if-le v15, v0, :cond_1

    #@5d
    .line 1175
    iget v15, v8, Landroid/graphics/Insets;->top:I

    #@5f
    iget v0, v2, Landroid/graphics/Rect;->top:I

    #@61
    move/from16 v16, v0

    #@63
    sub-int v15, v15, v16

    #@65
    add-int/2addr v14, v15

    #@66
    .line 1177
    :cond_1
    iget v15, v8, Landroid/graphics/Insets;->right:I

    #@68
    iget v0, v2, Landroid/graphics/Rect;->right:I

    #@6a
    move/from16 v16, v0

    #@6c
    move/from16 v0, v16

    #@6e
    if-le v15, v0, :cond_2

    #@70
    .line 1178
    iget v15, v8, Landroid/graphics/Insets;->right:I

    #@72
    iget v0, v2, Landroid/graphics/Rect;->right:I

    #@74
    move/from16 v16, v0

    #@76
    sub-int v15, v15, v16

    #@78
    sub-int/2addr v13, v15

    #@79
    .line 1180
    :cond_2
    iget v15, v8, Landroid/graphics/Insets;->bottom:I

    #@7b
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    #@7d
    move/from16 v16, v0

    #@7f
    move/from16 v0, v16

    #@81
    if-le v15, v0, :cond_3

    #@83
    .line 1181
    iget v15, v8, Landroid/graphics/Insets;->bottom:I

    #@85
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    #@87
    move/from16 v16, v0

    #@89
    sub-int v15, v15, v16

    #@8b
    sub-int/2addr v11, v15

    #@8c
    .line 1184
    :cond_3
    move-object/from16 v0, p0

    #@8e
    iget-object v15, v0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@90
    invoke-virtual {v15, v12, v14, v13, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@93
    .line 1188
    .end local v11    # "trackBottom":I
    .end local v12    # "trackLeft":I
    .end local v13    # "trackRight":I
    .end local v14    # "trackTop":I
    :cond_4
    move-object/from16 v0, p0

    #@95
    iget-object v15, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@97
    if-eqz v15, :cond_5

    #@99
    .line 1189
    move-object/from16 v0, p0

    #@9b
    iget-object v15, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@9d
    invoke-virtual {v15, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@a0
    .line 1191
    iget v15, v2, Landroid/graphics/Rect;->left:I

    #@a2
    sub-int v9, v7, v15

    #@a4
    .line 1192
    .local v9, "thumbLeft":I
    move-object/from16 v0, p0

    #@a6
    iget v15, v0, Landroid/widget/Switch;->mThumbWidth:I

    #@a8
    add-int/2addr v15, v7

    #@a9
    iget v0, v2, Landroid/graphics/Rect;->right:I

    #@ab
    move/from16 v16, v0

    #@ad
    add-int v10, v15, v16

    #@af
    .line 1193
    .local v10, "thumbRight":I
    move-object/from16 v0, p0

    #@b1
    iget-object v15, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@b3
    invoke-virtual {v15, v9, v6, v10, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@b6
    .line 1195
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->getBackground()Landroid/graphics/drawable/Drawable;

    #@b9
    move-result-object v1

    #@ba
    .line 1196
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_5

    #@bc
    .line 1197
    invoke-virtual {v1, v9, v6, v10, v3}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    #@bf
    .line 1202
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    .end local v9    # "thumbLeft":I
    .end local v10    # "thumbRight":I
    :cond_5
    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V

    #@c2
    .line 1142
    return-void

    #@c3
    .line 1155
    .end local v8    # "thumbInsets":Landroid/graphics/Insets;
    :cond_6
    sget-object v8, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@c5
    .restart local v8    # "thumbInsets":Landroid/graphics/Insets;
    goto/16 :goto_0
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 1357
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->drawableHotspotChanged(FF)V

    #@3
    .line 1359
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1360
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    #@c
    .line 1363
    :cond_0
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 1364
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@12
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    #@15
    .line 1356
    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    #@0
    .prologue
    .line 1340
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    #@3
    .line 1342
    invoke-virtual {p0}, Landroid/widget/Switch;->getDrawableState()[I

    #@6
    move-result-object v0

    #@7
    .line 1344
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 1345
    iget-object v1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@d
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@10
    .line 1348
    :cond_0
    iget-object v1, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 1349
    iget-object v1, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@16
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@19
    .line 1352
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    #@1c
    .line 1339
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 1393
    const-class v0, Landroid/widget/Switch;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    #@0
    .prologue
    .line 1272
    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1273
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 1275
    :cond_0
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    #@e
    move-result v1

    #@f
    iget v2, p0, Landroid/widget/Switch;->mSwitchWidth:I

    #@11
    add-int v0, v1, v2

    #@13
    .line 1276
    .local v0, "padding":I
    invoke-virtual {p0}, Landroid/widget/Switch;->getText()Ljava/lang/CharSequence;

    #@16
    move-result-object v1

    #@17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1a
    move-result v1

    #@1b
    if-nez v1, :cond_1

    #@1d
    .line 1277
    iget v1, p0, Landroid/widget/Switch;->mSwitchPadding:I

    #@1f
    add-int/2addr v0, v1

    #@20
    .line 1279
    :cond_1
    return v0
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    #@0
    .prologue
    .line 1284
    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1285
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 1287
    :cond_0
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    #@e
    move-result v1

    #@f
    iget v2, p0, Landroid/widget/Switch;->mSwitchWidth:I

    #@11
    add-int v0, v1, v2

    #@13
    .line 1288
    .local v0, "padding":I
    invoke-virtual {p0}, Landroid/widget/Switch;->getText()Ljava/lang/CharSequence;

    #@16
    move-result-object v1

    #@17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1a
    move-result v1

    #@1b
    if-nez v1, :cond_1

    #@1d
    .line 1289
    iget v1, p0, Landroid/widget/Switch;->mSwitchPadding:I

    #@1f
    add-int/2addr v0, v1

    #@20
    .line 1291
    :cond_1
    return v0
.end method

.method public getShowText()Z
    .locals 1

    #@0
    .prologue
    .line 804
    iget-boolean v0, p0, Landroid/widget/Switch;->mShowText:Z

    #@2
    return v0
.end method

.method public getSplitTrack()Z
    .locals 1

    #@0
    .prologue
    .line 745
    iget-boolean v0, p0, Landroid/widget/Switch;->mSplitTrack:Z

    #@2
    return v0
.end method

.method public getSwitchMinWidth()I
    .locals 1

    #@0
    .prologue
    .line 456
    iget v0, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    #@2
    return v0
.end method

.method public getSwitchPadding()I
    .locals 1

    #@0
    .prologue
    .line 431
    iget v0, p0, Landroid/widget/Switch;->mSwitchPadding:I

    #@2
    return v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 773
    iget-object v0, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 754
    iget-object v0, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 642
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getThumbTextPadding()I
    .locals 1

    #@0
    .prologue
    .line 479
    iget v0, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    #@2
    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 1

    #@0
    .prologue
    .line 673
    iget-object v0, p0, Landroid/widget/Switch;->mThumbTintList:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    #@0
    .prologue
    .line 702
    iget-object v0, p0, Landroid/widget/Switch;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    return-object v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 519
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getTrackTintList()Landroid/content/res/ColorStateList;
    .locals 1

    #@0
    .prologue
    .line 550
    iget-object v0, p0, Landroid/widget/Switch;->mTrackTintList:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getTrackTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    #@0
    .prologue
    .line 579
    iget-object v0, p0, Landroid/widget/Switch;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1375
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    #@4
    .line 1377
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1378
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@a
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    #@d
    .line 1381
    :cond_0
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 1382
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@13
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    #@16
    .line 1385
    :cond_1
    iget-object v0, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    #@18
    if-eqz v0, :cond_2

    #@1a
    iget-object v0, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    #@1c
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_2

    #@22
    .line 1386
    iget-object v0, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    #@24
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    #@27
    .line 1387
    iput-object v1, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    #@29
    .line 1374
    :cond_2
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    #@0
    .prologue
    .line 1331
    add-int/lit8 v1, p1, 0x1

    #@2
    invoke-super {p0, v1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    #@5
    move-result-object v0

    #@6
    .line 1332
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 1333
    sget-object v1, Landroid/widget/Switch;->CHECKED_STATE_SET:[I

    #@e
    invoke-static {v0, v1}, Landroid/widget/Switch;->mergeDrawableStates([I[I)[I

    #@11
    .line 1335
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 1207
    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    #@3
    .line 1209
    move-object/from16 v0, p0

    #@5
    iget-object v8, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    #@7
    .line 1210
    .local v8, "padding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@9
    iget-object v0, v0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@b
    move-object/from16 v17, v0

    #@d
    .line 1211
    .local v17, "trackDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v17, :cond_4

    #@f
    .line 1212
    move-object/from16 v0, v17

    #@11
    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@14
    .line 1217
    :goto_0
    move-object/from16 v0, p0

    #@16
    iget v14, v0, Landroid/widget/Switch;->mSwitchTop:I

    #@18
    .line 1218
    .local v14, "switchTop":I
    move-object/from16 v0, p0

    #@1a
    iget v10, v0, Landroid/widget/Switch;->mSwitchBottom:I

    #@1c
    .line 1219
    .local v10, "switchBottom":I
    iget v0, v8, Landroid/graphics/Rect;->top:I

    #@1e
    move/from16 v18, v0

    #@20
    add-int v12, v14, v18

    #@22
    .line 1220
    .local v12, "switchInnerTop":I
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    #@24
    move/from16 v18, v0

    #@26
    sub-int v11, v10, v18

    #@28
    .line 1222
    .local v11, "switchInnerBottom":I
    move-object/from16 v0, p0

    #@2a
    iget-object v15, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@2c
    .line 1223
    .local v15, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v17, :cond_0

    #@2e
    .line 1224
    move-object/from16 v0, p0

    #@30
    iget-boolean v0, v0, Landroid/widget/Switch;->mSplitTrack:Z

    #@32
    move/from16 v18, v0

    #@34
    if-eqz v18, :cond_5

    #@36
    if-eqz v15, :cond_5

    #@38
    .line 1225
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    #@3b
    move-result-object v6

    #@3c
    .line 1226
    .local v6, "insets":Landroid/graphics/Insets;
    invoke-virtual {v15, v8}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    #@3f
    .line 1227
    iget v0, v8, Landroid/graphics/Rect;->left:I

    #@41
    move/from16 v18, v0

    #@43
    iget v0, v6, Landroid/graphics/Insets;->left:I

    #@45
    move/from16 v19, v0

    #@47
    add-int v18, v18, v19

    #@49
    move/from16 v0, v18

    #@4b
    iput v0, v8, Landroid/graphics/Rect;->left:I

    #@4d
    .line 1228
    iget v0, v8, Landroid/graphics/Rect;->right:I

    #@4f
    move/from16 v18, v0

    #@51
    iget v0, v6, Landroid/graphics/Insets;->right:I

    #@53
    move/from16 v19, v0

    #@55
    sub-int v18, v18, v19

    #@57
    move/from16 v0, v18

    #@59
    iput v0, v8, Landroid/graphics/Rect;->right:I

    #@5b
    .line 1230
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@5e
    move-result v9

    #@5f
    .line 1231
    .local v9, "saveCount":I
    sget-object v18, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    #@61
    move-object/from16 v0, p1

    #@63
    move-object/from16 v1, v18

    #@65
    invoke-virtual {v0, v8, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    #@68
    .line 1232
    move-object/from16 v0, v17

    #@6a
    move-object/from16 v1, p1

    #@6c
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@6f
    .line 1233
    move-object/from16 v0, p1

    #@71
    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@74
    .line 1239
    .end local v6    # "insets":Landroid/graphics/Insets;
    .end local v9    # "saveCount":I
    :cond_0
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@77
    move-result v9

    #@78
    .line 1241
    .restart local v9    # "saveCount":I
    if-eqz v15, :cond_1

    #@7a
    .line 1242
    move-object/from16 v0, p1

    #@7c
    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@7f
    .line 1245
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/Switch;->getTargetCheckedState()Z

    #@82
    move-result v18

    #@83
    if-eqz v18, :cond_6

    #@85
    move-object/from16 v0, p0

    #@87
    iget-object v13, v0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    #@89
    .line 1246
    .local v13, "switchText":Landroid/text/Layout;
    :goto_2
    if-eqz v13, :cond_3

    #@8b
    .line 1247
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->getDrawableState()[I

    #@8e
    move-result-object v5

    #@8f
    .line 1248
    .local v5, "drawableState":[I
    move-object/from16 v0, p0

    #@91
    iget-object v0, v0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    #@93
    move-object/from16 v18, v0

    #@95
    if-eqz v18, :cond_2

    #@97
    .line 1249
    move-object/from16 v0, p0

    #@99
    iget-object v0, v0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    #@9b
    move-object/from16 v18, v0

    #@9d
    move-object/from16 v0, p0

    #@9f
    iget-object v0, v0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    #@a1
    move-object/from16 v19, v0

    #@a3
    const/16 v20, 0x0

    #@a5
    move-object/from16 v0, v19

    #@a7
    move/from16 v1, v20

    #@a9
    invoke-virtual {v0, v5, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@ac
    move-result v19

    #@ad
    invoke-virtual/range {v18 .. v19}, Landroid/text/TextPaint;->setColor(I)V

    #@b0
    .line 1251
    :cond_2
    move-object/from16 v0, p0

    #@b2
    iget-object v0, v0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    #@b4
    move-object/from16 v18, v0

    #@b6
    move-object/from16 v0, v18

    #@b8
    iput-object v5, v0, Landroid/text/TextPaint;->drawableState:[I

    #@ba
    .line 1254
    if-eqz v15, :cond_7

    #@bc
    .line 1255
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@bf
    move-result-object v3

    #@c0
    .line 1256
    .local v3, "bounds":Landroid/graphics/Rect;
    iget v0, v3, Landroid/graphics/Rect;->left:I

    #@c2
    move/from16 v18, v0

    #@c4
    iget v0, v3, Landroid/graphics/Rect;->right:I

    #@c6
    move/from16 v19, v0

    #@c8
    add-int v4, v18, v19

    #@ca
    .line 1261
    .end local v3    # "bounds":Landroid/graphics/Rect;
    .local v4, "cX":I
    :goto_3
    div-int/lit8 v18, v4, 0x2

    #@cc
    invoke-virtual {v13}, Landroid/text/Layout;->getWidth()I

    #@cf
    move-result v19

    #@d0
    div-int/lit8 v19, v19, 0x2

    #@d2
    sub-int v7, v18, v19

    #@d4
    .line 1262
    .local v7, "left":I
    add-int v18, v12, v11

    #@d6
    div-int/lit8 v18, v18, 0x2

    #@d8
    invoke-virtual {v13}, Landroid/text/Layout;->getHeight()I

    #@db
    move-result v19

    #@dc
    div-int/lit8 v19, v19, 0x2

    #@de
    sub-int v16, v18, v19

    #@e0
    .line 1263
    .local v16, "top":I
    int-to-float v0, v7

    #@e1
    move/from16 v18, v0

    #@e3
    move/from16 v0, v16

    #@e5
    int-to-float v0, v0

    #@e6
    move/from16 v19, v0

    #@e8
    move-object/from16 v0, p1

    #@ea
    move/from16 v1, v18

    #@ec
    move/from16 v2, v19

    #@ee
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    #@f1
    .line 1264
    move-object/from16 v0, p1

    #@f3
    invoke-virtual {v13, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    #@f6
    .line 1267
    .end local v4    # "cX":I
    .end local v5    # "drawableState":[I
    .end local v7    # "left":I
    .end local v16    # "top":I
    :cond_3
    move-object/from16 v0, p1

    #@f8
    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@fb
    .line 1206
    return-void

    #@fc
    .line 1214
    .end local v9    # "saveCount":I
    .end local v10    # "switchBottom":I
    .end local v11    # "switchInnerBottom":I
    .end local v12    # "switchInnerTop":I
    .end local v13    # "switchText":Landroid/text/Layout;
    .end local v14    # "switchTop":I
    .end local v15    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    #@ff
    goto/16 :goto_0

    #@101
    .line 1235
    .restart local v10    # "switchBottom":I
    .restart local v11    # "switchInnerBottom":I
    .restart local v12    # "switchInnerTop":I
    .restart local v14    # "switchTop":I
    .restart local v15    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    move-object/from16 v0, v17

    #@103
    move-object/from16 v1, p1

    #@105
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@108
    goto/16 :goto_1

    #@10a
    .line 1245
    .restart local v9    # "saveCount":I
    :cond_6
    move-object/from16 v0, p0

    #@10c
    iget-object v13, v0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    #@10e
    .restart local v13    # "switchText":Landroid/text/Layout;
    goto/16 :goto_2

    #@110
    .line 1258
    .restart local v5    # "drawableState":[I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->getWidth()I

    #@113
    move-result v4

    #@114
    .restart local v4    # "cX":I
    goto :goto_3
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    .line 1418
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    .line 1419
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_1

    #@9
    iget-object v2, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    #@b
    .line 1420
    .local v2, "switchText":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@e
    move-result v3

    #@f
    if-nez v3, :cond_0

    #@11
    .line 1421
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    #@14
    move-result-object v1

    #@15
    .line 1422
    .local v1, "oldText":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_2

    #@1b
    .line 1423
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    #@1e
    .line 1417
    .end local v1    # "oldText":Ljava/lang/CharSequence;
    :cond_0
    :goto_1
    return-void

    #@1f
    .line 1419
    .end local v2    # "switchText":Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    #@21
    .restart local v2    # "switchText":Ljava/lang/CharSequence;
    goto :goto_0

    #@22
    .line 1425
    .restart local v1    # "oldText":Ljava/lang/CharSequence;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    .line 1426
    .local v0, "newText":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    const/16 v4, 0x20

    #@2d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@34
    .line 1427
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    #@37
    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    #@0
    .prologue
    .line 1087
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    #@3
    .line 1089
    const/4 v1, 0x0

    #@4
    .line 1090
    .local v1, "opticalInsetLeft":I
    const/4 v2, 0x0

    #@5
    .line 1091
    .local v2, "opticalInsetRight":I
    iget-object v8, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@7
    if-eqz v8, :cond_0

    #@9
    .line 1092
    iget-object v7, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    #@b
    .line 1093
    .local v7, "trackPadding":Landroid/graphics/Rect;
    iget-object v8, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@d
    if-eqz v8, :cond_1

    #@f
    .line 1094
    iget-object v8, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@11
    invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@14
    .line 1099
    :goto_0
    iget-object v8, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@16
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    #@19
    move-result-object v0

    #@1a
    .line 1100
    .local v0, "insets":Landroid/graphics/Insets;
    iget v8, v0, Landroid/graphics/Insets;->left:I

    #@1c
    iget v9, v7, Landroid/graphics/Rect;->left:I

    #@1e
    sub-int/2addr v8, v9

    #@1f
    const/4 v9, 0x0

    #@20
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    #@23
    move-result v1

    #@24
    .line 1101
    iget v8, v0, Landroid/graphics/Insets;->right:I

    #@26
    iget v9, v7, Landroid/graphics/Rect;->right:I

    #@28
    sub-int/2addr v8, v9

    #@29
    const/4 v9, 0x0

    #@2a
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    #@2d
    move-result v2

    #@2e
    .line 1106
    .end local v0    # "insets":Landroid/graphics/Insets;
    .end local v7    # "trackPadding":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    #@31
    move-result v8

    #@32
    if-eqz v8, :cond_2

    #@34
    .line 1107
    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingLeft()I

    #@37
    move-result v8

    #@38
    add-int v4, v8, v1

    #@3a
    .line 1108
    .local v4, "switchLeft":I
    iget v8, p0, Landroid/widget/Switch;->mSwitchWidth:I

    #@3c
    add-int/2addr v8, v4

    #@3d
    sub-int/2addr v8, v1

    #@3e
    sub-int v5, v8, v2

    #@40
    .line 1116
    .local v5, "switchRight":I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/Switch;->getGravity()I

    #@43
    move-result v8

    #@44
    and-int/lit8 v8, v8, 0x70

    #@46
    sparse-switch v8, :sswitch_data_0

    #@49
    .line 1119
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingTop()I

    #@4c
    move-result v6

    #@4d
    .line 1120
    .local v6, "switchTop":I
    iget v8, p0, Landroid/widget/Switch;->mSwitchHeight:I

    #@4f
    add-int v3, v6, v8

    #@51
    .line 1135
    .local v3, "switchBottom":I
    :goto_2
    iput v4, p0, Landroid/widget/Switch;->mSwitchLeft:I

    #@53
    .line 1136
    iput v6, p0, Landroid/widget/Switch;->mSwitchTop:I

    #@55
    .line 1137
    iput v3, p0, Landroid/widget/Switch;->mSwitchBottom:I

    #@57
    .line 1138
    iput v5, p0, Landroid/widget/Switch;->mSwitchRight:I

    #@59
    .line 1086
    return-void

    #@5a
    .line 1096
    .end local v3    # "switchBottom":I
    .end local v4    # "switchLeft":I
    .end local v5    # "switchRight":I
    .end local v6    # "switchTop":I
    .restart local v7    # "trackPadding":Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    #@5d
    goto :goto_0

    #@5e
    .line 1110
    .end local v7    # "trackPadding":Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Switch;->getWidth()I

    #@61
    move-result v8

    #@62
    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingRight()I

    #@65
    move-result v9

    #@66
    sub-int/2addr v8, v9

    #@67
    sub-int v5, v8, v2

    #@69
    .line 1111
    .restart local v5    # "switchRight":I
    iget v8, p0, Landroid/widget/Switch;->mSwitchWidth:I

    #@6b
    sub-int v8, v5, v8

    #@6d
    add-int/2addr v8, v1

    #@6e
    add-int v4, v8, v2

    #@70
    .restart local v4    # "switchLeft":I
    goto :goto_1

    #@71
    .line 1124
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingTop()I

    #@74
    move-result v8

    #@75
    invoke-virtual {p0}, Landroid/widget/Switch;->getHeight()I

    #@78
    move-result v9

    #@79
    add-int/2addr v8, v9

    #@7a
    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingBottom()I

    #@7d
    move-result v9

    #@7e
    sub-int/2addr v8, v9

    #@7f
    div-int/lit8 v8, v8, 0x2

    #@81
    .line 1125
    iget v9, p0, Landroid/widget/Switch;->mSwitchHeight:I

    #@83
    div-int/lit8 v9, v9, 0x2

    #@85
    .line 1124
    sub-int v6, v8, v9

    #@87
    .line 1126
    .restart local v6    # "switchTop":I
    iget v8, p0, Landroid/widget/Switch;->mSwitchHeight:I

    #@89
    add-int v3, v6, v8

    #@8b
    .line 1127
    .restart local v3    # "switchBottom":I
    goto :goto_2

    #@8c
    .line 1130
    .end local v3    # "switchBottom":I
    .end local v6    # "switchTop":I
    :sswitch_2
    invoke-virtual {p0}, Landroid/widget/Switch;->getHeight()I

    #@8f
    move-result v8

    #@90
    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingBottom()I

    #@93
    move-result v9

    #@94
    sub-int v3, v8, v9

    #@96
    .line 1131
    .restart local v3    # "switchBottom":I
    iget v8, p0, Landroid/widget/Switch;->mSwitchHeight:I

    #@98
    sub-int v6, v3, v8

    #@9a
    .line 1132
    .restart local v6    # "switchTop":I
    goto :goto_2

    #@9b
    .line 1116
    nop

    #@9c
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 809
    iget-boolean v11, p0, Landroid/widget/Switch;->mShowText:Z

    #@2
    if-eqz v11, :cond_1

    #@4
    .line 810
    iget-object v11, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    #@6
    if-nez v11, :cond_0

    #@8
    .line 811
    iget-object v11, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    #@a
    invoke-direct {p0, v11}, Landroid/widget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    #@d
    move-result-object v11

    #@e
    iput-object v11, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    #@10
    .line 814
    :cond_0
    iget-object v11, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    #@12
    if-nez v11, :cond_1

    #@14
    .line 815
    iget-object v11, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    #@16
    invoke-direct {p0, v11}, Landroid/widget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    #@19
    move-result-object v11

    #@1a
    iput-object v11, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    #@1c
    .line 819
    :cond_1
    iget-object v3, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    #@1e
    .line 822
    .local v3, "padding":Landroid/graphics/Rect;
    iget-object v11, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@20
    if-eqz v11, :cond_4

    #@22
    .line 824
    iget-object v11, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@24
    invoke-virtual {v11, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@27
    .line 825
    iget-object v11, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@29
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@2c
    move-result v11

    #@2d
    iget v12, v3, Landroid/graphics/Rect;->left:I

    #@2f
    sub-int/2addr v11, v12

    #@30
    iget v12, v3, Landroid/graphics/Rect;->right:I

    #@32
    sub-int v9, v11, v12

    #@34
    .line 826
    .local v9, "thumbWidth":I
    iget-object v11, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@36
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@39
    move-result v8

    #@3a
    .line 833
    .local v8, "thumbHeight":I
    :goto_0
    iget-boolean v11, p0, Landroid/widget/Switch;->mShowText:Z

    #@3c
    if-eqz v11, :cond_5

    #@3e
    .line 834
    iget-object v11, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    #@40
    invoke-virtual {v11}, Landroid/text/Layout;->getWidth()I

    #@43
    move-result v11

    #@44
    iget-object v12, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    #@46
    invoke-virtual {v12}, Landroid/text/Layout;->getWidth()I

    #@49
    move-result v12

    #@4a
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    #@4d
    move-result v11

    #@4e
    .line 835
    iget v12, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    #@50
    mul-int/lit8 v12, v12, 0x2

    #@52
    .line 834
    add-int v1, v11, v12

    #@54
    .line 840
    .local v1, "maxTextWidth":I
    :goto_1
    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    #@57
    move-result v11

    #@58
    iput v11, p0, Landroid/widget/Switch;->mThumbWidth:I

    #@5a
    .line 843
    iget-object v11, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@5c
    if-eqz v11, :cond_6

    #@5e
    .line 844
    iget-object v11, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@60
    invoke-virtual {v11, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@63
    .line 845
    iget-object v11, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@65
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@68
    move-result v10

    #@69
    .line 853
    .local v10, "trackHeight":I
    :goto_2
    iget v4, v3, Landroid/graphics/Rect;->left:I

    #@6b
    .line 854
    .local v4, "paddingLeft":I
    iget v5, v3, Landroid/graphics/Rect;->right:I

    #@6d
    .line 855
    .local v5, "paddingRight":I
    iget-object v11, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@6f
    if-eqz v11, :cond_2

    #@71
    .line 856
    iget-object v11, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@73
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    #@76
    move-result-object v0

    #@77
    .line 857
    .local v0, "inset":Landroid/graphics/Insets;
    iget v11, v0, Landroid/graphics/Insets;->left:I

    #@79
    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    #@7c
    move-result v4

    #@7d
    .line 858
    iget v11, v0, Landroid/graphics/Insets;->right:I

    #@7f
    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    #@82
    move-result v5

    #@83
    .line 861
    .end local v0    # "inset":Landroid/graphics/Insets;
    :cond_2
    iget v11, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    #@85
    .line 862
    iget v12, p0, Landroid/widget/Switch;->mThumbWidth:I

    #@87
    mul-int/lit8 v12, v12, 0x2

    #@89
    add-int/2addr v12, v4

    #@8a
    add-int/2addr v12, v5

    #@8b
    .line 861
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    #@8e
    move-result v7

    #@8f
    .line 863
    .local v7, "switchWidth":I
    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    #@92
    move-result v6

    #@93
    .line 864
    .local v6, "switchHeight":I
    iput v7, p0, Landroid/widget/Switch;->mSwitchWidth:I

    #@95
    .line 865
    iput v6, p0, Landroid/widget/Switch;->mSwitchHeight:I

    #@97
    .line 867
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    #@9a
    .line 869
    invoke-virtual {p0}, Landroid/widget/Switch;->getMeasuredHeight()I

    #@9d
    move-result v2

    #@9e
    .line 870
    .local v2, "measuredHeight":I
    if-ge v2, v6, :cond_3

    #@a0
    .line 871
    invoke-virtual {p0}, Landroid/widget/Switch;->getMeasuredWidthAndState()I

    #@a3
    move-result v11

    #@a4
    invoke-virtual {p0, v11, v6}, Landroid/widget/Switch;->setMeasuredDimension(II)V

    #@a7
    .line 808
    :cond_3
    return-void

    #@a8
    .line 828
    .end local v1    # "maxTextWidth":I
    .end local v2    # "measuredHeight":I
    .end local v4    # "paddingLeft":I
    .end local v5    # "paddingRight":I
    .end local v6    # "switchHeight":I
    .end local v7    # "switchWidth":I
    .end local v8    # "thumbHeight":I
    .end local v9    # "thumbWidth":I
    .end local v10    # "trackHeight":I
    :cond_4
    const/4 v9, 0x0

    #@a9
    .line 829
    .restart local v9    # "thumbWidth":I
    const/4 v8, 0x0

    #@aa
    .restart local v8    # "thumbHeight":I
    goto :goto_0

    #@ab
    .line 837
    :cond_5
    const/4 v1, 0x0

    #@ac
    .restart local v1    # "maxTextWidth":I
    goto :goto_1

    #@ad
    .line 847
    :cond_6
    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    #@b0
    .line 848
    const/4 v10, 0x0

    #@b1
    .restart local v10    # "trackHeight":I
    goto :goto_2
.end method

.method public onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 878
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 880
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_1

    #@9
    iget-object v0, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    #@b
    .line 881
    .local v0, "text":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_0

    #@d
    .line 882
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    #@10
    move-result-object v1

    #@11
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@14
    .line 877
    :cond_0
    return-void

    #@15
    .line 880
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_1
    iget-object v0, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    #@17
    .restart local v0    # "text":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public onProvideStructure(Landroid/view/ViewStructure;)V
    .locals 5
    .param p1, "structure"    # Landroid/view/ViewStructure;

    #@0
    .prologue
    .line 1398
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onProvideStructure(Landroid/view/ViewStructure;)V

    #@3
    .line 1399
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_1

    #@9
    iget-object v2, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    #@b
    .line 1400
    .local v2, "switchText":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@e
    move-result v3

    #@f
    if-nez v3, :cond_0

    #@11
    .line 1401
    invoke-virtual {p1}, Landroid/view/ViewStructure;->getText()Ljava/lang/CharSequence;

    #@14
    move-result-object v1

    #@15
    .line 1402
    .local v1, "oldText":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_2

    #@1b
    .line 1403
    invoke-virtual {p1, v2}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    #@1e
    .line 1397
    .end local v1    # "oldText":Ljava/lang/CharSequence;
    :cond_0
    :goto_1
    return-void

    #@1f
    .line 1399
    .end local v2    # "switchText":Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    #@21
    .restart local v2    # "switchText":Ljava/lang/CharSequence;
    goto :goto_0

    #@22
    .line 1405
    .restart local v1    # "oldText":Ljava/lang/CharSequence;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    .line 1406
    .local v0, "newText":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    const/16 v4, 0x20

    #@2d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@34
    .line 1407
    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    #@37
    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v11, 0x2

    #@1
    const/4 v9, 0x0

    #@2
    const/4 v10, 0x0

    #@3
    const/4 v8, 0x1

    #@4
    .line 918
    iget-object v7, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@6
    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@9
    .line 919
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@c
    move-result v0

    #@d
    .line 920
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    #@10
    .line 992
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@13
    move-result v7

    #@14
    return v7

    #@15
    .line 922
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@18
    move-result v5

    #@19
    .line 923
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@1c
    move-result v6

    #@1d
    .line 924
    .local v6, "y":F
    invoke-virtual {p0}, Landroid/widget/Switch;->isEnabled()Z

    #@20
    move-result v7

    #@21
    if-eqz v7, :cond_0

    #@23
    invoke-direct {p0, v5, v6}, Landroid/widget/Switch;->hitThumb(FF)Z

    #@26
    move-result v7

    #@27
    if-eqz v7, :cond_0

    #@29
    .line 925
    iput v8, p0, Landroid/widget/Switch;->mTouchMode:I

    #@2b
    .line 926
    iput v5, p0, Landroid/widget/Switch;->mTouchX:F

    #@2d
    .line 927
    iput v6, p0, Landroid/widget/Switch;->mTouchY:F

    #@2f
    goto :goto_0

    #@30
    .line 933
    .end local v5    # "x":F
    .end local v6    # "y":F
    :pswitch_2
    iget v7, p0, Landroid/widget/Switch;->mTouchMode:I

    #@32
    packed-switch v7, :pswitch_data_1

    #@35
    goto :goto_0

    #@36
    .line 939
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@39
    move-result v5

    #@3a
    .line 940
    .restart local v5    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@3d
    move-result v6

    #@3e
    .line 941
    .restart local v6    # "y":F
    iget v7, p0, Landroid/widget/Switch;->mTouchX:F

    #@40
    sub-float v7, v5, v7

    #@42
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    #@45
    move-result v7

    #@46
    iget v9, p0, Landroid/widget/Switch;->mTouchSlop:I

    #@48
    int-to-float v9, v9

    #@49
    cmpl-float v7, v7, v9

    #@4b
    if-gtz v7, :cond_1

    #@4d
    .line 942
    iget v7, p0, Landroid/widget/Switch;->mTouchY:F

    #@4f
    sub-float v7, v6, v7

    #@51
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    #@54
    move-result v7

    #@55
    iget v9, p0, Landroid/widget/Switch;->mTouchSlop:I

    #@57
    int-to-float v9, v9

    #@58
    cmpl-float v7, v7, v9

    #@5a
    if-lez v7, :cond_0

    #@5c
    .line 943
    :cond_1
    iput v11, p0, Landroid/widget/Switch;->mTouchMode:I

    #@5e
    .line 944
    invoke-virtual {p0}, Landroid/widget/Switch;->getParent()Landroid/view/ViewParent;

    #@61
    move-result-object v7

    #@62
    invoke-interface {v7, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@65
    .line 945
    iput v5, p0, Landroid/widget/Switch;->mTouchX:F

    #@67
    .line 946
    iput v6, p0, Landroid/widget/Switch;->mTouchY:F

    #@69
    .line 947
    return v8

    #@6a
    .line 953
    .end local v5    # "x":F
    .end local v6    # "y":F
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@6d
    move-result v5

    #@6e
    .line 954
    .restart local v5    # "x":F
    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    #@71
    move-result v4

    #@72
    .line 955
    .local v4, "thumbScrollRange":I
    iget v7, p0, Landroid/widget/Switch;->mTouchX:F

    #@74
    sub-float v3, v5, v7

    #@76
    .line 957
    .local v3, "thumbScrollOffset":F
    if-eqz v4, :cond_4

    #@78
    .line 958
    int-to-float v7, v4

    #@79
    div-float v1, v3, v7

    #@7b
    .line 964
    .local v1, "dPos":F
    :goto_1
    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    #@7e
    move-result v7

    #@7f
    if-eqz v7, :cond_2

    #@81
    .line 965
    neg-float v1, v1

    #@82
    .line 967
    :cond_2
    iget v7, p0, Landroid/widget/Switch;->mThumbPosition:F

    #@84
    add-float/2addr v7, v1

    #@85
    const/high16 v9, 0x3f800000    # 1.0f

    #@87
    invoke-static {v7, v10, v9}, Landroid/util/MathUtils;->constrain(FFF)F

    #@8a
    move-result v2

    #@8b
    .line 968
    .local v2, "newPos":F
    iget v7, p0, Landroid/widget/Switch;->mThumbPosition:F

    #@8d
    cmpl-float v7, v2, v7

    #@8f
    if-eqz v7, :cond_3

    #@91
    .line 969
    iput v5, p0, Landroid/widget/Switch;->mTouchX:F

    #@93
    .line 970
    invoke-direct {p0, v2}, Landroid/widget/Switch;->setThumbPosition(F)V

    #@96
    .line 972
    :cond_3
    return v8

    #@97
    .line 962
    .end local v1    # "dPos":F
    .end local v2    # "newPos":F
    :cond_4
    cmpl-float v7, v3, v10

    #@99
    if-lez v7, :cond_5

    #@9b
    move v7, v8

    #@9c
    :goto_2
    int-to-float v1, v7

    #@9d
    .restart local v1    # "dPos":F
    goto :goto_1

    #@9e
    .end local v1    # "dPos":F
    :cond_5
    const/4 v7, -0x1

    #@9f
    goto :goto_2

    #@a0
    .line 980
    .end local v3    # "thumbScrollOffset":F
    .end local v4    # "thumbScrollRange":I
    .end local v5    # "x":F
    :pswitch_5
    iget v7, p0, Landroid/widget/Switch;->mTouchMode:I

    #@a2
    if-ne v7, v11, :cond_6

    #@a4
    .line 981
    invoke-direct {p0, p1}, Landroid/widget/Switch;->stopDrag(Landroid/view/MotionEvent;)V

    #@a7
    .line 983
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@aa
    .line 984
    return v8

    #@ab
    .line 986
    :cond_6
    iput v9, p0, Landroid/widget/Switch;->mTouchMode:I

    #@ad
    .line 987
    iget-object v7, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@af
    invoke-virtual {v7}, Landroid/view/VelocityTracker;->clear()V

    #@b2
    goto/16 :goto_0

    #@b4
    .line 920
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch

    #@c0
    .line 933
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    #@0
    .prologue
    .line 1070
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    #@3
    .line 1074
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    #@6
    move-result p1

    #@7
    .line 1076
    invoke-virtual {p0}, Landroid/widget/Switch;->isAttachedToWindow()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    invoke-virtual {p0}, Landroid/widget/Switch;->isLaidOut()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 1077
    invoke-direct {p0, p1}, Landroid/widget/Switch;->animateThumbToCheckedState(Z)V

    #@16
    .line 1069
    :goto_0
    return-void

    #@17
    .line 1080
    :cond_0
    invoke-direct {p0}, Landroid/widget/Switch;->cancelPositionAnimator()V

    #@1a
    .line 1081
    if-eqz p1, :cond_1

    #@1c
    const/4 v0, 0x1

    #@1d
    :goto_1
    int-to-float v0, v0

    #@1e
    invoke-direct {p0, v0}, Landroid/widget/Switch;->setThumbPosition(F)V

    #@21
    goto :goto_0

    #@22
    :cond_1
    const/4 v0, 0x0

    #@23
    goto :goto_1
.end method

.method public setShowText(Z)V
    .locals 1
    .param p1, "showText"    # Z

    #@0
    .prologue
    .line 793
    iget-boolean v0, p0, Landroid/widget/Switch;->mShowText:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 794
    iput-boolean p1, p0, Landroid/widget/Switch;->mShowText:Z

    #@6
    .line 795
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    #@9
    .line 792
    :cond_0
    return-void
.end method

.method public setSplitTrack(Z)V
    .locals 0
    .param p1, "splitTrack"    # Z

    #@0
    .prologue
    .line 735
    iput-boolean p1, p0, Landroid/widget/Switch;->mSplitTrack:Z

    #@2
    .line 736
    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    #@5
    .line 734
    return-void
.end method

.method public setSwitchMinWidth(I)V
    .locals 0
    .param p1, "pixels"    # I

    #@0
    .prologue
    .line 443
    iput p1, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    #@2
    .line 444
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    #@5
    .line 442
    return-void
.end method

.method public setSwitchPadding(I)V
    .locals 0
    .param p1, "pixels"    # I

    #@0
    .prologue
    .line 419
    iput p1, p0, Landroid/widget/Switch;->mSwitchPadding:I

    #@2
    .line 420
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    #@5
    .line 418
    return-void
.end method

.method public setSwitchTextAppearance(Landroid/content/Context;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/4 v10, 0x1

    #@2
    const/4 v9, -0x1

    #@3
    const/4 v8, 0x0

    #@4
    .line 302
    sget-object v6, Lcom/android/internal/R$styleable;->TextAppearance:[I

    #@6
    .line 301
    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    #@9
    move-result-object v1

    #@a
    .line 307
    .local v1, "appearance":Landroid/content/res/TypedArray;
    const/4 v6, 0x3

    #@b
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@e
    move-result-object v2

    #@f
    .line 309
    .local v2, "colors":Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_1

    #@11
    .line 310
    iput-object v2, p0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    #@13
    .line 316
    :goto_0
    invoke-virtual {v1, v8, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@16
    move-result v4

    #@17
    .line 318
    .local v4, "ts":I
    if-eqz v4, :cond_0

    #@19
    .line 319
    int-to-float v6, v4

    #@1a
    iget-object v7, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    #@1c
    invoke-virtual {v7}, Landroid/text/TextPaint;->getTextSize()F

    #@1f
    move-result v7

    #@20
    cmpl-float v6, v6, v7

    #@22
    if-eqz v6, :cond_0

    #@24
    .line 320
    iget-object v6, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    #@26
    int-to-float v7, v4

    #@27
    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    #@2a
    .line 321
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    #@2d
    .line 327
    :cond_0
    invoke-virtual {v1, v10, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    #@30
    move-result v5

    #@31
    .line 329
    .local v5, "typefaceIndex":I
    const/4 v6, 0x2

    #@32
    invoke-virtual {v1, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    #@35
    move-result v3

    #@36
    .line 332
    .local v3, "styleIndex":I
    invoke-direct {p0, v5, v3}, Landroid/widget/Switch;->setSwitchTypefaceByIndex(II)V

    #@39
    .line 334
    const/16 v6, 0xb

    #@3b
    invoke-virtual {v1, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@3e
    move-result v0

    #@3f
    .line 336
    .local v0, "allCaps":Z
    if-eqz v0, :cond_2

    #@41
    .line 337
    new-instance v6, Landroid/text/method/AllCapsTransformationMethod;

    #@43
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    #@46
    move-result-object v7

    #@47
    invoke-direct {v6, v7}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    #@4a
    iput-object v6, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    #@4c
    .line 338
    iget-object v6, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    #@4e
    invoke-interface {v6, v10}, Landroid/text/method/TransformationMethod2;->setLengthChangesAllowed(Z)V

    #@51
    .line 343
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@54
    .line 299
    return-void

    #@55
    .line 313
    .end local v0    # "allCaps":Z
    .end local v3    # "styleIndex":I
    .end local v4    # "ts":I
    .end local v5    # "typefaceIndex":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Switch;->getTextColors()Landroid/content/res/ColorStateList;

    #@58
    move-result-object v6

    #@59
    iput-object v6, p0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    #@5b
    goto :goto_0

    #@5c
    .line 340
    .restart local v0    # "allCaps":Z
    .restart local v3    # "styleIndex":I
    .restart local v4    # "ts":I
    .restart local v5    # "typefaceIndex":I
    :cond_2
    iput-object v11, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    #@5e
    goto :goto_1
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    #@0
    .prologue
    .line 403
    iget-object v0, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    #@2
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    #@5
    move-result-object v0

    #@6
    if-eq v0, p1, :cond_0

    #@8
    .line 404
    iget-object v0, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    #@a
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@d
    .line 406
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    #@10
    .line 407
    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    #@13
    .line 402
    :cond_0
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;I)V
    .locals 6
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 372
    if-lez p2, :cond_4

    #@4
    .line 373
    if-nez p1, :cond_1

    #@6
    .line 374
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    #@9
    move-result-object p1

    #@a
    .line 379
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    #@d
    .line 381
    if-eqz p1, :cond_2

    #@f
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    #@12
    move-result v1

    #@13
    .line 382
    .local v1, "typefaceStyle":I
    :goto_1
    not-int v4, v1

    #@14
    and-int v0, p2, v4

    #@16
    .line 383
    .local v0, "need":I
    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    #@18
    and-int/lit8 v5, v0, 0x1

    #@1a
    if-eqz v5, :cond_0

    #@1c
    const/4 v2, 0x1

    #@1d
    :cond_0
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    #@20
    .line 384
    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    #@22
    and-int/lit8 v2, v0, 0x2

    #@24
    if-eqz v2, :cond_3

    #@26
    const/high16 v2, -0x41800000    # -0.25f

    #@28
    :goto_2
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    #@2b
    .line 371
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :goto_3
    return-void

    #@2c
    .line 376
    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    #@2f
    move-result-object p1

    #@30
    goto :goto_0

    #@31
    .line 381
    :cond_2
    const/4 v1, 0x0

    #@32
    .restart local v1    # "typefaceStyle":I
    goto :goto_1

    #@33
    .restart local v0    # "need":I
    :cond_3
    move v2, v3

    #@34
    .line 384
    goto :goto_2

    #@35
    .line 386
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :cond_4
    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    #@37
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    #@3a
    .line 387
    iget-object v2, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    #@3c
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    #@3f
    .line 388
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    #@42
    goto :goto_3
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "textOff"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 782
    iput-object p1, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    #@2
    .line 783
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    #@5
    .line 781
    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "textOn"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 763
    iput-object p1, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    #@2
    .line 764
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    #@5
    .line 762
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 611
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 612
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@7
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@a
    .line 614
    :cond_0
    iput-object p1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@c
    .line 615
    if-eqz p1, :cond_1

    #@e
    .line 616
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@11
    .line 618
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    #@14
    .line 610
    return-void
.end method

.method public setThumbResource(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 630
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    #@b
    .line 629
    return-void
.end method

.method public setThumbTextPadding(I)V
    .locals 0
    .param p1, "pixels"    # I

    #@0
    .prologue
    .line 467
    iput p1, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    #@2
    .line 468
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    #@5
    .line 466
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 660
    iput-object p1, p0, Landroid/widget/Switch;->mThumbTintList:Landroid/content/res/ColorStateList;

    #@2
    .line 661
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/widget/Switch;->mHasThumbTint:Z

    #@5
    .line 663
    invoke-direct {p0}, Landroid/widget/Switch;->applyThumbTint()V

    #@8
    .line 659
    return-void
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 688
    iput-object p1, p0, Landroid/widget/Switch;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    .line 689
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/widget/Switch;->mHasThumbTintMode:Z

    #@5
    .line 691
    invoke-direct {p0}, Landroid/widget/Switch;->applyThumbTint()V

    #@8
    .line 687
    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 490
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 491
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@7
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@a
    .line 493
    :cond_0
    iput-object p1, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@c
    .line 494
    if-eqz p1, :cond_1

    #@e
    .line 495
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@11
    .line 497
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    #@14
    .line 489
    return-void
.end method

.method public setTrackResource(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 508
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    #@b
    .line 507
    return-void
.end method

.method public setTrackTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 537
    iput-object p1, p0, Landroid/widget/Switch;->mTrackTintList:Landroid/content/res/ColorStateList;

    #@2
    .line 538
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/widget/Switch;->mHasTrackTint:Z

    #@5
    .line 540
    invoke-direct {p0}, Landroid/widget/Switch;->applyTrackTint()V

    #@8
    .line 536
    return-void
.end method

.method public setTrackTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 565
    iput-object p1, p0, Landroid/widget/Switch;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    .line 566
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/widget/Switch;->mHasTrackTintMode:Z

    #@5
    .line 568
    invoke-direct {p0}, Landroid/widget/Switch;->applyTrackTint()V

    #@8
    .line 564
    return-void
.end method

.method public toggle()V
    .locals 1

    #@0
    .prologue
    .line 1065
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setChecked(Z)V

    #@a
    .line 1064
    return-void

    #@b
    .line 1065
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1370
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    iget-object v1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@9
    if-ne p1, v1, :cond_1

    #@b
    :cond_0
    :goto_0
    return v0

    #@c
    :cond_1
    iget-object v1, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@e
    if-eq p1, v1, :cond_0

    #@10
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method
