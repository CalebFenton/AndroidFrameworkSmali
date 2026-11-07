.class Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;
.super Landroid/view/View;
.source "InteractionMonitorDebugOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/InteractionMonitorDebugOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DebugOverlayView"
.end annotation


# static fields
.field private static final blacklist TRACK_NAME:Ljava/lang/String; = "InteractionJankMonitor"


# instance fields
.field private final blacklist mBgColor:I

.field final blacklist mCujFontSize:I

.field final blacklist mCujNameTextHeight:F

.field final blacklist mCujStatusWidth:F

.field private final blacklist mDebugFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private final blacklist mDebugPaint:Landroid/graphics/Paint;

.field private final blacklist mDensity:F

.field final blacklist mPackageNameFontSize:I

.field private final blacklist mPackageNameText:Ljava/lang/String;

.field final blacklist mPackageNameTextHeight:F

.field final blacklist mPackageNameWidth:F

.field final blacklist mPadding:I

.field private final blacklist mYOffset:D

.field final synthetic blacklist this$0:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;Landroid/content/Context;ID)V
    .registers 9
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "bgColor"    # I
    .param p4, "yOffset"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 216
    iput-object p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->this$0:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    .line 217
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 218
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->setVisibility(I)V

    .line 219
    iput p3, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mBgColor:I

    .line 220
    iput-wide p4, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mYOffset:D

    .line 221
    invoke-virtual {p0}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 222
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDensity:F

    .line 223
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    .line 224
    iget-object v1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 225
    new-instance v1, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->-$$Nest$fgetmCurrentApplication(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPackageNameText:Ljava/lang/String;

    .line 227
    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->dipToPx(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPadding:I

    .line 228
    const/16 p1, 0xc

    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->dipToPx(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPackageNameFontSize:I

    .line 229
    const/16 p1, 0x12

    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->dipToPx(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mCujFontSize:I

    .line 230
    iget p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mCujFontSize:I

    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->getTextHeight(I)F

    move-result p1

    iput p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mCujNameTextHeight:F

    .line 231
    iget p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mCujNameTextHeight:F

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr p1, v1

    iput p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mCujStatusWidth:F

    .line 232
    iget p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPackageNameFontSize:I

    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->getTextHeight(I)F

    move-result p1

    iput p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPackageNameTextHeight:F

    .line 233
    iget-object p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPackageNameText:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPackageNameFontSize:I

    invoke-direct {p0, p1, v1}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->getWidthOfText(Ljava/lang/String;I)F

    move-result p1

    iput p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPackageNameWidth:F

    .line 234
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;Landroid/content/Context;IDLcom/android/internal/jank/InteractionMonitorDebugOverlay-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;-><init>(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;Landroid/content/Context;ID)V

    return-void
.end method

.method private blacklist dipToPx(I)I
    .registers 4
    .param p1, "dip"    # I

    .line 237
    iget v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDensity:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private blacklist getTextHeight(I)F
    .registers 4
    .param p1, "textSize"    # I

    .line 241
    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 242
    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugFontMetrics:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 243
    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget-object v1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v0, v1

    return v0
.end method

.method private blacklist getWidthOfLongestCujName(I)F
    .registers 7
    .param p1, "cujFontSize"    # I

    .line 252
    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, "maxLength":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    iget-object v2, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->this$0:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    invoke-static {v2}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->-$$Nest$fgetmRunningCujs(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_34

    .line 255
    iget-object v2, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->this$0:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    invoke-static {v2}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->-$$Nest$fgetmRunningCujs(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;

    iget v2, v2, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;->mCuj:I

    invoke-static {v2}, Lcom/android/internal/jank/Cuj;->getNameOfCuj(I)Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "cujName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 257
    .local v3, "textLength":F
    cmpl-float v4, v3, v0

    if-lez v4, :cond_31

    .line 258
    move v0, v3

    .line 254
    .end local v2    # "cujName":Ljava/lang/String;
    .end local v3    # "textLength":F
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 261
    .end local v1    # "i":I
    :cond_34
    return v0
.end method

.method private blacklist getWidthOfText(Ljava/lang/String;I)F
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "fontSize"    # I

    .line 247
    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 248
    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    return v0
.end method


# virtual methods
.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 266
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 271
    const-wide/16 v7, 0x1000

    const-string v9, "InteractionJankMonitor"

    const-string v2, "DEBUG_OVERLAY_DRAW"

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v2, v10}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 273
    invoke-virtual {v0}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->getHeight()I

    move-result v11

    .line 274
    .local v11, "h":I
    invoke-virtual {v0}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->getWidth()I

    move-result v12

    .line 275
    .local v12, "w":I
    int-to-double v2, v11

    iget-wide v4, v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mYOffset:D

    mul-double/2addr v2, v4

    double-to-int v13, v2

    .line 277
    .local v13, "dy":I
    iget v2, v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPackageNameWidth:F

    iget v3, v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mCujFontSize:I

    invoke-direct {v0, v3}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->getWidthOfLongestCujName(I)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mCujStatusWidth:F

    add-float v14, v2, v3

    .line 280
    .local v14, "maxLength":F
    int-to-float v2, v12

    sub-float/2addr v2, v14

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v15, v2

    .line 281
    .local v15, "dx":I
    int-to-float v2, v15

    int-to-float v3, v13

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 283
    iget-object v2, v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mBgColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 284
    iget v2, v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPadding:I

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPadding:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPadding:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v4, v14

    iget v5, v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPadding:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPackageNameTextHeight:F

    add-float/2addr v5, v6

    iget v6, v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mCujNameTextHeight:F

    iget-object v7, v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->this$0:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    invoke-static {v7}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->-$$Nest$fgetmRunningCujs(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)Ljava/util/ArrayList;

    move-result-object v7

    .line 286
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    .line 284
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 287
    iget-object v2, v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPackageNameFontSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 288
    iget-object v2, v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 289
    iget-object v2, v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 290
    iget v2, v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPackageNameTextHeight:F

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 291
    iget-object v2, v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPackageNameText:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 292
    iget-object v2, v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    iget v5, v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mCujFontSize:I

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 294
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_96
    iget-object v5, v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->this$0:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    invoke-static {v5}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->-$$Nest$fgetmRunningCujs(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_100

    .line 295
    iget-object v5, v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->this$0:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    invoke-static {v5}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->-$$Nest$fgetmRunningCujs(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;

    .line 296
    .local v5, "tracker":Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;
    iget v6, v5, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;->mState:I

    .line 297
    .local v6, "status":I
    sparse-switch v6, :sswitch_data_108

    .line 310
    iget-object v7, v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v8, -0x10000

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 311
    iget-object v7, v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 312
    const-string/jumbo v7, "\u274c"

    goto :goto_e2

    .line 304
    :sswitch_c4
    iget-object v7, v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    const v8, -0x777778

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 305
    iget-object v7, v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 306
    const-string/jumbo v7, "\u2705"

    goto :goto_e2

    .line 299
    :sswitch_d5
    iget-object v7, v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 300
    iget-object v7, v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 301
    const-string/jumbo v7, "\u2610"

    .line 312
    :goto_e2
    nop

    .line 315
    .local v7, "statusText":Ljava/lang/String;
    iget v8, v5, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;->mCuj:I

    invoke-static {v8}, Lcom/android/internal/jank/Cuj;->getNameOfCuj(I)Ljava/lang/String;

    move-result-object v8

    .line 316
    .local v8, "cujName":Ljava/lang/String;
    iget v3, v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mCujNameTextHeight:F

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 317
    iget-object v3, v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v4, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 318
    iget v3, v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mCujStatusWidth:F

    iget-object v10, v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v3, v4, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 294
    .end local v5    # "tracker":Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;
    .end local v6    # "status":I
    .end local v7    # "statusText":Ljava/lang/String;
    .end local v8    # "cujName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    const/high16 v3, -0x1000000

    const/4 v10, 0x0

    goto :goto_96

    .line 320
    .end local v2    # "i":I
    :cond_100
    const-wide/16 v2, 0x1000

    const/4 v4, 0x0

    invoke-static {v2, v3, v9, v4}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 321
    return-void

    nop

    :sswitch_data_108
    .sparse-switch
        -0x3e8 -> :sswitch_d5
        0x0 -> :sswitch_c4
    .end sparse-switch
.end method
