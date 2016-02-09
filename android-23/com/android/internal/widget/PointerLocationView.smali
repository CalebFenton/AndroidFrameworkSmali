.class public Lcom/android/internal/widget/PointerLocationView;
.super Landroid/view/View;
.source "PointerLocationView.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/PointerLocationView$PointerState;,
        Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    }
.end annotation


# static fields
.field private static final ALT_STRATEGY_PROPERY_KEY:Ljava/lang/String; = "debug.velocitytracker.alt"

.field private static final TAG:Ljava/lang/String; = "Pointer"


# instance fields
.field private final ESTIMATE_FUTURE_POINTS:I

.field private final ESTIMATE_INTERVAL:F

.field private final ESTIMATE_PAST_POINTS:I

.field private mActivePointerId:I

.field private final mAltVelocity:Landroid/view/VelocityTracker;

.field private mCurDown:Z

.field private mCurNumPointers:I

.field private final mCurrentPointPaint:Landroid/graphics/Paint;

.field private mHeaderBottom:I

.field private final mIm:Landroid/hardware/input/InputManager;

.field private mMaxNumPointers:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPathPaint:Landroid/graphics/Paint;

.field private final mPointers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/PointerLocationView$PointerState;",
            ">;"
        }
    .end annotation
.end field

.field private mPrintCoords:Z

.field private mReusableOvalRect:Landroid/graphics/RectF;

.field private final mTargetPaint:Landroid/graphics/Paint;

.field private final mTempCoords:Landroid/view/MotionEvent$PointerCoords;

.field private final mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

.field private final mTextBackgroundPaint:Landroid/graphics/Paint;

.field private final mTextLevelPaint:Landroid/graphics/Paint;

.field private final mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mVC:Landroid/view/ViewConfiguration;

.field private final mVelocity:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "c"    # Landroid/content/Context;

    #@0
    .prologue
    const/16 v9, 0xc0

    #@2
    const/high16 v8, 0x40000000    # 2.0f

    #@4
    const/4 v7, 0x1

    #@5
    const/16 v6, 0xff

    #@7
    const/4 v5, 0x0

    #@8
    .line 137
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #@b
    .line 106
    const/4 v2, 0x4

    #@c
    iput v2, p0, Lcom/android/internal/widget/PointerLocationView;->ESTIMATE_PAST_POINTS:I

    #@e
    .line 107
    const/4 v2, 0x2

    #@f
    iput v2, p0, Lcom/android/internal/widget/PointerLocationView;->ESTIMATE_FUTURE_POINTS:I

    #@11
    .line 108
    const v2, 0x3ca3d70a    # 0.02f

    #@14
    iput v2, p0, Lcom/android/internal/widget/PointerLocationView;->ESTIMATE_INTERVAL:F

    #@16
    .line 120
    new-instance v2, Landroid/graphics/Paint$FontMetricsInt;

    #@18
    invoke-direct {v2}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    #@1b
    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    #@1d
    .line 126
    new-instance v2, Ljava/util/ArrayList;

    #@1f
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@22
    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    #@24
    .line 127
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    #@26
    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    #@29
    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    #@2b
    .line 132
    new-instance v2, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@2d
    invoke-direct {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;-><init>()V

    #@30
    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@32
    .line 134
    iput-boolean v7, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    #@34
    .line 208
    new-instance v2, Landroid/graphics/RectF;

    #@36
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    #@39
    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    #@3b
    .line 138
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/PointerLocationView;->setFocusableInTouchMode(Z)V

    #@3e
    .line 140
    const-string/jumbo v2, "input"

    #@41
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@44
    move-result-object v2

    #@45
    check-cast v2, Landroid/hardware/input/InputManager;

    #@47
    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mIm:Landroid/hardware/input/InputManager;

    #@49
    .line 142
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@4c
    move-result-object v2

    #@4d
    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mVC:Landroid/view/ViewConfiguration;

    #@4f
    .line 143
    new-instance v2, Landroid/graphics/Paint;

    #@51
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    #@54
    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    #@56
    .line 144
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    #@58
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@5b
    .line 145
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    #@5d
    .line 146
    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->getResources()Landroid/content/res/Resources;

    #@60
    move-result-object v3

    #@61
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@64
    move-result-object v3

    #@65
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    #@67
    .line 145
    const/high16 v4, 0x41200000    # 10.0f

    #@69
    mul-float/2addr v3, v4

    #@6a
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    #@6d
    .line 147
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    #@6f
    invoke-virtual {v2, v6, v5, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    #@72
    .line 148
    new-instance v2, Landroid/graphics/Paint;

    #@74
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    #@77
    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    #@79
    .line 149
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    #@7b
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@7e
    .line 150
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    #@80
    const/16 v3, 0x80

    #@82
    invoke-virtual {v2, v3, v6, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    #@85
    .line 151
    new-instance v2, Landroid/graphics/Paint;

    #@87
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    #@8a
    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    #@8c
    .line 152
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    #@8e
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@91
    .line 153
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    #@93
    invoke-virtual {v2, v9, v6, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    #@96
    .line 154
    new-instance v2, Landroid/graphics/Paint;

    #@98
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    #@9b
    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    #@9d
    .line 155
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    #@9f
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@a2
    .line 156
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    #@a4
    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    #@a7
    .line 157
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    #@a9
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@ab
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@ae
    .line 158
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    #@b0
    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@b3
    .line 159
    new-instance v2, Landroid/graphics/Paint;

    #@b5
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    #@b8
    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    #@ba
    .line 160
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    #@bc
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@bf
    .line 161
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    #@c1
    invoke-virtual {v2, v6, v6, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    #@c4
    .line 162
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    #@c6
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@c8
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@cb
    .line 163
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    #@cd
    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@d0
    .line 164
    new-instance v2, Landroid/graphics/Paint;

    #@d2
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    #@d5
    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    #@d7
    .line 165
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    #@d9
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@dc
    .line 166
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    #@de
    invoke-virtual {v2, v6, v5, v5, v9}, Landroid/graphics/Paint;->setARGB(IIII)V

    #@e1
    .line 167
    new-instance v2, Landroid/graphics/Paint;

    #@e3
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    #@e6
    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    #@e8
    .line 168
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    #@ea
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@ed
    .line 169
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    #@ef
    const/16 v3, 0x60

    #@f1
    invoke-virtual {v2, v6, v5, v3, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    #@f4
    .line 170
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    #@f6
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@f8
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@fb
    .line 171
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    #@fd
    const/high16 v3, 0x3f800000    # 1.0f

    #@ff
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@102
    .line 173
    new-instance v1, Lcom/android/internal/widget/PointerLocationView$PointerState;

    #@104
    invoke-direct {v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;-><init>()V

    #@107
    .line 174
    .local v1, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    #@109
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10c
    .line 175
    iput v5, p0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    #@10e
    .line 177
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@111
    move-result-object v2

    #@112
    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    #@114
    .line 179
    const-string/jumbo v2, "debug.velocitytracker.alt"

    #@117
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@11a
    move-result-object v0

    #@11b
    .line 180
    .local v0, "altStrategy":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@11e
    move-result v2

    #@11f
    if-eqz v2, :cond_0

    #@121
    .line 181
    const-string/jumbo v2, "Pointer"

    #@124
    new-instance v3, Ljava/lang/StringBuilder;

    #@126
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@129
    const-string/jumbo v4, "Comparing default velocity tracker strategy with "

    #@12c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v3

    #@130
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v3

    #@134
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@137
    move-result-object v3

    #@138
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@13b
    .line 182
    invoke-static {v0}, Landroid/view/VelocityTracker;->obtain(Ljava/lang/String;)Landroid/view/VelocityTracker;

    #@13e
    move-result-object v2

    #@13f
    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    #@141
    .line 136
    :goto_0
    return-void

    #@142
    .line 184
    :cond_0
    const/4 v2, 0x0

    #@143
    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    #@145
    goto :goto_0
.end method

.method private drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "major"    # F
    .param p5, "minor"    # F
    .param p6, "angle"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    #@2
    .line 211
    const/4 v0, 0x1

    #@3
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    #@6
    .line 212
    const/high16 v0, 0x43340000    # 180.0f

    #@8
    mul-float/2addr v0, p6

    #@9
    float-to-double v0, v0

    #@a
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    #@f
    div-double/2addr v0, v2

    #@10
    double-to-float v0, v0

    #@11
    invoke-virtual {p1, v0, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    #@14
    .line 213
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    #@16
    div-float v1, p5, v4

    #@18
    sub-float v1, p2, v1

    #@1a
    iput v1, v0, Landroid/graphics/RectF;->left:F

    #@1c
    .line 214
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    #@1e
    div-float v1, p5, v4

    #@20
    add-float/2addr v1, p2

    #@21
    iput v1, v0, Landroid/graphics/RectF;->right:F

    #@23
    .line 215
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    #@25
    div-float v1, p4, v4

    #@27
    sub-float v1, p3, v1

    #@29
    iput v1, v0, Landroid/graphics/RectF;->top:F

    #@2b
    .line 216
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    #@2d
    div-float v1, p4, v4

    #@2f
    add-float/2addr v1, p3

    #@30
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    #@32
    .line 217
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    #@34
    invoke-virtual {p1, v0, p7}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    #@37
    .line 218
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@3a
    .line 210
    return-void
.end method

.method private logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V
    .locals 12
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "action"    # I
    .param p3, "index"    # I
    .param p4, "coords"    # Landroid/view/MotionEvent$PointerCoords;
    .param p5, "id"    # I
    .param p6, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 443
    move-object/from16 v0, p6

    #@2
    invoke-virtual {v0, p3}, Landroid/view/MotionEvent;->getToolType(I)I

    #@5
    move-result v4

    #@6
    .line 444
    .local v4, "toolType":I
    invoke-virtual/range {p6 .. p6}, Landroid/view/MotionEvent;->getButtonState()I

    #@9
    move-result v2

    #@a
    .line 446
    .local v2, "buttonState":I
    and-int/lit16 v5, p2, 0xff

    #@c
    packed-switch v5, :pswitch_data_0

    #@f
    .line 491
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    .line 495
    .local v3, "prefix":Ljava/lang/String;
    :goto_0
    const-string/jumbo v5, "Pointer"

    #@16
    iget-object v6, p0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@18
    invoke-virtual {v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@1b
    move-result-object v6

    #@1c
    invoke-virtual {v6, p1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@1f
    move-result-object v6

    #@20
    .line 496
    const-string/jumbo v7, " id "

    #@23
    .line 495
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@26
    move-result-object v6

    #@27
    .line 496
    add-int/lit8 v7, p5, 0x1

    #@29
    .line 495
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@2c
    move-result-object v6

    #@2d
    .line 497
    const-string/jumbo v7, ": "

    #@30
    .line 495
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@33
    move-result-object v6

    #@34
    invoke-virtual {v6, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@37
    move-result-object v6

    #@38
    .line 499
    const-string/jumbo v7, " ("

    #@3b
    .line 495
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@3e
    move-result-object v6

    #@3f
    .line 499
    move-object/from16 v0, p4

    #@41
    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@43
    const/4 v8, 0x3

    #@44
    .line 495
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@47
    move-result-object v6

    #@48
    .line 499
    const-string/jumbo v7, ", "

    #@4b
    .line 495
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@4e
    move-result-object v6

    #@4f
    .line 499
    move-object/from16 v0, p4

    #@51
    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@53
    const/4 v8, 0x3

    #@54
    .line 495
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@57
    move-result-object v6

    #@58
    .line 500
    const-string/jumbo v7, ") Pressure="

    #@5b
    .line 495
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@5e
    move-result-object v6

    #@5f
    .line 500
    move-object/from16 v0, p4

    #@61
    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    #@63
    const/4 v8, 0x3

    #@64
    .line 495
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@67
    move-result-object v6

    #@68
    .line 501
    const-string/jumbo v7, " Size="

    #@6b
    .line 495
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@6e
    move-result-object v6

    #@6f
    .line 501
    move-object/from16 v0, p4

    #@71
    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    #@73
    const/4 v8, 0x3

    #@74
    .line 495
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@77
    move-result-object v6

    #@78
    .line 502
    const-string/jumbo v7, " TouchMajor="

    #@7b
    .line 495
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@7e
    move-result-object v6

    #@7f
    .line 502
    move-object/from16 v0, p4

    #@81
    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    #@83
    const/4 v8, 0x3

    #@84
    .line 495
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@87
    move-result-object v6

    #@88
    .line 503
    const-string/jumbo v7, " TouchMinor="

    #@8b
    .line 495
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@8e
    move-result-object v6

    #@8f
    .line 503
    move-object/from16 v0, p4

    #@91
    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    #@93
    const/4 v8, 0x3

    #@94
    .line 495
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@97
    move-result-object v6

    #@98
    .line 504
    const-string/jumbo v7, " ToolMajor="

    #@9b
    .line 495
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@9e
    move-result-object v6

    #@9f
    .line 504
    move-object/from16 v0, p4

    #@a1
    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    #@a3
    const/4 v8, 0x3

    #@a4
    .line 495
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@a7
    move-result-object v6

    #@a8
    .line 505
    const-string/jumbo v7, " ToolMinor="

    #@ab
    .line 495
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@ae
    move-result-object v6

    #@af
    .line 505
    move-object/from16 v0, p4

    #@b1
    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    #@b3
    const/4 v8, 0x3

    #@b4
    .line 495
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@b7
    move-result-object v6

    #@b8
    .line 506
    const-string/jumbo v7, " Orientation="

    #@bb
    .line 495
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@be
    move-result-object v6

    #@bf
    .line 506
    move-object/from16 v0, p4

    #@c1
    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    #@c3
    const/high16 v8, 0x43340000    # 180.0f

    #@c5
    mul-float/2addr v7, v8

    #@c6
    float-to-double v8, v7

    #@c7
    const-wide v10, 0x400921fb54442d18L    # Math.PI

    #@cc
    div-double/2addr v8, v10

    #@cd
    double-to-float v7, v8

    #@ce
    const/4 v8, 0x1

    #@cf
    .line 495
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@d2
    move-result-object v6

    #@d3
    .line 507
    const-string/jumbo v7, "deg"

    #@d6
    .line 495
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@d9
    move-result-object v6

    #@da
    .line 508
    const-string/jumbo v7, " Tilt="

    #@dd
    .line 495
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@e0
    move-result-object v6

    #@e1
    .line 509
    const/16 v7, 0x19

    #@e3
    move-object/from16 v0, p4

    #@e5
    invoke-virtual {v0, v7}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    #@e8
    move-result v7

    #@e9
    const/high16 v8, 0x43340000    # 180.0f

    #@eb
    mul-float/2addr v7, v8

    #@ec
    float-to-double v8, v7

    #@ed
    const-wide v10, 0x400921fb54442d18L    # Math.PI

    #@f2
    .line 508
    div-double/2addr v8, v10

    #@f3
    double-to-float v7, v8

    #@f4
    .line 509
    const/4 v8, 0x1

    #@f5
    .line 495
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@f8
    move-result-object v6

    #@f9
    .line 510
    const-string/jumbo v7, "deg"

    #@fc
    .line 495
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@ff
    move-result-object v6

    #@100
    .line 511
    const-string/jumbo v7, " Distance="

    #@103
    .line 495
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@106
    move-result-object v6

    #@107
    .line 511
    const/16 v7, 0x18

    #@109
    move-object/from16 v0, p4

    #@10b
    invoke-virtual {v0, v7}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    #@10e
    move-result v7

    #@10f
    const/4 v8, 0x1

    #@110
    .line 495
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@113
    move-result-object v6

    #@114
    .line 512
    const-string/jumbo v7, " VScroll="

    #@117
    .line 495
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@11a
    move-result-object v6

    #@11b
    .line 512
    const/16 v7, 0x9

    #@11d
    move-object/from16 v0, p4

    #@11f
    invoke-virtual {v0, v7}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    #@122
    move-result v7

    #@123
    const/4 v8, 0x1

    #@124
    .line 495
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@127
    move-result-object v6

    #@128
    .line 513
    const-string/jumbo v7, " HScroll="

    #@12b
    .line 495
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@12e
    move-result-object v6

    #@12f
    .line 513
    const/16 v7, 0xa

    #@131
    move-object/from16 v0, p4

    #@133
    invoke-virtual {v0, v7}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    #@136
    move-result v7

    #@137
    const/4 v8, 0x1

    #@138
    .line 495
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@13b
    move-result-object v6

    #@13c
    .line 514
    const-string/jumbo v7, " BoundingBox=[("

    #@13f
    .line 495
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@142
    move-result-object v6

    #@143
    .line 515
    const/16 v7, 0x20

    #@145
    move-object/from16 v0, p6

    #@147
    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    #@14a
    move-result v7

    #@14b
    const/4 v8, 0x3

    #@14c
    .line 495
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@14f
    move-result-object v6

    #@150
    .line 516
    const-string/jumbo v7, ", "

    #@153
    .line 495
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@156
    move-result-object v6

    #@157
    .line 516
    const/16 v7, 0x21

    #@159
    move-object/from16 v0, p6

    #@15b
    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    #@15e
    move-result v7

    #@15f
    const/4 v8, 0x3

    #@160
    .line 495
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@163
    move-result-object v6

    #@164
    .line 516
    const-string/jumbo v7, ")"

    #@167
    .line 495
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@16a
    move-result-object v6

    #@16b
    .line 517
    const-string/jumbo v7, ", ("

    #@16e
    .line 495
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@171
    move-result-object v6

    #@172
    .line 517
    const/16 v7, 0x22

    #@174
    move-object/from16 v0, p6

    #@176
    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    #@179
    move-result v7

    #@17a
    const/4 v8, 0x3

    #@17b
    .line 495
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@17e
    move-result-object v6

    #@17f
    .line 518
    const-string/jumbo v7, ", "

    #@182
    .line 495
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@185
    move-result-object v6

    #@186
    .line 518
    const/16 v7, 0x23

    #@188
    move-object/from16 v0, p6

    #@18a
    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    #@18d
    move-result v7

    #@18e
    const/4 v8, 0x3

    #@18f
    .line 495
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@192
    move-result-object v6

    #@193
    .line 519
    const-string/jumbo v7, ")]"

    #@196
    .line 495
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@199
    move-result-object v6

    #@19a
    .line 520
    const-string/jumbo v7, " ToolType="

    #@19d
    .line 495
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@1a0
    move-result-object v6

    #@1a1
    .line 520
    invoke-static {v4}, Landroid/view/MotionEvent;->toolTypeToString(I)Ljava/lang/String;

    #@1a4
    move-result-object v7

    #@1a5
    .line 495
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@1a8
    move-result-object v6

    #@1a9
    .line 521
    const-string/jumbo v7, " ButtonState="

    #@1ac
    .line 495
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@1af
    move-result-object v6

    #@1b0
    .line 521
    invoke-static {v2}, Landroid/view/MotionEvent;->buttonStateToString(I)Ljava/lang/String;

    #@1b3
    move-result-object v7

    #@1b4
    .line 495
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@1b7
    move-result-object v6

    #@1b8
    invoke-virtual {v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    #@1bb
    move-result-object v6

    #@1bc
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1bf
    .line 442
    return-void

    #@1c0
    .line 448
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v3, "DOWN"

    #@1c3
    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    #@1c5
    .line 451
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v3, "UP"

    #@1c8
    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    #@1ca
    .line 454
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v3, "MOVE"

    #@1cd
    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    #@1cf
    .line 457
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v3, "CANCEL"

    #@1d2
    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    #@1d4
    .line 460
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v3, "OUTSIDE"

    #@1d7
    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    #@1d9
    .line 463
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_5
    const v5, 0xff00

    #@1dc
    and-int/2addr v5, p2

    #@1dd
    shr-int/lit8 v5, v5, 0x8

    #@1df
    if-ne p3, v5, :cond_0

    #@1e1
    .line 465
    const-string/jumbo v3, "DOWN"

    #@1e4
    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    #@1e6
    .line 467
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "MOVE"

    #@1e9
    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    #@1eb
    .line 471
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_6
    const v5, 0xff00

    #@1ee
    and-int/2addr v5, p2

    #@1ef
    shr-int/lit8 v5, v5, 0x8

    #@1f1
    if-ne p3, v5, :cond_1

    #@1f3
    .line 473
    const-string/jumbo v3, "UP"

    #@1f6
    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    #@1f8
    .line 475
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "MOVE"

    #@1fb
    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    #@1fd
    .line 479
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_7
    const-string/jumbo v3, "HOVER MOVE"

    #@200
    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    #@202
    .line 482
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_8
    const-string/jumbo v3, "HOVER ENTER"

    #@205
    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    #@207
    .line 485
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_9
    const-string/jumbo v3, "HOVER EXIT"

    #@20a
    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    #@20c
    .line 488
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_a
    const-string/jumbo v3, "SCROLL"

    #@20f
    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    #@211
    .line 446
    nop

    #@212
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private logInputDeviceState(ILjava/lang/String;)V
    .locals 4
    .param p1, "deviceId"    # I
    .param p2, "state"    # Ljava/lang/String;

    #@0
    .prologue
    .line 758
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mIm:Landroid/hardware/input/InputManager;

    #@2
    invoke-virtual {v1, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    #@5
    move-result-object v0

    #@6
    .line 759
    .local v0, "device":Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    #@8
    .line 760
    const-string/jumbo v1, "Pointer"

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    const-string/jumbo v3, ": "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 757
    :goto_0
    return-void

    #@27
    .line 762
    :cond_0
    const-string/jumbo v1, "Pointer"

    #@2a
    new-instance v2, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    const-string/jumbo v3, ": "

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    goto :goto_0
.end method

.method private logInputDevices()V
    .locals 4

    #@0
    .prologue
    .line 751
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    #@3
    move-result-object v0

    #@4
    .line 752
    .local v0, "deviceIds":[I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@6
    if-ge v1, v2, :cond_0

    #@8
    .line 753
    aget v2, v0, v1

    #@a
    const-string/jumbo v3, "Device Enumerated"

    #@d
    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceState(ILjava/lang/String;)V

    #@10
    .line 752
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_0

    #@13
    .line 750
    :cond_0
    return-void
.end method

.method private logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 424
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    #@3
    move-result v2

    #@4
    .line 425
    .local v2, "action":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getHistorySize()I

    #@7
    move-result v7

    #@8
    .line 426
    .local v7, "N":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    #@b
    move-result v8

    #@c
    .line 427
    .local v8, "NI":I
    const/4 v9, 0x0

    #@d
    .local v9, "historyPos":I
    :goto_0
    if-ge v9, v7, :cond_1

    #@f
    .line 428
    const/4 v3, 0x0

    #@10
    .local v3, "i":I
    :goto_1
    if-ge v3, v8, :cond_0

    #@12
    .line 429
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@15
    move-result v5

    #@16
    .line 430
    .local v5, "id":I
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    #@18
    invoke-virtual {p2, v3, v9, v0}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    #@1b
    .line 431
    iget-object v4, p0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    #@1d
    move-object v0, p0

    #@1e
    move-object v1, p1

    #@1f
    move-object v6, p2

    #@20
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/PointerLocationView;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    #@23
    .line 428
    add-int/lit8 v3, v3, 0x1

    #@25
    goto :goto_1

    #@26
    .line 427
    .end local v5    # "id":I
    :cond_0
    add-int/lit8 v9, v9, 0x1

    #@28
    goto :goto_0

    #@29
    .line 434
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    #@2a
    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v8, :cond_2

    #@2c
    .line 435
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@2f
    move-result v5

    #@30
    .line 436
    .restart local v5    # "id":I
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    #@32
    invoke-virtual {p2, v3, v0}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    #@35
    .line 437
    iget-object v4, p0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    #@37
    move-object v0, p0

    #@38
    move-object v1, p1

    #@39
    move-object v6, p2

    #@3a
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/PointerLocationView;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    #@3d
    .line 434
    add-int/lit8 v3, v3, 0x1

    #@3f
    goto :goto_2

    #@40
    .line 423
    .end local v5    # "id":I
    :cond_2
    return-void
.end method

.method private static shouldLogKey(I)Z
    .locals 2
    .param p0, "keyCode"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 701
    packed-switch p0, :pswitch_data_0

    #@4
    .line 709
    invoke-static {p0}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 710
    invoke-static {p0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    #@d
    move-result v0

    #@e
    .line 709
    :cond_0
    return v0

    #@f
    .line 707
    :pswitch_0
    return v0

    #@10
    .line 701
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    #@0
    .prologue
    .line 722
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    #@3
    .line 724
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mIm:Landroid/hardware/input/InputManager;

    #@5
    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->getHandler()Landroid/os/Handler;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    #@c
    .line 725
    invoke-direct {p0}, Lcom/android/internal/widget/PointerLocationView;->logInputDevices()V

    #@f
    .line 721
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    #@0
    .prologue
    .line 730
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    #@3
    .line 732
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mIm:Landroid/hardware/input/InputManager;

    #@5
    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    #@8
    .line 729
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 39
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/PointerLocationView;->getWidth()I

    #@3
    move-result v36

    #@4
    .line 224
    .local v36, "w":I
    div-int/lit8 v28, v36, 0x7

    #@6
    .line 225
    .local v28, "itemW":I
    move-object/from16 v0, p0

    #@8
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    #@a
    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@c
    neg-int v2, v2

    #@d
    add-int/lit8 v21, v2, 0x1

    #@f
    .line 226
    .local v21, "base":I
    move-object/from16 v0, p0

    #@11
    iget v0, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderBottom:I

    #@13
    move/from16 v22, v0

    #@15
    .line 228
    .local v22, "bottom":I
    move-object/from16 v0, p0

    #@17
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v19

    #@1d
    .line 231
    .local v19, "NP":I
    move-object/from16 v0, p0

    #@1f
    iget v2, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    #@21
    if-ltz v2, :cond_2

    #@23
    .line 232
    move-object/from16 v0, p0

    #@25
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    #@27
    move-object/from16 v0, p0

    #@29
    iget v7, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    #@2b
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v34

    #@2f
    check-cast v34, Lcom/android/internal/widget/PointerLocationView$PointerState;

    #@31
    .line 234
    .local v34, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    const/4 v3, 0x0

    #@32
    const/4 v4, 0x0

    #@33
    add-int/lit8 v2, v28, -0x1

    #@35
    int-to-float v5, v2

    #@36
    move/from16 v0, v22

    #@38
    int-to-float v6, v0

    #@39
    move-object/from16 v0, p0

    #@3b
    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    #@3d
    move-object/from16 v2, p1

    #@3f
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@42
    .line 235
    move-object/from16 v0, p0

    #@44
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@46
    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@49
    move-result-object v2

    #@4a
    .line 236
    const-string/jumbo v7, "P: "

    #@4d
    .line 235
    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@50
    move-result-object v2

    #@51
    .line 236
    move-object/from16 v0, p0

    #@53
    iget v7, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    #@55
    .line 235
    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@58
    move-result-object v2

    #@59
    .line 237
    const-string/jumbo v7, " / "

    #@5c
    .line 235
    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@5f
    move-result-object v2

    #@60
    .line 237
    move-object/from16 v0, p0

    #@62
    iget v7, v0, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    #@64
    .line 235
    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@67
    move-result-object v2

    #@68
    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v2

    #@6c
    .line 238
    const/high16 v7, 0x3f800000    # 1.0f

    #@6e
    move/from16 v0, v21

    #@70
    int-to-float v10, v0

    #@71
    move-object/from16 v0, p0

    #@73
    iget-object v11, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    #@75
    .line 235
    move-object/from16 v0, p1

    #@77
    invoke-virtual {v0, v2, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@7a
    .line 240
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get12(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    #@7d
    move-result v18

    #@7e
    .line 241
    .local v18, "N":I
    move-object/from16 v0, p0

    #@80
    iget-boolean v2, v0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    #@82
    if-eqz v2, :cond_0

    #@84
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get8(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    #@87
    move-result v2

    #@88
    if-nez v2, :cond_1

    #@8a
    :cond_0
    if-nez v18, :cond_3

    #@8c
    .line 242
    :cond_1
    move/from16 v0, v28

    #@8e
    int-to-float v3, v0

    #@8f
    const/4 v4, 0x0

    #@90
    mul-int/lit8 v2, v28, 0x2

    #@92
    add-int/lit8 v2, v2, -0x1

    #@94
    int-to-float v5, v2

    #@95
    move/from16 v0, v22

    #@97
    int-to-float v6, v0

    #@98
    move-object/from16 v0, p0

    #@9a
    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    #@9c
    move-object/from16 v2, p1

    #@9e
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@a1
    .line 243
    move-object/from16 v0, p0

    #@a3
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@a5
    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@a8
    move-result-object v2

    #@a9
    .line 244
    const-string/jumbo v7, "X: "

    #@ac
    .line 243
    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@af
    move-result-object v2

    #@b0
    .line 244
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@b3
    move-result-object v7

    #@b4
    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@b6
    const/4 v10, 0x1

    #@b7
    .line 243
    invoke-virtual {v2, v7, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@ba
    move-result-object v2

    #@bb
    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v2

    #@bf
    .line 245
    add-int/lit8 v7, v28, 0x1

    #@c1
    int-to-float v7, v7

    #@c2
    move/from16 v0, v21

    #@c4
    int-to-float v10, v0

    #@c5
    move-object/from16 v0, p0

    #@c7
    iget-object v11, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    #@c9
    .line 243
    move-object/from16 v0, p1

    #@cb
    invoke-virtual {v0, v2, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@ce
    .line 246
    mul-int/lit8 v2, v28, 0x2

    #@d0
    int-to-float v3, v2

    #@d1
    const/4 v4, 0x0

    #@d2
    mul-int/lit8 v2, v28, 0x3

    #@d4
    add-int/lit8 v2, v2, -0x1

    #@d6
    int-to-float v5, v2

    #@d7
    move/from16 v0, v22

    #@d9
    int-to-float v6, v0

    #@da
    move-object/from16 v0, p0

    #@dc
    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    #@de
    move-object/from16 v2, p1

    #@e0
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@e3
    .line 247
    move-object/from16 v0, p0

    #@e5
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@e7
    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@ea
    move-result-object v2

    #@eb
    .line 248
    const-string/jumbo v7, "Y: "

    #@ee
    .line 247
    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@f1
    move-result-object v2

    #@f2
    .line 248
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@f5
    move-result-object v7

    #@f6
    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@f8
    const/4 v10, 0x1

    #@f9
    .line 247
    invoke-virtual {v2, v7, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@fc
    move-result-object v2

    #@fd
    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    #@100
    move-result-object v2

    #@101
    .line 249
    mul-int/lit8 v7, v28, 0x2

    #@103
    add-int/lit8 v7, v7, 0x1

    #@105
    int-to-float v7, v7

    #@106
    move/from16 v0, v21

    #@108
    int-to-float v10, v0

    #@109
    move-object/from16 v0, p0

    #@10b
    iget-object v11, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    #@10d
    .line 247
    move-object/from16 v0, p1

    #@10f
    invoke-virtual {v0, v2, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@112
    .line 267
    :goto_0
    mul-int/lit8 v2, v28, 0x3

    #@114
    int-to-float v3, v2

    #@115
    const/4 v4, 0x0

    #@116
    mul-int/lit8 v2, v28, 0x4

    #@118
    add-int/lit8 v2, v2, -0x1

    #@11a
    int-to-float v5, v2

    #@11b
    move/from16 v0, v22

    #@11d
    int-to-float v6, v0

    #@11e
    move-object/from16 v0, p0

    #@120
    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    #@122
    move-object/from16 v2, p1

    #@124
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@127
    .line 268
    move-object/from16 v0, p0

    #@129
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@12b
    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@12e
    move-result-object v2

    #@12f
    .line 269
    const-string/jumbo v7, "Xv: "

    #@132
    .line 268
    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@135
    move-result-object v2

    #@136
    .line 269
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get16(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    #@139
    move-result v7

    #@13a
    const/4 v10, 0x3

    #@13b
    .line 268
    invoke-virtual {v2, v7, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@13e
    move-result-object v2

    #@13f
    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    #@142
    move-result-object v2

    #@143
    .line 270
    mul-int/lit8 v7, v28, 0x3

    #@145
    add-int/lit8 v7, v7, 0x1

    #@147
    int-to-float v7, v7

    #@148
    move/from16 v0, v21

    #@14a
    int-to-float v10, v0

    #@14b
    move-object/from16 v0, p0

    #@14d
    iget-object v11, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    #@14f
    .line 268
    move-object/from16 v0, p1

    #@151
    invoke-virtual {v0, v2, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@154
    .line 272
    mul-int/lit8 v2, v28, 0x4

    #@156
    int-to-float v3, v2

    #@157
    const/4 v4, 0x0

    #@158
    mul-int/lit8 v2, v28, 0x5

    #@15a
    add-int/lit8 v2, v2, -0x1

    #@15c
    int-to-float v5, v2

    #@15d
    move/from16 v0, v22

    #@15f
    int-to-float v6, v0

    #@160
    move-object/from16 v0, p0

    #@162
    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    #@164
    move-object/from16 v2, p1

    #@166
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@169
    .line 273
    move-object/from16 v0, p0

    #@16b
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@16d
    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@170
    move-result-object v2

    #@171
    .line 274
    const-string/jumbo v7, "Yv: "

    #@174
    .line 273
    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@177
    move-result-object v2

    #@178
    .line 274
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get17(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    #@17b
    move-result v7

    #@17c
    const/4 v10, 0x3

    #@17d
    .line 273
    invoke-virtual {v2, v7, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@180
    move-result-object v2

    #@181
    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    #@184
    move-result-object v2

    #@185
    .line 275
    mul-int/lit8 v7, v28, 0x4

    #@187
    add-int/lit8 v7, v7, 0x1

    #@189
    int-to-float v7, v7

    #@18a
    move/from16 v0, v21

    #@18c
    int-to-float v10, v0

    #@18d
    move-object/from16 v0, p0

    #@18f
    iget-object v11, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    #@191
    .line 273
    move-object/from16 v0, p1

    #@193
    invoke-virtual {v0, v2, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@196
    .line 277
    mul-int/lit8 v2, v28, 0x5

    #@198
    int-to-float v3, v2

    #@199
    const/4 v4, 0x0

    #@19a
    mul-int/lit8 v2, v28, 0x6

    #@19c
    add-int/lit8 v2, v2, -0x1

    #@19e
    int-to-float v5, v2

    #@19f
    move/from16 v0, v22

    #@1a1
    int-to-float v6, v0

    #@1a2
    move-object/from16 v0, p0

    #@1a4
    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    #@1a6
    move-object/from16 v2, p1

    #@1a8
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@1ab
    .line 278
    mul-int/lit8 v2, v28, 0x5

    #@1ad
    int-to-float v3, v2

    #@1ae
    const/4 v4, 0x0

    #@1af
    mul-int/lit8 v2, v28, 0x5

    #@1b1
    int-to-float v2, v2

    #@1b2
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@1b5
    move-result-object v7

    #@1b6
    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    #@1b8
    move/from16 v0, v28

    #@1ba
    int-to-float v10, v0

    #@1bb
    mul-float/2addr v7, v10

    #@1bc
    add-float/2addr v2, v7

    #@1bd
    const/high16 v7, 0x3f800000    # 1.0f

    #@1bf
    sub-float v5, v2, v7

    #@1c1
    .line 279
    move/from16 v0, v22

    #@1c3
    int-to-float v6, v0

    #@1c4
    move-object/from16 v0, p0

    #@1c6
    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    #@1c8
    move-object/from16 v2, p1

    #@1ca
    .line 278
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@1cd
    .line 280
    move-object/from16 v0, p0

    #@1cf
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@1d1
    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@1d4
    move-result-object v2

    #@1d5
    .line 281
    const-string/jumbo v7, "Prs: "

    #@1d8
    .line 280
    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@1db
    move-result-object v2

    #@1dc
    .line 281
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@1df
    move-result-object v7

    #@1e0
    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    #@1e2
    const/4 v10, 0x2

    #@1e3
    .line 280
    invoke-virtual {v2, v7, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@1e6
    move-result-object v2

    #@1e7
    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    #@1ea
    move-result-object v2

    #@1eb
    .line 282
    mul-int/lit8 v7, v28, 0x5

    #@1ed
    add-int/lit8 v7, v7, 0x1

    #@1ef
    int-to-float v7, v7

    #@1f0
    move/from16 v0, v21

    #@1f2
    int-to-float v10, v0

    #@1f3
    move-object/from16 v0, p0

    #@1f5
    iget-object v11, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    #@1f7
    .line 280
    move-object/from16 v0, p1

    #@1f9
    invoke-virtual {v0, v2, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@1fc
    .line 284
    mul-int/lit8 v2, v28, 0x6

    #@1fe
    int-to-float v3, v2

    #@1ff
    const/4 v4, 0x0

    #@200
    move/from16 v0, v36

    #@202
    int-to-float v5, v0

    #@203
    move/from16 v0, v22

    #@205
    int-to-float v6, v0

    #@206
    move-object/from16 v0, p0

    #@208
    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    #@20a
    move-object/from16 v2, p1

    #@20c
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@20f
    .line 285
    mul-int/lit8 v2, v28, 0x6

    #@211
    int-to-float v3, v2

    #@212
    const/4 v4, 0x0

    #@213
    mul-int/lit8 v2, v28, 0x6

    #@215
    int-to-float v2, v2

    #@216
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@219
    move-result-object v7

    #@21a
    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->size:F

    #@21c
    move/from16 v0, v28

    #@21e
    int-to-float v10, v0

    #@21f
    mul-float/2addr v7, v10

    #@220
    add-float/2addr v2, v7

    #@221
    const/high16 v7, 0x3f800000    # 1.0f

    #@223
    sub-float v5, v2, v7

    #@225
    .line 286
    move/from16 v0, v22

    #@227
    int-to-float v6, v0

    #@228
    move-object/from16 v0, p0

    #@22a
    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    #@22c
    move-object/from16 v2, p1

    #@22e
    .line 285
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@231
    .line 287
    move-object/from16 v0, p0

    #@233
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@235
    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@238
    move-result-object v2

    #@239
    .line 288
    const-string/jumbo v7, "Size: "

    #@23c
    .line 287
    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@23f
    move-result-object v2

    #@240
    .line 288
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@243
    move-result-object v7

    #@244
    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->size:F

    #@246
    const/4 v10, 0x2

    #@247
    .line 287
    invoke-virtual {v2, v7, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@24a
    move-result-object v2

    #@24b
    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    #@24e
    move-result-object v2

    #@24f
    .line 289
    mul-int/lit8 v7, v28, 0x6

    #@251
    add-int/lit8 v7, v7, 0x1

    #@253
    int-to-float v7, v7

    #@254
    move/from16 v0, v21

    #@256
    int-to-float v10, v0

    #@257
    move-object/from16 v0, p0

    #@259
    iget-object v11, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    #@25b
    .line 287
    move-object/from16 v0, p1

    #@25d
    invoke-virtual {v0, v2, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@260
    .line 293
    .end local v18    # "N":I
    .end local v34    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_2
    const/16 v31, 0x0

    #@262
    .local v31, "p":I
    :goto_1
    move/from16 v0, v31

    #@264
    move/from16 v1, v19

    #@266
    if-ge v0, v1, :cond_11

    #@268
    .line 294
    move-object/from16 v0, p0

    #@26a
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    #@26c
    move/from16 v0, v31

    #@26e
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@271
    move-result-object v34

    #@272
    check-cast v34, Lcom/android/internal/widget/PointerLocationView$PointerState;

    #@274
    .line 297
    .restart local v34    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get12(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    #@277
    move-result v18

    #@278
    .line 298
    .restart local v18    # "N":I
    const/4 v3, 0x0

    #@279
    .local v3, "lastX":F
    const/4 v4, 0x0

    #@27a
    .line 299
    .local v4, "lastY":F
    const/16 v26, 0x0

    #@27c
    .line 300
    .local v26, "haveLast":Z
    const/16 v23, 0x0

    #@27e
    .line 301
    .local v23, "drawn":Z
    move-object/from16 v0, p0

    #@280
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    #@282
    const/16 v7, 0xff

    #@284
    const/16 v10, 0x80

    #@286
    const/16 v11, 0xff

    #@288
    const/16 v12, 0xff

    #@28a
    invoke-virtual {v2, v7, v10, v11, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    #@28d
    .line 302
    const/16 v27, 0x0

    #@28f
    .local v27, "i":I
    :goto_2
    move/from16 v0, v27

    #@291
    move/from16 v1, v18

    #@293
    if-ge v0, v1, :cond_9

    #@295
    .line 303
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get14(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    #@298
    move-result-object v2

    #@299
    aget v5, v2, v27

    #@29b
    .line 304
    .local v5, "x":F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get15(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    #@29e
    move-result-object v2

    #@29f
    aget v6, v2, v27

    #@2a1
    .line 305
    .local v6, "y":F
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    #@2a4
    move-result v2

    #@2a5
    if-eqz v2, :cond_6

    #@2a7
    .line 306
    const/16 v26, 0x0

    #@2a9
    .line 302
    :goto_3
    add-int/lit8 v27, v27, 0x1

    #@2ab
    goto :goto_2

    #@2ac
    .line 251
    .end local v3    # "lastX":F
    .end local v4    # "lastY":F
    .end local v5    # "x":F
    .end local v6    # "y":F
    .end local v23    # "drawn":Z
    .end local v26    # "haveLast":Z
    .end local v27    # "i":I
    .end local v31    # "p":I
    :cond_3
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get14(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    #@2af
    move-result-object v2

    #@2b0
    add-int/lit8 v7, v18, -0x1

    #@2b2
    aget v2, v2, v7

    #@2b4
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get14(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    #@2b7
    move-result-object v7

    #@2b8
    const/4 v10, 0x0

    #@2b9
    aget v7, v7, v10

    #@2bb
    sub-float v24, v2, v7

    #@2bd
    .line 252
    .local v24, "dx":F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get15(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    #@2c0
    move-result-object v2

    #@2c1
    add-int/lit8 v7, v18, -0x1

    #@2c3
    aget v2, v2, v7

    #@2c5
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get15(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    #@2c8
    move-result-object v7

    #@2c9
    const/4 v10, 0x0

    #@2ca
    aget v7, v7, v10

    #@2cc
    sub-float v25, v2, v7

    #@2ce
    .line 253
    .local v25, "dy":F
    move/from16 v0, v28

    #@2d0
    int-to-float v3, v0

    #@2d1
    const/4 v4, 0x0

    #@2d2
    mul-int/lit8 v2, v28, 0x2

    #@2d4
    add-int/lit8 v2, v2, -0x1

    #@2d6
    int-to-float v5, v2

    #@2d7
    move/from16 v0, v22

    #@2d9
    int-to-float v6, v0

    #@2da
    .line 254
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    #@2dd
    move-result v2

    #@2de
    move-object/from16 v0, p0

    #@2e0
    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mVC:Landroid/view/ViewConfiguration;

    #@2e2
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@2e5
    move-result v7

    #@2e6
    int-to-float v7, v7

    #@2e7
    cmpg-float v2, v2, v7

    #@2e9
    if-gez v2, :cond_4

    #@2eb
    .line 255
    move-object/from16 v0, p0

    #@2ed
    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    #@2ef
    :goto_4
    move-object/from16 v2, p1

    #@2f1
    .line 253
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@2f4
    .line 256
    move-object/from16 v0, p0

    #@2f6
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@2f8
    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@2fb
    move-result-object v2

    #@2fc
    .line 257
    const-string/jumbo v7, "dX: "

    #@2ff
    .line 256
    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@302
    move-result-object v2

    #@303
    .line 257
    const/4 v7, 0x1

    #@304
    .line 256
    move/from16 v0, v24

    #@306
    invoke-virtual {v2, v0, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@309
    move-result-object v2

    #@30a
    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    #@30d
    move-result-object v2

    #@30e
    .line 258
    add-int/lit8 v7, v28, 0x1

    #@310
    int-to-float v7, v7

    #@311
    move/from16 v0, v21

    #@313
    int-to-float v10, v0

    #@314
    move-object/from16 v0, p0

    #@316
    iget-object v11, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    #@318
    .line 256
    move-object/from16 v0, p1

    #@31a
    invoke-virtual {v0, v2, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@31d
    .line 259
    mul-int/lit8 v2, v28, 0x2

    #@31f
    int-to-float v3, v2

    #@320
    const/4 v4, 0x0

    #@321
    mul-int/lit8 v2, v28, 0x3

    #@323
    add-int/lit8 v2, v2, -0x1

    #@325
    int-to-float v5, v2

    #@326
    move/from16 v0, v22

    #@328
    int-to-float v6, v0

    #@329
    .line 260
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    #@32c
    move-result v2

    #@32d
    move-object/from16 v0, p0

    #@32f
    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mVC:Landroid/view/ViewConfiguration;

    #@331
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@334
    move-result v7

    #@335
    int-to-float v7, v7

    #@336
    cmpg-float v2, v2, v7

    #@338
    if-gez v2, :cond_5

    #@33a
    .line 261
    move-object/from16 v0, p0

    #@33c
    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    #@33e
    :goto_5
    move-object/from16 v2, p1

    #@340
    .line 259
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@343
    .line 262
    move-object/from16 v0, p0

    #@345
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@347
    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@34a
    move-result-object v2

    #@34b
    .line 263
    const-string/jumbo v7, "dY: "

    #@34e
    .line 262
    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@351
    move-result-object v2

    #@352
    .line 263
    const/4 v7, 0x1

    #@353
    .line 262
    move/from16 v0, v25

    #@355
    invoke-virtual {v2, v0, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    #@358
    move-result-object v2

    #@359
    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    #@35c
    move-result-object v2

    #@35d
    .line 264
    mul-int/lit8 v7, v28, 0x2

    #@35f
    add-int/lit8 v7, v7, 0x1

    #@361
    int-to-float v7, v7

    #@362
    move/from16 v0, v21

    #@364
    int-to-float v10, v0

    #@365
    move-object/from16 v0, p0

    #@367
    iget-object v11, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    #@369
    .line 262
    move-object/from16 v0, p1

    #@36b
    invoke-virtual {v0, v2, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@36e
    goto/16 :goto_0

    #@370
    .line 255
    :cond_4
    move-object/from16 v0, p0

    #@372
    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    #@374
    goto/16 :goto_4

    #@376
    .line 261
    :cond_5
    move-object/from16 v0, p0

    #@378
    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    #@37a
    goto :goto_5

    #@37b
    .line 309
    .end local v24    # "dx":F
    .end local v25    # "dy":F
    .restart local v3    # "lastX":F
    .restart local v4    # "lastY":F
    .restart local v5    # "x":F
    .restart local v6    # "y":F
    .restart local v23    # "drawn":Z
    .restart local v26    # "haveLast":Z
    .restart local v27    # "i":I
    .restart local v31    # "p":I
    :cond_6
    if-eqz v26, :cond_7

    #@37d
    .line 310
    move-object/from16 v0, p0

    #@37f
    iget-object v7, v0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    #@381
    move-object/from16 v2, p1

    #@383
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@386
    .line 311
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get13(Lcom/android/internal/widget/PointerLocationView$PointerState;)[Z

    #@389
    move-result-object v2

    #@38a
    aget-boolean v2, v2, v27

    #@38c
    if-eqz v2, :cond_8

    #@38e
    move-object/from16 v0, p0

    #@390
    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    #@392
    move-object/from16 v32, v0

    #@394
    .line 312
    .local v32, "paint":Landroid/graphics/Paint;
    :goto_6
    move-object/from16 v0, p1

    #@396
    move-object/from16 v1, v32

    #@398
    invoke-virtual {v0, v3, v4, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    #@39b
    .line 313
    const/16 v23, 0x1

    #@39d
    .line 315
    .end local v32    # "paint":Landroid/graphics/Paint;
    :cond_7
    move v3, v5

    #@39e
    .line 316
    move v4, v6

    #@39f
    .line 317
    const/16 v26, 0x1

    #@3a1
    goto/16 :goto_3

    #@3a3
    .line 311
    :cond_8
    move-object/from16 v0, p0

    #@3a5
    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    #@3a7
    move-object/from16 v32, v0

    #@3a9
    .restart local v32    # "paint":Landroid/graphics/Paint;
    goto :goto_6

    #@3aa
    .line 320
    .end local v5    # "x":F
    .end local v6    # "y":F
    .end local v32    # "paint":Landroid/graphics/Paint;
    :cond_9
    if-eqz v23, :cond_c

    #@3ac
    .line 322
    move-object/from16 v0, p0

    #@3ae
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    #@3b0
    const/16 v7, 0x80

    #@3b2
    const/16 v10, 0x80

    #@3b4
    const/4 v11, 0x0

    #@3b5
    const/16 v12, 0x80

    #@3b7
    invoke-virtual {v2, v7, v10, v11, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    #@3ba
    .line 323
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get9(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    #@3bd
    move-result-object v2

    #@3be
    const v7, -0x425c28f6    # -0.08f

    #@3c1
    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker$Estimator;->estimateX(F)F

    #@3c4
    move-result v8

    #@3c5
    .line 324
    .local v8, "lx":F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get9(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    #@3c8
    move-result-object v2

    #@3c9
    const v7, -0x425c28f6    # -0.08f

    #@3cc
    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker$Estimator;->estimateY(F)F

    #@3cf
    move-result v9

    #@3d0
    .line 325
    .local v9, "ly":F
    const/16 v27, -0x3

    #@3d2
    :goto_7
    const/4 v2, 0x2

    #@3d3
    move/from16 v0, v27

    #@3d5
    if-gt v0, v2, :cond_a

    #@3d7
    .line 326
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get9(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    #@3da
    move-result-object v2

    #@3db
    move/from16 v0, v27

    #@3dd
    int-to-float v7, v0

    #@3de
    const v10, 0x3ca3d70a    # 0.02f

    #@3e1
    mul-float/2addr v7, v10

    #@3e2
    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker$Estimator;->estimateX(F)F

    #@3e5
    move-result v5

    #@3e6
    .line 327
    .restart local v5    # "x":F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get9(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    #@3e9
    move-result-object v2

    #@3ea
    move/from16 v0, v27

    #@3ec
    int-to-float v7, v0

    #@3ed
    const v10, 0x3ca3d70a    # 0.02f

    #@3f0
    mul-float/2addr v7, v10

    #@3f1
    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker$Estimator;->estimateY(F)F

    #@3f4
    move-result v6

    #@3f5
    .line 328
    .restart local v6    # "y":F
    move-object/from16 v0, p0

    #@3f7
    iget-object v12, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    #@3f9
    move-object/from16 v7, p1

    #@3fb
    move v10, v5

    #@3fc
    move v11, v6

    #@3fd
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@400
    .line 329
    move v8, v5

    #@401
    .line 330
    move v9, v6

    #@402
    .line 325
    add-int/lit8 v27, v27, 0x1

    #@404
    goto :goto_7

    #@405
    .line 334
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_a
    move-object/from16 v0, p0

    #@407
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    #@409
    const/16 v7, 0xff

    #@40b
    const/16 v10, 0xff

    #@40d
    const/16 v11, 0x40

    #@40f
    const/16 v12, 0x80

    #@411
    invoke-virtual {v2, v7, v10, v11, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    #@414
    .line 335
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get16(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    #@417
    move-result v2

    #@418
    const/high16 v7, 0x41800000    # 16.0f

    #@41a
    mul-float v37, v2, v7

    #@41c
    .line 336
    .local v37, "xVel":F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get17(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    #@41f
    move-result v2

    #@420
    const/high16 v7, 0x41800000    # 16.0f

    #@422
    mul-float v38, v2, v7

    #@424
    .line 337
    .local v38, "yVel":F
    add-float v13, v3, v37

    #@426
    add-float v14, v4, v38

    #@428
    move-object/from16 v0, p0

    #@42a
    iget-object v15, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    #@42c
    move-object/from16 v10, p1

    #@42e
    move v11, v3

    #@42f
    move v12, v4

    #@430
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@433
    .line 340
    move-object/from16 v0, p0

    #@435
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    #@437
    if-eqz v2, :cond_c

    #@439
    .line 341
    move-object/from16 v0, p0

    #@43b
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    #@43d
    const/16 v7, 0x80

    #@43f
    const/4 v10, 0x0

    #@440
    const/16 v11, 0x80

    #@442
    const/16 v12, 0x80

    #@444
    invoke-virtual {v2, v7, v10, v11, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    #@447
    .line 342
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get0(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    #@44a
    move-result-object v2

    #@44b
    const v7, -0x425c28f6    # -0.08f

    #@44e
    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker$Estimator;->estimateX(F)F

    #@451
    move-result v8

    #@452
    .line 343
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get0(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    #@455
    move-result-object v2

    #@456
    const v7, -0x425c28f6    # -0.08f

    #@459
    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker$Estimator;->estimateY(F)F

    #@45c
    move-result v9

    #@45d
    .line 344
    const/16 v27, -0x3

    #@45f
    :goto_8
    const/4 v2, 0x2

    #@460
    move/from16 v0, v27

    #@462
    if-gt v0, v2, :cond_b

    #@464
    .line 345
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get0(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    #@467
    move-result-object v2

    #@468
    move/from16 v0, v27

    #@46a
    int-to-float v7, v0

    #@46b
    const v10, 0x3ca3d70a    # 0.02f

    #@46e
    mul-float/2addr v7, v10

    #@46f
    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker$Estimator;->estimateX(F)F

    #@472
    move-result v5

    #@473
    .line 346
    .restart local v5    # "x":F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get0(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    #@476
    move-result-object v2

    #@477
    move/from16 v0, v27

    #@479
    int-to-float v7, v0

    #@47a
    const v10, 0x3ca3d70a    # 0.02f

    #@47d
    mul-float/2addr v7, v10

    #@47e
    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker$Estimator;->estimateY(F)F

    #@481
    move-result v6

    #@482
    .line 347
    .restart local v6    # "y":F
    move-object/from16 v0, p0

    #@484
    iget-object v12, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    #@486
    move-object/from16 v7, p1

    #@488
    move v10, v5

    #@489
    move v11, v6

    #@48a
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@48d
    .line 348
    move v8, v5

    #@48e
    .line 349
    move v9, v6

    #@48f
    .line 344
    add-int/lit8 v27, v27, 0x1

    #@491
    goto :goto_8

    #@492
    .line 352
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_b
    move-object/from16 v0, p0

    #@494
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    #@496
    const/16 v7, 0xff

    #@498
    const/16 v10, 0x40

    #@49a
    const/16 v11, 0xff

    #@49c
    const/16 v12, 0x80

    #@49e
    invoke-virtual {v2, v7, v10, v11, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    #@4a1
    .line 353
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get1(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    #@4a4
    move-result v2

    #@4a5
    const/high16 v7, 0x41800000    # 16.0f

    #@4a7
    mul-float v37, v2, v7

    #@4a9
    .line 354
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get2(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    #@4ac
    move-result v2

    #@4ad
    const/high16 v7, 0x41800000    # 16.0f

    #@4af
    mul-float v38, v2, v7

    #@4b1
    .line 355
    add-float v13, v3, v37

    #@4b3
    add-float v14, v4, v38

    #@4b5
    move-object/from16 v0, p0

    #@4b7
    iget-object v15, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    #@4b9
    move-object/from16 v10, p1

    #@4bb
    move v11, v3

    #@4bc
    move v12, v4

    #@4bd
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@4c0
    .line 359
    .end local v8    # "lx":F
    .end local v9    # "ly":F
    .end local v37    # "xVel":F
    .end local v38    # "yVel":F
    :cond_c
    move-object/from16 v0, p0

    #@4c2
    iget-boolean v2, v0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    #@4c4
    if-eqz v2, :cond_f

    #@4c6
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get8(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    #@4c9
    move-result v2

    #@4ca
    if-eqz v2, :cond_f

    #@4cc
    .line 361
    const/4 v11, 0x0

    #@4cd
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@4d0
    move-result-object v2

    #@4d1
    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@4d3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/PointerLocationView;->getWidth()I

    #@4d6
    move-result v2

    #@4d7
    int-to-float v13, v2

    #@4d8
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@4db
    move-result-object v2

    #@4dc
    iget v14, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@4de
    move-object/from16 v0, p0

    #@4e0
    iget-object v15, v0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    #@4e2
    move-object/from16 v10, p1

    #@4e4
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@4e7
    .line 362
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@4ea
    move-result-object v2

    #@4eb
    iget v11, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@4ed
    const/4 v12, 0x0

    #@4ee
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@4f1
    move-result-object v2

    #@4f2
    iget v13, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@4f4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/PointerLocationView;->getHeight()I

    #@4f7
    move-result v2

    #@4f8
    int-to-float v14, v2

    #@4f9
    move-object/from16 v0, p0

    #@4fb
    iget-object v15, v0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    #@4fd
    move-object/from16 v10, p1

    #@4ff
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@502
    .line 365
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@505
    move-result-object v2

    #@506
    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    #@508
    const/high16 v7, 0x437f0000    # 255.0f

    #@50a
    mul-float/2addr v2, v7

    #@50b
    float-to-int v0, v2

    #@50c
    move/from16 v33, v0

    #@50e
    .line 366
    .local v33, "pressureLevel":I
    move-object/from16 v0, p0

    #@510
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    #@512
    move/from16 v0, v33

    #@514
    rsub-int v7, v0, 0xff

    #@516
    const/16 v10, 0xff

    #@518
    const/16 v11, 0xff

    #@51a
    move/from16 v0, v33

    #@51c
    invoke-virtual {v2, v10, v0, v11, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    #@51f
    .line 367
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@522
    move-result-object v2

    #@523
    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@525
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@528
    move-result-object v7

    #@529
    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@52b
    move-object/from16 v0, p0

    #@52d
    iget-object v10, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    #@52f
    move-object/from16 v0, p1

    #@531
    invoke-virtual {v0, v2, v7, v10}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    #@534
    .line 370
    move-object/from16 v0, p0

    #@536
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    #@538
    move/from16 v0, v33

    #@53a
    rsub-int v7, v0, 0xff

    #@53c
    const/16 v10, 0xff

    #@53e
    const/16 v11, 0x80

    #@540
    move/from16 v0, v33

    #@542
    invoke-virtual {v2, v10, v0, v7, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    #@545
    .line 371
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@548
    move-result-object v2

    #@549
    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@54b
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@54e
    move-result-object v2

    #@54f
    iget v13, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@551
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@554
    move-result-object v2

    #@555
    iget v14, v2, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    #@557
    .line 372
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@55a
    move-result-object v2

    #@55b
    iget v15, v2, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    #@55d
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@560
    move-result-object v2

    #@561
    iget v0, v2, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    #@563
    move/from16 v16, v0

    #@565
    move-object/from16 v0, p0

    #@567
    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    #@569
    move-object/from16 v17, v0

    #@56b
    move-object/from16 v10, p0

    #@56d
    move-object/from16 v11, p1

    #@56f
    .line 371
    invoke-direct/range {v10 .. v17}, Lcom/android/internal/widget/PointerLocationView;->drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    #@572
    .line 375
    move-object/from16 v0, p0

    #@574
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    #@576
    move/from16 v0, v33

    #@578
    rsub-int v7, v0, 0xff

    #@57a
    const/16 v10, 0xff

    #@57c
    const/16 v11, 0x80

    #@57e
    move/from16 v0, v33

    #@580
    invoke-virtual {v2, v10, v0, v11, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    #@583
    .line 376
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@586
    move-result-object v2

    #@587
    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@589
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@58c
    move-result-object v2

    #@58d
    iget v13, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@58f
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@592
    move-result-object v2

    #@593
    iget v14, v2, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    #@595
    .line 377
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@598
    move-result-object v2

    #@599
    iget v15, v2, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    #@59b
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@59e
    move-result-object v2

    #@59f
    iget v0, v2, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    #@5a1
    move/from16 v16, v0

    #@5a3
    move-object/from16 v0, p0

    #@5a5
    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    #@5a7
    move-object/from16 v17, v0

    #@5a9
    move-object/from16 v10, p0

    #@5ab
    move-object/from16 v11, p1

    #@5ad
    .line 376
    invoke-direct/range {v10 .. v17}, Lcom/android/internal/widget/PointerLocationView;->drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    #@5b0
    .line 380
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@5b3
    move-result-object v2

    #@5b4
    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    #@5b6
    const v7, 0x3f333333    # 0.7f

    #@5b9
    mul-float v20, v2, v7

    #@5bb
    .line 381
    .local v20, "arrowSize":F
    const/high16 v2, 0x41a00000    # 20.0f

    #@5bd
    cmpg-float v2, v20, v2

    #@5bf
    if-gez v2, :cond_d

    #@5c1
    .line 382
    const/high16 v20, 0x41a00000    # 20.0f

    #@5c3
    .line 384
    :cond_d
    move-object/from16 v0, p0

    #@5c5
    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    #@5c7
    const/16 v7, 0xff

    #@5c9
    const/16 v10, 0xff

    #@5cb
    const/4 v11, 0x0

    #@5cc
    move/from16 v0, v33

    #@5ce
    invoke-virtual {v2, v7, v0, v10, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    #@5d1
    .line 385
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@5d4
    move-result-object v2

    #@5d5
    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    #@5d7
    float-to-double v10, v2

    #@5d8
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    #@5db
    move-result-wide v10

    #@5dc
    .line 386
    move/from16 v0, v20

    #@5de
    float-to-double v12, v0

    #@5df
    .line 385
    mul-double/2addr v10, v12

    #@5e0
    double-to-float v0, v10

    #@5e1
    move/from16 v29, v0

    #@5e3
    .line 387
    .local v29, "orientationVectorX":F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@5e6
    move-result-object v2

    #@5e7
    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    #@5e9
    float-to-double v10, v2

    #@5ea
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    #@5ed
    move-result-wide v10

    #@5ee
    neg-double v10, v10

    #@5ef
    .line 388
    move/from16 v0, v20

    #@5f1
    float-to-double v12, v0

    #@5f2
    .line 387
    mul-double/2addr v10, v12

    #@5f3
    double-to-float v0, v10

    #@5f4
    move/from16 v30, v0

    #@5f6
    .line 389
    .local v30, "orientationVectorY":F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get11(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    #@5f9
    move-result v2

    #@5fa
    const/4 v7, 0x2

    #@5fb
    if-eq v2, v7, :cond_e

    #@5fd
    .line 390
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get11(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    #@600
    move-result v2

    #@601
    const/4 v7, 0x4

    #@602
    if-ne v2, v7, :cond_10

    #@604
    .line 392
    :cond_e
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@607
    move-result-object v2

    #@608
    iget v11, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@60a
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@60d
    move-result-object v2

    #@60e
    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@610
    .line 393
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@613
    move-result-object v2

    #@614
    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@616
    add-float v13, v2, v29

    #@618
    .line 394
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@61b
    move-result-object v2

    #@61c
    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@61e
    add-float v14, v2, v30

    #@620
    .line 395
    move-object/from16 v0, p0

    #@622
    iget-object v15, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    #@624
    move-object/from16 v10, p1

    #@626
    .line 392
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@629
    .line 408
    :goto_9
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@62c
    move-result-object v2

    #@62d
    const/16 v7, 0x19

    #@62f
    invoke-virtual {v2, v7}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    #@632
    move-result v2

    #@633
    float-to-double v10, v2

    #@634
    .line 407
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    #@637
    move-result-wide v10

    #@638
    double-to-float v0, v10

    #@639
    move/from16 v35, v0

    #@63b
    .line 410
    .local v35, "tiltScale":F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@63e
    move-result-object v2

    #@63f
    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@641
    mul-float v7, v29, v35

    #@643
    add-float/2addr v2, v7

    #@644
    .line 411
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@647
    move-result-object v7

    #@648
    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@64a
    mul-float v10, v30, v35

    #@64c
    add-float/2addr v7, v10

    #@64d
    .line 412
    move-object/from16 v0, p0

    #@64f
    iget-object v10, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    #@651
    const/high16 v11, 0x40400000    # 3.0f

    #@653
    .line 409
    move-object/from16 v0, p1

    #@655
    invoke-virtual {v0, v2, v7, v11, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@658
    .line 415
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get10(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    #@65b
    move-result v2

    #@65c
    if-eqz v2, :cond_f

    #@65e
    .line 416
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get4(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    #@661
    move-result v11

    #@662
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get6(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    #@665
    move-result v12

    #@666
    .line 417
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get5(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    #@669
    move-result v13

    #@66a
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get3(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    #@66d
    move-result v14

    #@66e
    move-object/from16 v0, p0

    #@670
    iget-object v15, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    #@672
    move-object/from16 v10, p1

    #@674
    .line 416
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@677
    .line 293
    .end local v20    # "arrowSize":F
    .end local v29    # "orientationVectorX":F
    .end local v30    # "orientationVectorY":F
    .end local v33    # "pressureLevel":I
    .end local v35    # "tiltScale":F
    :cond_f
    add-int/lit8 v31, v31, 0x1

    #@679
    goto/16 :goto_1

    #@67b
    .line 399
    .restart local v20    # "arrowSize":F
    .restart local v29    # "orientationVectorX":F
    .restart local v30    # "orientationVectorY":F
    .restart local v33    # "pressureLevel":I
    :cond_10
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@67e
    move-result-object v2

    #@67f
    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@681
    sub-float v11, v2, v29

    #@683
    .line 400
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@686
    move-result-object v2

    #@687
    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@689
    sub-float v12, v2, v30

    #@68b
    .line 401
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@68e
    move-result-object v2

    #@68f
    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@691
    add-float v13, v2, v29

    #@693
    .line 402
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@696
    move-result-object v2

    #@697
    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@699
    add-float v14, v2, v30

    #@69b
    .line 403
    move-object/from16 v0, p0

    #@69d
    iget-object v15, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    #@69f
    move-object/from16 v10, p1

    #@6a1
    .line 398
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@6a4
    goto :goto_9

    #@6a5
    .line 222
    .end local v3    # "lastX":F
    .end local v4    # "lastY":F
    .end local v18    # "N":I
    .end local v20    # "arrowSize":F
    .end local v23    # "drawn":Z
    .end local v26    # "haveLast":Z
    .end local v27    # "i":I
    .end local v29    # "orientationVectorX":F
    .end local v30    # "orientationVectorY":F
    .end local v33    # "pressureLevel":I
    .end local v34    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_11
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 664
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    #@3
    move-result v0

    #@4
    .line 665
    .local v0, "source":I
    and-int/lit8 v1, v0, 0x2

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 666
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/PointerLocationView;->onPointerEvent(Landroid/view/MotionEvent;)V

    #@b
    .line 674
    :goto_0
    const/4 v1, 0x1

    #@c
    return v1

    #@d
    .line 667
    :cond_0
    and-int/lit8 v1, v0, 0x10

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 668
    const-string/jumbo v1, "Joystick"

    #@14
    invoke-direct {p0, v1, p1}, Lcom/android/internal/widget/PointerLocationView;->logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    #@17
    goto :goto_0

    #@18
    .line 669
    :cond_1
    and-int/lit8 v1, v0, 0x8

    #@1a
    if-eqz v1, :cond_2

    #@1c
    .line 670
    const-string/jumbo v1, "Position"

    #@1f
    invoke-direct {p0, v1, p1}, Lcom/android/internal/widget/PointerLocationView;->logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    #@22
    goto :goto_0

    #@23
    .line 672
    :cond_2
    const-string/jumbo v1, "Generic"

    #@26
    invoke-direct {p0, v1, p1}, Lcom/android/internal/widget/PointerLocationView;->logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    #@29
    goto :goto_0
.end method

.method public onInputDeviceAdded(I)V
    .locals 1
    .param p1, "deviceId"    # I

    #@0
    .prologue
    .line 737
    const-string/jumbo v0, "Device Added"

    #@3
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceState(ILjava/lang/String;)V

    #@6
    .line 736
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 1
    .param p1, "deviceId"    # I

    #@0
    .prologue
    .line 742
    const-string/jumbo v0, "Device Changed"

    #@3
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceState(ILjava/lang/String;)V

    #@6
    .line 741
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1
    .param p1, "deviceId"    # I

    #@0
    .prologue
    .line 747
    const-string/jumbo v0, "Device Removed"

    #@3
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceState(ILjava/lang/String;)V

    #@6
    .line 746
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 679
    invoke-static {p1}, Lcom/android/internal/widget/PointerLocationView;->shouldLogKey(I)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 680
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@9
    move-result v0

    #@a
    .line 681
    .local v0, "repeatCount":I
    if-nez v0, :cond_0

    #@c
    .line 682
    const-string/jumbo v1, "Pointer"

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "Key Down: "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 686
    :goto_0
    const/4 v1, 0x1

    #@27
    return v1

    #@28
    .line 684
    :cond_0
    const-string/jumbo v1, "Pointer"

    #@2b
    new-instance v2, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v3, "Key Repeat #"

    #@33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    const-string/jumbo v3, ": "

    #@3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    goto :goto_0

    #@4e
    .line 688
    .end local v0    # "repeatCount":I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@51
    move-result v1

    #@52
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 693
    invoke-static {p1}, Lcom/android/internal/widget/PointerLocationView;->shouldLogKey(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 694
    const-string/jumbo v0, "Pointer"

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Key Up: "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 695
    const/4 v0, 0x1

    #@21
    return v0

    #@22
    .line 697
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@25
    move-result v0

    #@26
    return v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 194
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    #@3
    .line 195
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    #@5
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    #@7
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    #@a
    .line 196
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    #@c
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@e
    neg-int v0, v0

    #@f
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    #@11
    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@13
    add-int/2addr v0, v1

    #@14
    add-int/lit8 v0, v0, 0x2

    #@16
    iput v0, p0, Lcom/android/internal/widget/PointerLocationView;->mHeaderBottom:I

    #@18
    .line 193
    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 527
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    #@3
    move-result v3

    #@4
    .line 528
    .local v3, "action":I
    move-object/from16 v0, p0

    #@6
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v10

    #@c
    .line 530
    .local v10, "NP":I
    if-eqz v3, :cond_0

    #@e
    .line 531
    and-int/lit16 v1, v3, 0xff

    #@10
    const/4 v2, 0x5

    #@11
    if-ne v1, v2, :cond_5

    #@13
    .line 532
    :cond_0
    const v1, 0xff00

    #@16
    and-int/2addr v1, v3

    #@17
    shr-int/lit8 v13, v1, 0x8

    #@19
    .line 534
    .local v13, "index":I
    if-nez v3, :cond_2

    #@1b
    .line 535
    const/4 v14, 0x0

    #@1c
    .local v14, "p":I
    :goto_0
    if-ge v14, v10, :cond_1

    #@1e
    .line 536
    move-object/from16 v0, p0

    #@20
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v15

    #@26
    check-cast v15, Lcom/android/internal/widget/PointerLocationView$PointerState;

    #@28
    .line 537
    .local v15, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    invoke-virtual {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->clearTrace()V

    #@2b
    .line 538
    const/4 v1, 0x0

    #@2c
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-set6(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    #@2f
    .line 535
    add-int/lit8 v14, v14, 0x1

    #@31
    goto :goto_0

    #@32
    .line 540
    .end local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_1
    const/4 v1, 0x1

    #@33
    move-object/from16 v0, p0

    #@35
    iput-boolean v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    #@37
    .line 541
    const/4 v1, 0x0

    #@38
    move-object/from16 v0, p0

    #@3a
    iput v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    #@3c
    .line 542
    const/4 v1, 0x0

    #@3d
    move-object/from16 v0, p0

    #@3f
    iput v1, v0, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    #@41
    .line 543
    move-object/from16 v0, p0

    #@43
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    #@45
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    #@48
    .line 544
    move-object/from16 v0, p0

    #@4a
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    #@4c
    if-eqz v1, :cond_2

    #@4e
    .line 545
    move-object/from16 v0, p0

    #@50
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    #@52
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    #@55
    .line 549
    .end local v14    # "p":I
    :cond_2
    move-object/from16 v0, p0

    #@57
    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    #@59
    add-int/lit8 v1, v1, 0x1

    #@5b
    move-object/from16 v0, p0

    #@5d
    iput v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    #@5f
    .line 550
    move-object/from16 v0, p0

    #@61
    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    #@63
    move-object/from16 v0, p0

    #@65
    iget v2, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    #@67
    if-ge v1, v2, :cond_3

    #@69
    .line 551
    move-object/from16 v0, p0

    #@6b
    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    #@6d
    move-object/from16 v0, p0

    #@6f
    iput v1, v0, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    #@71
    .line 554
    :cond_3
    move-object/from16 v0, p1

    #@73
    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@76
    move-result v6

    #@77
    .line 555
    .local v6, "id":I
    :goto_1
    if-gt v10, v6, :cond_4

    #@79
    .line 556
    new-instance v15, Lcom/android/internal/widget/PointerLocationView$PointerState;

    #@7b
    invoke-direct {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;-><init>()V

    #@7e
    .line 557
    .restart local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    move-object/from16 v0, p0

    #@80
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    #@82
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@85
    .line 558
    add-int/lit8 v10, v10, 0x1

    #@87
    goto :goto_1

    #@88
    .line 561
    .end local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_4
    move-object/from16 v0, p0

    #@8a
    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    #@8c
    if-ltz v1, :cond_9

    #@8e
    .line 562
    move-object/from16 v0, p0

    #@90
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    #@92
    move-object/from16 v0, p0

    #@94
    iget v2, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    #@96
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@99
    move-result-object v1

    #@9a
    check-cast v1, Lcom/android/internal/widget/PointerLocationView$PointerState;

    #@9c
    invoke-static {v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get8(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    #@9f
    move-result v1

    #@a0
    if-eqz v1, :cond_9

    #@a2
    .line 566
    :goto_2
    move-object/from16 v0, p0

    #@a4
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    #@a6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a9
    move-result-object v15

    #@aa
    check-cast v15, Lcom/android/internal/widget/PointerLocationView$PointerState;

    #@ac
    .line 567
    .restart local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    const/4 v1, 0x1

    #@ad
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-set6(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    #@b0
    .line 568
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    #@b3
    move-result v1

    #@b4
    invoke-static {v1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    #@b7
    move-result-object v11

    #@b8
    .line 569
    .local v11, "device":Landroid/view/InputDevice;
    if-eqz v11, :cond_b

    #@ba
    .line 570
    const/16 v1, 0x20

    #@bc
    invoke-virtual {v11, v1}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    #@bf
    move-result-object v1

    #@c0
    if-eqz v1, :cond_a

    #@c2
    const/4 v1, 0x1

    #@c3
    .line 569
    :goto_3
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-set7(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    #@c6
    .line 573
    .end local v6    # "id":I
    .end local v11    # "device":Landroid/view/InputDevice;
    .end local v13    # "index":I
    .end local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@c9
    move-result v9

    #@ca
    .line 575
    .local v9, "NI":I
    move-object/from16 v0, p0

    #@cc
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    #@ce
    move-object/from16 v0, p1

    #@d0
    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@d3
    .line 576
    move-object/from16 v0, p0

    #@d5
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    #@d7
    const/4 v2, 0x1

    #@d8
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    #@db
    .line 577
    move-object/from16 v0, p0

    #@dd
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    #@df
    if-eqz v1, :cond_6

    #@e1
    .line 578
    move-object/from16 v0, p0

    #@e3
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    #@e5
    move-object/from16 v0, p1

    #@e7
    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@ea
    .line 579
    move-object/from16 v0, p0

    #@ec
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    #@ee
    const/4 v2, 0x1

    #@ef
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    #@f2
    .line 582
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    #@f5
    move-result v8

    #@f6
    .line 583
    .local v8, "N":I
    const/4 v12, 0x0

    #@f7
    .local v12, "historyPos":I
    :goto_4
    if-ge v12, v8, :cond_f

    #@f9
    .line 584
    const/4 v4, 0x0

    #@fa
    .local v4, "i":I
    :goto_5
    if-ge v4, v9, :cond_e

    #@fc
    .line 585
    move-object/from16 v0, p1

    #@fe
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@101
    move-result v6

    #@102
    .line 586
    .restart local v6    # "id":I
    move-object/from16 v0, p0

    #@104
    iget-boolean v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    #@106
    if-eqz v1, :cond_c

    #@108
    move-object/from16 v0, p0

    #@10a
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    #@10c
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10f
    move-result-object v15

    #@110
    check-cast v15, Lcom/android/internal/widget/PointerLocationView$PointerState;

    #@112
    .line 587
    :goto_6
    if-eqz v15, :cond_d

    #@114
    invoke-static {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@117
    move-result-object v5

    #@118
    .line 588
    .local v5, "coords":Landroid/view/MotionEvent$PointerCoords;
    :goto_7
    move-object/from16 v0, p1

    #@11a
    invoke-virtual {v0, v4, v12, v5}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    #@11d
    .line 589
    move-object/from16 v0, p0

    #@11f
    iget-boolean v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    #@121
    if-eqz v1, :cond_7

    #@123
    .line 590
    const-string/jumbo v2, "Pointer"

    #@126
    move-object/from16 v1, p0

    #@128
    move-object/from16 v7, p1

    #@12a
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/widget/PointerLocationView;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    #@12d
    .line 592
    :cond_7
    if-eqz v15, :cond_8

    #@12f
    .line 593
    iget v1, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@131
    iget v2, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@133
    const/4 v7, 0x0

    #@134
    invoke-virtual {v15, v1, v2, v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->addTrace(FFZ)V

    #@137
    .line 584
    :cond_8
    add-int/lit8 v4, v4, 0x1

    #@139
    goto :goto_5

    #@13a
    .line 563
    .end local v4    # "i":I
    .end local v5    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .end local v8    # "N":I
    .end local v9    # "NI":I
    .end local v12    # "historyPos":I
    .restart local v13    # "index":I
    :cond_9
    move-object/from16 v0, p0

    #@13c
    iput v6, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    #@13e
    goto/16 :goto_2

    #@140
    .line 570
    .restart local v11    # "device":Landroid/view/InputDevice;
    .restart local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_a
    const/4 v1, 0x0

    #@141
    goto :goto_3

    #@142
    .line 569
    :cond_b
    const/4 v1, 0x0

    #@143
    goto :goto_3

    #@144
    .line 586
    .end local v11    # "device":Landroid/view/InputDevice;
    .end local v13    # "index":I
    .end local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    .restart local v4    # "i":I
    .restart local v8    # "N":I
    .restart local v9    # "NI":I
    .restart local v12    # "historyPos":I
    :cond_c
    const/4 v15, 0x0

    #@145
    .local v15, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    goto :goto_6

    #@146
    .line 587
    .end local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_d
    move-object/from16 v0, p0

    #@148
    iget-object v5, v0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    #@14a
    .restart local v5    # "coords":Landroid/view/MotionEvent$PointerCoords;
    goto :goto_7

    #@14b
    .line 583
    .end local v5    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .end local v6    # "id":I
    :cond_e
    add-int/lit8 v12, v12, 0x1

    #@14d
    goto :goto_4

    #@14e
    .line 597
    .end local v4    # "i":I
    :cond_f
    const/4 v4, 0x0

    #@14f
    .restart local v4    # "i":I
    :goto_8
    if-ge v4, v9, :cond_15

    #@151
    .line 598
    move-object/from16 v0, p1

    #@153
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@156
    move-result v6

    #@157
    .line 599
    .restart local v6    # "id":I
    move-object/from16 v0, p0

    #@159
    iget-boolean v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    #@15b
    if-eqz v1, :cond_13

    #@15d
    move-object/from16 v0, p0

    #@15f
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    #@161
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@164
    move-result-object v15

    #@165
    check-cast v15, Lcom/android/internal/widget/PointerLocationView$PointerState;

    #@167
    .line 600
    :goto_9
    if-eqz v15, :cond_14

    #@169
    invoke-static {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get7(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    #@16c
    move-result-object v5

    #@16d
    .line 601
    .restart local v5    # "coords":Landroid/view/MotionEvent$PointerCoords;
    :goto_a
    move-object/from16 v0, p1

    #@16f
    invoke-virtual {v0, v4, v5}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    #@172
    .line 602
    move-object/from16 v0, p0

    #@174
    iget-boolean v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    #@176
    if-eqz v1, :cond_10

    #@178
    .line 603
    const-string/jumbo v2, "Pointer"

    #@17b
    move-object/from16 v1, p0

    #@17d
    move-object/from16 v7, p1

    #@17f
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/widget/PointerLocationView;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    #@182
    .line 605
    :cond_10
    if-eqz v15, :cond_12

    #@184
    .line 606
    iget v1, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@186
    iget v2, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@188
    const/4 v7, 0x1

    #@189
    invoke-virtual {v15, v1, v2, v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->addTrace(FFZ)V

    #@18c
    .line 607
    move-object/from16 v0, p0

    #@18e
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    #@190
    invoke-virtual {v1, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    #@193
    move-result v1

    #@194
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-set9(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    #@197
    .line 608
    move-object/from16 v0, p0

    #@199
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    #@19b
    invoke-virtual {v1, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    #@19e
    move-result v1

    #@19f
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-set10(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    #@1a2
    .line 609
    move-object/from16 v0, p0

    #@1a4
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    #@1a6
    invoke-static {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get9(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    #@1a9
    move-result-object v2

    #@1aa
    invoke-virtual {v1, v6, v2}, Landroid/view/VelocityTracker;->getEstimator(ILandroid/view/VelocityTracker$Estimator;)Z

    #@1ad
    .line 610
    move-object/from16 v0, p0

    #@1af
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    #@1b1
    if-eqz v1, :cond_11

    #@1b3
    .line 611
    move-object/from16 v0, p0

    #@1b5
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    #@1b7
    invoke-virtual {v1, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    #@1ba
    move-result v1

    #@1bb
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-set0(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    #@1be
    .line 612
    move-object/from16 v0, p0

    #@1c0
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    #@1c2
    invoke-virtual {v1, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    #@1c5
    move-result v1

    #@1c6
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-set1(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    #@1c9
    .line 613
    move-object/from16 v0, p0

    #@1cb
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    #@1cd
    invoke-static {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get0(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    #@1d0
    move-result-object v2

    #@1d1
    invoke-virtual {v1, v6, v2}, Landroid/view/VelocityTracker;->getEstimator(ILandroid/view/VelocityTracker$Estimator;)Z

    #@1d4
    .line 615
    :cond_11
    move-object/from16 v0, p1

    #@1d6
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    #@1d9
    move-result v1

    #@1da
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-set8(Lcom/android/internal/widget/PointerLocationView$PointerState;I)I

    #@1dd
    .line 617
    invoke-static {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-get10(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    #@1e0
    move-result v1

    #@1e1
    if-eqz v1, :cond_12

    #@1e3
    .line 618
    const/16 v1, 0x20

    #@1e5
    move-object/from16 v0, p1

    #@1e7
    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getAxisValue(II)F

    #@1ea
    move-result v1

    #@1eb
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-set3(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    #@1ee
    .line 619
    const/16 v1, 0x21

    #@1f0
    move-object/from16 v0, p1

    #@1f2
    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getAxisValue(II)F

    #@1f5
    move-result v1

    #@1f6
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-set5(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    #@1f9
    .line 620
    const/16 v1, 0x22

    #@1fb
    move-object/from16 v0, p1

    #@1fd
    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getAxisValue(II)F

    #@200
    move-result v1

    #@201
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-set4(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    #@204
    .line 621
    const/16 v1, 0x23

    #@206
    move-object/from16 v0, p1

    #@208
    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getAxisValue(II)F

    #@20b
    move-result v1

    #@20c
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-set2(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    #@20f
    .line 597
    :cond_12
    add-int/lit8 v4, v4, 0x1

    #@211
    goto/16 :goto_8

    #@213
    .line 599
    .end local v5    # "coords":Landroid/view/MotionEvent$PointerCoords;
    :cond_13
    const/4 v15, 0x0

    #@214
    .restart local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    goto/16 :goto_9

    #@216
    .line 600
    .end local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_14
    move-object/from16 v0, p0

    #@218
    iget-object v5, v0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    #@21a
    .restart local v5    # "coords":Landroid/view/MotionEvent$PointerCoords;
    goto/16 :goto_a

    #@21c
    .line 626
    .end local v5    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .end local v6    # "id":I
    :cond_15
    const/4 v1, 0x1

    #@21d
    if-eq v3, v1, :cond_16

    #@21f
    .line 627
    const/4 v1, 0x3

    #@220
    if-ne v3, v1, :cond_19

    #@222
    .line 629
    :cond_16
    :goto_b
    const v1, 0xff00

    #@225
    and-int/2addr v1, v3

    #@226
    shr-int/lit8 v13, v1, 0x8

    #@228
    .line 632
    .restart local v13    # "index":I
    move-object/from16 v0, p1

    #@22a
    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@22d
    move-result v6

    #@22e
    .line 633
    .restart local v6    # "id":I
    move-object/from16 v0, p0

    #@230
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    #@232
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@235
    move-result-object v15

    #@236
    check-cast v15, Lcom/android/internal/widget/PointerLocationView$PointerState;

    #@238
    .line 634
    .local v15, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    const/4 v1, 0x0

    #@239
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-set6(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    #@23c
    .line 636
    const/4 v1, 0x1

    #@23d
    if-eq v3, v1, :cond_17

    #@23f
    .line 637
    const/4 v1, 0x3

    #@240
    if-ne v3, v1, :cond_1a

    #@242
    .line 638
    :cond_17
    const/4 v1, 0x0

    #@243
    move-object/from16 v0, p0

    #@245
    iput-boolean v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    #@247
    .line 639
    const/4 v1, 0x0

    #@248
    move-object/from16 v0, p0

    #@24a
    iput v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    #@24c
    .line 649
    .end local v6    # "id":I
    .end local v13    # "index":I
    .end local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_18
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/PointerLocationView;->invalidate()V

    #@24f
    .line 526
    return-void

    #@250
    .line 628
    :cond_19
    and-int/lit16 v1, v3, 0xff

    #@252
    const/4 v2, 0x6

    #@253
    if-ne v1, v2, :cond_18

    #@255
    goto :goto_b

    #@256
    .line 641
    .restart local v6    # "id":I
    .restart local v13    # "index":I
    .restart local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_1a
    move-object/from16 v0, p0

    #@258
    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    #@25a
    add-int/lit8 v1, v1, -0x1

    #@25c
    move-object/from16 v0, p0

    #@25e
    iput v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    #@260
    .line 642
    move-object/from16 v0, p0

    #@262
    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    #@264
    if-ne v1, v6, :cond_1b

    #@266
    .line 643
    if-nez v13, :cond_1c

    #@268
    const/4 v1, 0x1

    #@269
    :goto_d
    move-object/from16 v0, p1

    #@26b
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@26e
    move-result v1

    #@26f
    move-object/from16 v0, p0

    #@271
    iput v1, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    #@273
    .line 645
    :cond_1b
    const/high16 v1, 0x7fc00000    # NaNf

    #@275
    const/high16 v2, 0x7fc00000    # NaNf

    #@277
    const/4 v7, 0x0

    #@278
    invoke-virtual {v15, v1, v2, v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->addTrace(FFZ)V

    #@27b
    goto :goto_c

    #@27c
    .line 643
    :cond_1c
    const/4 v1, 0x0

    #@27d
    goto :goto_d
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 654
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/PointerLocationView;->onPointerEvent(Landroid/view/MotionEvent;)V

    #@3
    .line 656
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->isFocused()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 659
    :cond_0
    :goto_0
    const/4 v0, 0x1

    #@10
    return v0

    #@11
    .line 657
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->requestFocus()Z

    #@14
    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 716
    const-string/jumbo v0, "Trackball"

    #@3
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/PointerLocationView;->logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    #@6
    .line 717
    const/4 v0, 0x1

    #@7
    return v0
.end method

.method public setPrintCoords(Z)V
    .locals 0
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    #@2
    .line 188
    return-void
.end method
