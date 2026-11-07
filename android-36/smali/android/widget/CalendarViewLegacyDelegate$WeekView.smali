.class Landroid/widget/CalendarViewLegacyDelegate$WeekView;
.super Landroid/view/View;
.source "CalendarViewLegacyDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CalendarViewLegacyDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeekView"
.end annotation


# instance fields
.field private blacklist mDayNumbers:[Ljava/lang/String;

.field private final blacklist mDrawPaint:Landroid/graphics/Paint;

.field private blacklist mFirstDay:Landroid/icu/util/Calendar;

.field private blacklist mFocusDay:[Z

.field private blacklist mHasFocusedDay:Z

.field private blacklist mHasSelectedDay:Z

.field private blacklist mHasUnfocusedDay:Z

.field private blacklist mHeight:I

.field private blacklist mLastWeekDayMonth:I

.field private final blacklist mMonthNumDrawPaint:Landroid/graphics/Paint;

.field private blacklist mMonthOfFirstWeekDay:I

.field private blacklist mNumCells:I

.field private blacklist mSelectedDay:I

.field private blacklist mSelectedLeft:I

.field private blacklist mSelectedRight:I

.field private final blacklist mTempRect:Landroid/graphics/Rect;

.field private blacklist mWeek:I

.field private blacklist mWidth:I

.field final synthetic blacklist this$0:Landroid/widget/CalendarViewLegacyDelegate;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHasFocusedDay(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasFocusedDay:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHasSelectedDay(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasSelectedDay:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHasUnfocusedDay(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasUnfocusedDay:Z

    return p0
.end method

.method public constructor blacklist <init>(Landroid/widget/CalendarViewLegacyDelegate;Landroid/content/Context;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1220
    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 1221
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1168
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    .line 1170
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    .line 1172
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    .line 1190
    const/4 p1, -0x1

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthOfFirstWeekDay:I

    .line 1193
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mLastWeekDayMonth:I

    .line 1197
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWeek:I

    .line 1206
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasSelectedDay:Z

    .line 1209
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedDay:I

    .line 1215
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    .line 1218
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedRight:I

    .line 1224
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->initializePaints()V

    .line 1225
    return-void
.end method

.method private blacklist drawBackground(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1415
    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasSelectedDay:Z

    if-nez v0, :cond_5

    .line 1416
    return-void

    .line 1418
    :cond_5
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmSelectedWeekBackgroundColor(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1420
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmWeekSeparatorLineWidth(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1421
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1423
    invoke-virtual {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->isLayoutRtl()Z

    move-result v0

    .line 1425
    .local v0, "isLayoutRtl":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_34

    .line 1426
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 1427
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    add-int/lit8 v2, v2, -0x2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_4d

    .line 1429
    :cond_34
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmShowWeekNumber(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v3

    if-eqz v3, :cond_43

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    div-int/2addr v1, v3

    :cond_43
    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 1430
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    add-int/lit8 v2, v2, -0x2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1432
    :goto_4d
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1434
    if-eqz v0, :cond_76

    .line 1435
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedRight:I

    add-int/lit8 v2, v2, 0x3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 1436
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmShowWeekNumber(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v2

    if-eqz v2, :cond_71

    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    div-int/2addr v3, v4

    sub-int/2addr v2, v3

    goto :goto_73

    :cond_71
    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    :goto_73
    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_84

    .line 1438
    :cond_76
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedRight:I

    add-int/lit8 v2, v2, 0x3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 1439
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1441
    :goto_84
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1442
    return-void
.end method

.method private blacklist drawSelectedDateVerticalBars(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1522
    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasSelectedDay:Z

    if-nez v0, :cond_5

    .line 1523
    return-void

    .line 1525
    :cond_5
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmSelectedDateVerticalBar(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmSelectedDateVerticalBarWidth(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmWeekSeparatorLineWidth(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v2

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmSelectedDateVerticalBarWidth(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1530
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmSelectedDateVerticalBar(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1531
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmSelectedDateVerticalBar(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedRight:I

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmSelectedDateVerticalBarWidth(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmWeekSeparatorLineWidth(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v2

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedRight:I

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmSelectedDateVerticalBarWidth(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1536
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmSelectedDateVerticalBar(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1537
    return-void
.end method

.method private blacklist drawWeekNumbersAndDates(Landroid/graphics/Canvas;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1450
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 1451
    .local v0, "textHeight":F
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHeight:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmWeekSeparatorLineWidth(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 1452
    .local v1, "y":I
    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    .line 1453
    .local v2, "nDays":I
    mul-int/lit8 v3, v2, 0x2

    .line 1455
    .local v3, "divisor":I
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1456
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v5}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmDateTextSize(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1458
    const/4 v4, 0x0

    .line 1460
    .local v4, "i":I
    invoke-virtual {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->isLayoutRtl()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_8e

    .line 1461
    :goto_34
    add-int/lit8 v5, v2, -0x1

    if-ge v4, v5, :cond_69

    .line 1462
    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mFocusDay:[Z

    aget-boolean v7, v7, v4

    if-eqz v7, :cond_47

    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v7}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmFocusedMonthDateColor(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v7

    goto :goto_4d

    .line 1463
    :cond_47
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v7}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmUnfocusedMonthDateColor(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v7

    .line 1462
    :goto_4d
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1464
    mul-int/lit8 v5, v4, 0x2

    add-int/lit8 v5, v5, 0x1

    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    mul-int/2addr v5, v7

    div-int/2addr v5, v3

    .line 1465
    .local v5, "x":I
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    add-int/lit8 v8, v2, -0x1

    sub-int/2addr v8, v4

    aget-object v7, v7, v8

    int-to-float v8, v5

    int-to-float v9, v1

    iget-object v10, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1461
    .end local v5    # "x":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 1467
    :cond_69
    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v5}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmShowWeekNumber(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v5

    if-eqz v5, :cond_e1

    .line 1468
    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v7}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmWeekNumberColor(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1469
    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    div-int/2addr v7, v3

    sub-int/2addr v5, v7

    .line 1470
    .restart local v5    # "x":I
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    aget-object v6, v7, v6

    int-to-float v7, v5

    int-to-float v8, v1

    iget-object v9, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1471
    .end local v5    # "x":I
    goto :goto_e1

    .line 1473
    :cond_8e
    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v5}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmShowWeekNumber(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v5

    if-eqz v5, :cond_b1

    .line 1474
    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v7}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmWeekNumberColor(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1475
    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    div-int/2addr v5, v3

    .line 1476
    .restart local v5    # "x":I
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    aget-object v6, v7, v6

    int-to-float v7, v5

    int-to-float v8, v1

    iget-object v9, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1477
    add-int/lit8 v4, v4, 0x1

    .line 1479
    .end local v5    # "x":I
    :cond_b1
    :goto_b1
    if-ge v4, v2, :cond_e1

    .line 1480
    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mFocusDay:[Z

    aget-boolean v6, v6, v4

    if-eqz v6, :cond_c2

    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v6}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmFocusedMonthDateColor(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v6

    goto :goto_c8

    .line 1481
    :cond_c2
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v6}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmUnfocusedMonthDateColor(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v6

    .line 1480
    :goto_c8
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1482
    mul-int/lit8 v5, v4, 0x2

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    mul-int/2addr v5, v6

    div-int/2addr v5, v3

    .line 1483
    .restart local v5    # "x":I
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    aget-object v6, v6, v4

    int-to-float v7, v5

    int-to-float v8, v1

    iget-object v9, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1479
    .end local v5    # "x":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_b1

    .line 1486
    :cond_e1
    :goto_e1
    return-void
.end method

.method private blacklist drawWeekSeparators(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1495
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmListView(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1496
    .local v0, "firstFullyVisiblePosition":I
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmListView(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-gez v1, :cond_1d

    .line 1497
    add-int/lit8 v0, v0, 0x1

    .line 1499
    :cond_1d
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWeek:I

    if-ne v0, v1, :cond_22

    .line 1500
    return-void

    .line 1502
    :cond_22
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmWeekSeparatorLineColor(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1503
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmWeekSeparatorLineWidth(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1506
    invoke-virtual {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1507
    const/4 v1, 0x0

    .line 1508
    .local v1, "startX":F
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmShowWeekNumber(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    div-int/2addr v3, v4

    sub-int/2addr v2, v3

    goto :goto_53

    :cond_51
    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    :goto_53
    int-to-float v2, v2

    move v4, v1

    move v6, v2

    .local v2, "stopX":F
    goto :goto_6c

    .line 1510
    .end local v1    # "startX":F
    .end local v2    # "stopX":F
    :cond_57
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmShowWeekNumber(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v1

    if-eqz v1, :cond_66

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    goto :goto_67

    :cond_66
    const/4 v1, 0x0

    .line 1511
    .restart local v1    # "startX":F
    :goto_67
    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    int-to-float v2, v2

    move v4, v1

    move v6, v2

    .line 1513
    .end local v1    # "startX":F
    .local v4, "startX":F
    .local v6, "stopX":F
    :goto_6c
    const/4 v7, 0x0

    iget-object v8, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    move-object v3, p1

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1514
    return-void
.end method

.method private blacklist initializePaints()V
    .registers 4

    .line 1296
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1297
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1298
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1300
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1301
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1302
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1303
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1304
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmDateTextSize(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1305
    return-void
.end method

.method private blacklist updateSelectionPositions()V
    .registers 6

    .line 1549
    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasSelectedDay:Z

    if-eqz v0, :cond_47

    .line 1550
    invoke-virtual {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->isLayoutRtl()Z

    move-result v0

    .line 1551
    .local v0, "isLayoutRtl":Z
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedDay:I

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmFirstDayOfWeek(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 1552
    .local v1, "selectedPosition":I
    if-gez v1, :cond_15

    .line 1553
    add-int/lit8 v1, v1, 0x7

    .line 1555
    :cond_15
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmShowWeekNumber(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v2

    if-eqz v2, :cond_21

    if-nez v0, :cond_21

    .line 1556
    add-int/lit8 v1, v1, 0x1

    .line 1558
    :cond_21
    if-eqz v0, :cond_35

    .line 1559
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmDaysPerWeek(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    mul-int/2addr v2, v3

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    div-int/2addr v2, v3

    iput v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    goto :goto_3d

    .line 1562
    :cond_35
    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    mul-int/2addr v2, v1

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    div-int/2addr v2, v3

    iput v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    .line 1564
    :goto_3d
    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    div-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedRight:I

    .line 1566
    .end local v0    # "isLayoutRtl":Z
    .end local v1    # "selectedPosition":I
    :cond_47
    return-void
.end method


# virtual methods
.method public blacklist getBoundsForDate(Landroid/icu/util/Calendar;Landroid/graphics/Rect;)Z
    .registers 11
    .param p1, "date"    # Landroid/icu/util/Calendar;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .line 1374
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    .line 1375
    .local v0, "currDay":Landroid/icu/util/Calendar;
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mFirstDay:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1376
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmDaysPerWeek(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_7d

    .line 1377
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x5

    if-ne v4, v5, :cond_77

    .line 1378
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v7

    if-ne v5, v7, :cond_77

    .line 1379
    invoke-virtual {p1, v6}, Landroid/icu/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v6}, Landroid/icu/util/Calendar;->get(I)I

    move-result v7

    if-ne v5, v7, :cond_77

    .line 1383
    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    iget v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    div-int/2addr v5, v6

    .line 1384
    .local v5, "cellSize":I
    invoke-virtual {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 1385
    nop

    .line 1386
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v6}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmShowWeekNumber(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v6

    if-eqz v6, :cond_51

    iget v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    sub-int/2addr v6, v1

    sub-int/2addr v6, v4

    goto :goto_56

    :cond_51
    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    sub-int/2addr v4, v1

    add-int/lit8 v6, v4, -0x1

    :goto_56
    mul-int/2addr v6, v5

    iput v6, p2, Landroid/graphics/Rect;->left:I

    goto :goto_69

    .line 1388
    :cond_5a
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmShowWeekNumber(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v4

    if-eqz v4, :cond_65

    add-int/lit8 v4, v1, 0x1

    goto :goto_66

    :cond_65
    move v4, v1

    :goto_66
    mul-int/2addr v4, v5

    iput v4, p2, Landroid/graphics/Rect;->left:I

    .line 1390
    :goto_69
    iput v3, p2, Landroid/graphics/Rect;->top:I

    .line 1391
    iget v3, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v5

    iput v3, p2, Landroid/graphics/Rect;->right:I

    .line 1392
    invoke-virtual {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getHeight()I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->bottom:I

    .line 1393
    return v2

    .line 1396
    .end local v5    # "cellSize":I
    :cond_77
    invoke-virtual {v0, v6, v2}, Landroid/icu/util/Calendar;->add(II)V

    .line 1376
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1398
    .end local v1    # "i":I
    :cond_7d
    return v3
.end method

.method public blacklist getDayFromLocation(FLandroid/icu/util/Calendar;)Z
    .registers 10
    .param p1, "x"    # F
    .param p2, "outCalendar"    # Landroid/icu/util/Calendar;

    .line 1342
    invoke-virtual {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->isLayoutRtl()Z

    move-result v0

    .line 1347
    .local v0, "isLayoutRtl":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 1348
    const/4 v2, 0x0

    .line 1349
    .local v2, "start":I
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmShowWeekNumber(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v3

    if-eqz v3, :cond_19

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    div-int/2addr v4, v5

    sub-int/2addr v3, v4

    goto :goto_1b

    :cond_19
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    .local v3, "end":I
    :goto_1b
    goto :goto_2d

    .line 1351
    .end local v2    # "start":I
    .end local v3    # "end":I
    :cond_1c
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmShowWeekNumber(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v2

    if-eqz v2, :cond_2a

    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    div-int/2addr v2, v3

    goto :goto_2b

    :cond_2a
    move v2, v1

    .line 1352
    .restart local v2    # "start":I
    :goto_2b
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    .line 1355
    .restart local v3    # "end":I
    :goto_2d
    int-to-float v4, v2

    cmpg-float v4, p1, v4

    if-ltz v4, :cond_62

    int-to-float v4, v3

    cmpl-float v4, p1, v4

    if-lez v4, :cond_38

    goto :goto_62

    .line 1361
    :cond_38
    int-to-float v1, v2

    sub-float v1, p1, v1

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmDaysPerWeek(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    sub-int v4, v3, v2

    int-to-float v4, v4

    div-float/2addr v1, v4

    float-to-int v1, v1

    .line 1363
    .local v1, "dayPosition":I
    const/4 v4, 0x1

    if-eqz v0, :cond_54

    .line 1364
    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v5}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmDaysPerWeek(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v5

    sub-int/2addr v5, v4

    sub-int v1, v5, v1

    .line 1367
    :cond_54
    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mFirstDay:Landroid/icu/util/Calendar;

    invoke-virtual {v5}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {p2, v5, v6}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 1368
    const/4 v5, 0x5

    invoke-virtual {p2, v5, v1}, Landroid/icu/util/Calendar;->add(II)V

    .line 1370
    return v4

    .line 1356
    .end local v1    # "dayPosition":I
    :cond_62
    :goto_62
    invoke-virtual {p2}, Landroid/icu/util/Calendar;->clear()V

    .line 1357
    return v1
.end method

.method public blacklist getFirstDay()Landroid/icu/util/Calendar;
    .registers 2

    .line 1331
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mFirstDay:Landroid/icu/util/Calendar;

    return-object v0
.end method

.method public blacklist getMonthOfFirstWeekDay()I
    .registers 2

    .line 1313
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthOfFirstWeekDay:I

    return v0
.end method

.method public blacklist getMonthOfLastWeekDay()I
    .registers 2

    .line 1322
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mLastWeekDayMonth:I

    return v0
.end method

.method public blacklist init(III)V
    .registers 16
    .param p1, "weekNumber"    # I
    .param p2, "selectedWeekDay"    # I
    .param p3, "focusedMonth"    # I

    .line 1239
    iput p2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedDay:I

    .line 1240
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedDay:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_b

    move v0, v2

    goto :goto_c

    :cond_b
    move v0, v1

    :goto_c
    iput-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasSelectedDay:Z

    .line 1241
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmShowWeekNumber(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmDaysPerWeek(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_24

    :cond_1e
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmDaysPerWeek(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v0

    :goto_24
    iput v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    .line 1242
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWeek:I

    .line 1243
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v0

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmMinDate(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 1245
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v0

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWeek:I

    const/4 v5, 0x3

    invoke-virtual {v0, v5, v4}, Landroid/icu/util/Calendar;->add(II)V

    .line 1246
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v0

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmFirstDayOfWeek(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->setFirstDayOfWeek(I)V

    .line 1249
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    .line 1250
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mFocusDay:[Z

    .line 1253
    const/4 v0, 0x0

    .line 1254
    .local v0, "i":I
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmShowWeekNumber(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v4

    const-string v6, "%d"

    if-eqz v4, :cond_8d

    .line 1255
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v8}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v8

    .line 1256
    invoke-virtual {v8, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 1255
    invoke-static {v7, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 1257
    add-int/lit8 v0, v0, 0x1

    .line 1261
    :cond_8d
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmFirstDayOfWeek(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v4

    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v5}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v5

    const/4 v7, 0x7

    invoke-virtual {v5, v7}, Landroid/icu/util/Calendar;->get(I)I

    move-result v5

    sub-int/2addr v4, v5

    .line 1262
    .local v4, "diff":I
    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v5}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v5

    const/4 v7, 0x5

    invoke-virtual {v5, v7, v4}, Landroid/icu/util/Calendar;->add(II)V

    .line 1264
    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v5}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/util/Calendar;

    iput-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mFirstDay:Landroid/icu/util/Calendar;

    .line 1265
    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v5}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v5

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Landroid/icu/util/Calendar;->get(I)I

    move-result v5

    iput v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthOfFirstWeekDay:I

    .line 1267
    iput-boolean v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasUnfocusedDay:Z

    .line 1268
    :goto_c6
    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    if-ge v0, v5, :cond_142

    .line 1269
    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v5}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/icu/util/Calendar;->get(I)I

    move-result v5

    if-ne v5, p3, :cond_d8

    move v5, v2

    goto :goto_d9

    :cond_d8
    move v5, v1

    .line 1270
    .local v5, "isFocusedDay":Z
    :goto_d9
    iget-object v9, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mFocusDay:[Z

    aput-boolean v5, v9, v0

    .line 1271
    iget-boolean v9, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasFocusedDay:Z

    or-int/2addr v9, v5

    iput-boolean v9, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasFocusedDay:Z

    .line 1272
    iget-boolean v9, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasUnfocusedDay:Z

    if-nez v5, :cond_e8

    move v10, v2

    goto :goto_e9

    :cond_e8
    move v10, v1

    :goto_e9
    and-int/2addr v9, v10

    iput-boolean v9, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasUnfocusedDay:Z

    .line 1274
    iget-object v9, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v9}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v10}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmMinDate(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_130

    iget-object v9, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v9}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v10}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmMaxDate(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/icu/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_111

    goto :goto_130

    .line 1277
    :cond_111
    iget-object v9, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    iget-object v11, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v11}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v11

    .line 1278
    invoke-virtual {v11, v7}, Landroid/icu/util/Calendar;->get(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    .line 1277
    invoke-static {v10, v6, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v0

    goto :goto_136

    .line 1275
    :cond_130
    :goto_130
    iget-object v9, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    const-string v10, ""

    aput-object v10, v9, v0

    .line 1280
    :goto_136
    iget-object v9, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v9}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v9

    invoke-virtual {v9, v7, v2}, Landroid/icu/util/Calendar;->add(II)V

    .line 1268
    .end local v5    # "isFocusedDay":Z
    add-int/lit8 v0, v0, 0x1

    goto :goto_c6

    .line 1284
    :cond_142
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, v2, :cond_157

    .line 1285
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v7, v3}, Landroid/icu/util/Calendar;->add(II)V

    .line 1287
    :cond_157
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mLastWeekDayMonth:I

    .line 1289
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->updateSelectionPositions()V

    .line 1290
    return-void
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1403
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 1404
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->drawWeekNumbersAndDates(Landroid/graphics/Canvas;)V

    .line 1405
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->drawWeekSeparators(Landroid/graphics/Canvas;)V

    .line 1406
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->drawSelectedDateVerticalBars(Landroid/graphics/Canvas;)V

    .line 1407
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1570
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmListView(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmListView(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmListView(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;

    move-result-object v1

    .line 1571
    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmShownWeekCount(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHeight:I

    .line 1572
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHeight:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->setMeasuredDimension(II)V

    .line 1573
    return-void
.end method

.method protected whitelist onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 1541
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    .line 1542
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->updateSelectionPositions()V

    .line 1543
    return-void
.end method
