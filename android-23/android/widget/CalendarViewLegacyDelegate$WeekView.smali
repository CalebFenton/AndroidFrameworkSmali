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
.field private mDayNumbers:[Ljava/lang/String;

.field private final mDrawPaint:Landroid/graphics/Paint;

.field private mFirstDay:Ljava/util/Calendar;

.field private mFocusDay:[Z

.field private mHasFocusedDay:Z

.field private mHasSelectedDay:Z

.field private mHasUnfocusedDay:Z

.field private mHeight:I

.field private mLastWeekDayMonth:I

.field private final mMonthNumDrawPaint:Landroid/graphics/Paint;

.field private mMonthOfFirstWeekDay:I

.field private mNumCells:I

.field private mSelectedDay:I

.field private mSelectedLeft:I

.field private mSelectedRight:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mWeek:I

.field private mWidth:I

.field final synthetic this$0:Landroid/widget/CalendarViewLegacyDelegate;


# direct methods
.method static synthetic -get0(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasFocusedDay:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasSelectedDay:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasUnfocusedDay:Z

    #@2
    return v0
.end method

.method public constructor <init>(Landroid/widget/CalendarViewLegacyDelegate;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Landroid/widget/CalendarViewLegacyDelegate;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 1198
    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@3
    .line 1199
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #@6
    .line 1146
    new-instance v0, Landroid/graphics/Rect;

    #@8
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@b
    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    #@d
    .line 1148
    new-instance v0, Landroid/graphics/Paint;

    #@f
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@12
    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    #@14
    .line 1150
    new-instance v0, Landroid/graphics/Paint;

    #@16
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@19
    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    #@1b
    .line 1168
    iput v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthOfFirstWeekDay:I

    #@1d
    .line 1171
    iput v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mLastWeekDayMonth:I

    #@1f
    .line 1175
    iput v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWeek:I

    #@21
    .line 1184
    const/4 v0, 0x0

    #@22
    iput-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasSelectedDay:Z

    #@24
    .line 1187
    iput v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedDay:I

    #@26
    .line 1193
    iput v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    #@28
    .line 1196
    iput v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedRight:I

    #@2a
    .line 1202
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->initilaizePaints()V

    #@2d
    .line 1198
    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1365
    iget-boolean v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasSelectedDay:Z

    #@3
    if-nez v2, :cond_0

    #@5
    .line 1366
    return-void

    #@6
    .line 1368
    :cond_0
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    #@8
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@a
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get14(Landroid/widget/CalendarViewLegacyDelegate;)I

    #@d
    move-result v3

    #@e
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    #@11
    .line 1370
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    #@13
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@15
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get21(Landroid/widget/CalendarViewLegacyDelegate;)I

    #@18
    move-result v3

    #@19
    iput v3, v2, Landroid/graphics/Rect;->top:I

    #@1b
    .line 1371
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    #@1d
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHeight:I

    #@1f
    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    #@21
    .line 1373
    invoke-virtual {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->isLayoutRtl()Z

    #@24
    move-result v0

    #@25
    .line 1375
    .local v0, "isLayoutRtl":Z
    if-eqz v0, :cond_1

    #@27
    .line 1376
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    #@29
    iput v1, v2, Landroid/graphics/Rect;->left:I

    #@2b
    .line 1377
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    #@2d
    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    #@2f
    add-int/lit8 v2, v2, -0x2

    #@31
    iput v2, v1, Landroid/graphics/Rect;->right:I

    #@33
    .line 1382
    :goto_0
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    #@35
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    #@37
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    #@3a
    .line 1384
    if-eqz v0, :cond_4

    #@3c
    .line 1385
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    #@3e
    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedRight:I

    #@40
    add-int/lit8 v2, v2, 0x3

    #@42
    iput v2, v1, Landroid/graphics/Rect;->left:I

    #@44
    .line 1386
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    #@46
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@48
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-get15(Landroid/widget/CalendarViewLegacyDelegate;)Z

    #@4b
    move-result v1

    #@4c
    if-eqz v1, :cond_3

    #@4e
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    #@50
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    #@52
    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    #@54
    div-int/2addr v3, v4

    #@55
    sub-int/2addr v1, v3

    #@56
    :goto_1
    iput v1, v2, Landroid/graphics/Rect;->right:I

    #@58
    .line 1391
    :goto_2
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    #@5a
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    #@5c
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    #@5f
    .line 1364
    return-void

    #@60
    .line 1379
    :cond_1
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    #@62
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@64
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get15(Landroid/widget/CalendarViewLegacyDelegate;)Z

    #@67
    move-result v3

    #@68
    if-eqz v3, :cond_2

    #@6a
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    #@6c
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    #@6e
    div-int/2addr v1, v3

    #@6f
    :cond_2
    iput v1, v2, Landroid/graphics/Rect;->left:I

    #@71
    .line 1380
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    #@73
    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    #@75
    add-int/lit8 v2, v2, -0x2

    #@77
    iput v2, v1, Landroid/graphics/Rect;->right:I

    #@79
    goto :goto_0

    #@7a
    .line 1386
    :cond_3
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    #@7c
    goto :goto_1

    #@7d
    .line 1388
    :cond_4
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    #@7f
    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedRight:I

    #@81
    add-int/lit8 v2, v2, 0x3

    #@83
    iput v2, v1, Landroid/graphics/Rect;->left:I

    #@85
    .line 1389
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mTempRect:Landroid/graphics/Rect;

    #@87
    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    #@89
    iput v2, v1, Landroid/graphics/Rect;->right:I

    #@8b
    goto :goto_2
.end method

.method private drawSelectedDateVerticalBars(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 1472
    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasSelectedDay:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1473
    return-void

    #@5
    .line 1475
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@7
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->-get12(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/graphics/drawable/Drawable;

    #@a
    move-result-object v0

    #@b
    .line 1476
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    #@d
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@f
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-get13(Landroid/widget/CalendarViewLegacyDelegate;)I

    #@12
    move-result v2

    #@13
    div-int/lit8 v2, v2, 0x2

    #@15
    sub-int/2addr v1, v2

    #@16
    .line 1477
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@18
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-get21(Landroid/widget/CalendarViewLegacyDelegate;)I

    #@1b
    move-result v2

    #@1c
    .line 1478
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    #@1e
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@20
    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->-get13(Landroid/widget/CalendarViewLegacyDelegate;)I

    #@23
    move-result v4

    #@24
    div-int/lit8 v4, v4, 0x2

    #@26
    add-int/2addr v3, v4

    #@27
    .line 1479
    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHeight:I

    #@29
    .line 1475
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@2c
    .line 1480
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@2e
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->-get12(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/graphics/drawable/Drawable;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@35
    .line 1481
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@37
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->-get12(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/graphics/drawable/Drawable;

    #@3a
    move-result-object v0

    #@3b
    .line 1482
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedRight:I

    #@3d
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@3f
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-get13(Landroid/widget/CalendarViewLegacyDelegate;)I

    #@42
    move-result v2

    #@43
    div-int/lit8 v2, v2, 0x2

    #@45
    sub-int/2addr v1, v2

    #@46
    .line 1483
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@48
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-get21(Landroid/widget/CalendarViewLegacyDelegate;)I

    #@4b
    move-result v2

    #@4c
    .line 1484
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedRight:I

    #@4e
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@50
    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->-get13(Landroid/widget/CalendarViewLegacyDelegate;)I

    #@53
    move-result v4

    #@54
    div-int/lit8 v4, v4, 0x2

    #@56
    add-int/2addr v3, v4

    #@57
    .line 1485
    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHeight:I

    #@59
    .line 1481
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@5c
    .line 1486
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@5e
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->-get12(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/graphics/drawable/Drawable;

    #@61
    move-result-object v0

    #@62
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@65
    .line 1471
    return-void
.end method

.method private drawWeekNumbersAndDates(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 1400
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    #@3
    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F

    #@6
    move-result v3

    #@7
    .line 1401
    .local v3, "textHeight":F
    iget v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHeight:I

    #@9
    int-to-float v6, v6

    #@a
    add-float/2addr v6, v3

    #@b
    const/high16 v7, 0x40000000    # 2.0f

    #@d
    div-float/2addr v6, v7

    #@e
    float-to-int v6, v6

    #@f
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@11
    invoke-static {v7}, Landroid/widget/CalendarViewLegacyDelegate;->-get21(Landroid/widget/CalendarViewLegacyDelegate;)I

    #@14
    move-result v7

    #@15
    sub-int v5, v6, v7

    #@17
    .line 1402
    .local v5, "y":I
    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    #@19
    .line 1403
    .local v2, "nDays":I
    mul-int/lit8 v0, v2, 0x2

    #@1b
    .line 1405
    .local v0, "divisor":I
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    #@1d
    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    #@1f
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    #@22
    .line 1406
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    #@24
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@26
    invoke-static {v7}, Landroid/widget/CalendarViewLegacyDelegate;->-get1(Landroid/widget/CalendarViewLegacyDelegate;)I

    #@29
    move-result v7

    #@2a
    int-to-float v7, v7

    #@2b
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    #@2e
    .line 1408
    const/4 v1, 0x0

    #@2f
    .line 1410
    .local v1, "i":I
    invoke-virtual {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->isLayoutRtl()Z

    #@32
    move-result v6

    #@33
    if-eqz v6, :cond_3

    #@35
    .line 1411
    :goto_0
    add-int/lit8 v6, v2, -0x1

    #@37
    if-ge v1, v6, :cond_1

    #@39
    .line 1412
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    #@3b
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mFocusDay:[Z

    #@3d
    aget-boolean v6, v6, v1

    #@3f
    if-eqz v6, :cond_0

    #@41
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@43
    invoke-static {v6}, Landroid/widget/CalendarViewLegacyDelegate;->-get4(Landroid/widget/CalendarViewLegacyDelegate;)I

    #@46
    move-result v6

    #@47
    :goto_1
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    #@4a
    .line 1414
    mul-int/lit8 v6, v1, 0x2

    #@4c
    add-int/lit8 v6, v6, 0x1

    #@4e
    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    #@50
    mul-int/2addr v6, v7

    #@51
    div-int v4, v6, v0

    #@53
    .line 1415
    .local v4, "x":I
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    #@55
    add-int/lit8 v7, v2, -0x1

    #@57
    sub-int/2addr v7, v1

    #@58
    aget-object v6, v6, v7

    #@5a
    int-to-float v7, v4

    #@5b
    int-to-float v8, v5

    #@5c
    iget-object v9, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    #@5e
    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@61
    .line 1411
    add-int/lit8 v1, v1, 0x1

    #@63
    goto :goto_0

    #@64
    .line 1413
    .end local v4    # "x":I
    :cond_0
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@66
    invoke-static {v6}, Landroid/widget/CalendarViewLegacyDelegate;->-get18(Landroid/widget/CalendarViewLegacyDelegate;)I

    #@69
    move-result v6

    #@6a
    goto :goto_1

    #@6b
    .line 1417
    :cond_1
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@6d
    invoke-static {v6}, Landroid/widget/CalendarViewLegacyDelegate;->-get15(Landroid/widget/CalendarViewLegacyDelegate;)Z

    #@70
    move-result v6

    #@71
    if-eqz v6, :cond_2

    #@73
    .line 1418
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    #@75
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@77
    invoke-static {v7}, Landroid/widget/CalendarViewLegacyDelegate;->-get19(Landroid/widget/CalendarViewLegacyDelegate;)I

    #@7a
    move-result v7

    #@7b
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    #@7e
    .line 1419
    iget v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    #@80
    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    #@82
    div-int/2addr v7, v0

    #@83
    sub-int v4, v6, v7

    #@85
    .line 1420
    .restart local v4    # "x":I
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    #@87
    aget-object v6, v6, v10

    #@89
    int-to-float v7, v4

    #@8a
    int-to-float v8, v5

    #@8b
    iget-object v9, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    #@8d
    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@90
    .line 1399
    .end local v4    # "x":I
    :cond_2
    return-void

    #@91
    .line 1423
    :cond_3
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@93
    invoke-static {v6}, Landroid/widget/CalendarViewLegacyDelegate;->-get15(Landroid/widget/CalendarViewLegacyDelegate;)Z

    #@96
    move-result v6

    #@97
    if-eqz v6, :cond_4

    #@99
    .line 1424
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    #@9b
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@9d
    invoke-static {v7}, Landroid/widget/CalendarViewLegacyDelegate;->-get19(Landroid/widget/CalendarViewLegacyDelegate;)I

    #@a0
    move-result v7

    #@a1
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    #@a4
    .line 1425
    iget v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    #@a6
    div-int v4, v6, v0

    #@a8
    .line 1426
    .restart local v4    # "x":I
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    #@aa
    aget-object v6, v6, v10

    #@ac
    int-to-float v7, v4

    #@ad
    int-to-float v8, v5

    #@ae
    iget-object v9, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    #@b0
    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@b3
    .line 1427
    const/4 v1, 0x1

    #@b4
    .line 1429
    .end local v4    # "x":I
    :cond_4
    :goto_2
    if-ge v1, v2, :cond_2

    #@b6
    .line 1430
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    #@b8
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mFocusDay:[Z

    #@ba
    aget-boolean v6, v6, v1

    #@bc
    if-eqz v6, :cond_5

    #@be
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@c0
    invoke-static {v6}, Landroid/widget/CalendarViewLegacyDelegate;->-get4(Landroid/widget/CalendarViewLegacyDelegate;)I

    #@c3
    move-result v6

    #@c4
    :goto_3
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    #@c7
    .line 1432
    mul-int/lit8 v6, v1, 0x2

    #@c9
    add-int/lit8 v6, v6, 0x1

    #@cb
    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    #@cd
    mul-int/2addr v6, v7

    #@ce
    div-int v4, v6, v0

    #@d0
    .line 1433
    .restart local v4    # "x":I
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    #@d2
    aget-object v6, v6, v1

    #@d4
    int-to-float v7, v4

    #@d5
    int-to-float v8, v5

    #@d6
    iget-object v9, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    #@d8
    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@db
    .line 1429
    add-int/lit8 v1, v1, 0x1

    #@dd
    goto :goto_2

    #@de
    .line 1431
    .end local v4    # "x":I
    :cond_5
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@e0
    invoke-static {v6}, Landroid/widget/CalendarViewLegacyDelegate;->-get18(Landroid/widget/CalendarViewLegacyDelegate;)I

    #@e3
    move-result v6

    #@e4
    goto :goto_3
.end method

.method private drawWeekSeparators(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 1445
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@4
    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->-get7(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;

    #@7
    move-result-object v4

    #@8
    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    #@b
    move-result v6

    #@c
    .line 1446
    .local v6, "firstFullyVisiblePosition":I
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@e
    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->-get7(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {v4, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    #@19
    move-result v4

    #@1a
    if-gez v4, :cond_0

    #@1c
    .line 1447
    add-int/lit8 v6, v6, 0x1

    #@1e
    .line 1449
    :cond_0
    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWeek:I

    #@20
    if-ne v6, v4, :cond_1

    #@22
    .line 1450
    return-void

    #@23
    .line 1452
    :cond_1
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    #@25
    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@27
    invoke-static {v5}, Landroid/widget/CalendarViewLegacyDelegate;->-get20(Landroid/widget/CalendarViewLegacyDelegate;)I

    #@2a
    move-result v5

    #@2b
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    #@2e
    .line 1453
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    #@30
    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@32
    invoke-static {v5}, Landroid/widget/CalendarViewLegacyDelegate;->-get21(Landroid/widget/CalendarViewLegacyDelegate;)I

    #@35
    move-result v5

    #@36
    int-to-float v5, v5

    #@37
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@3a
    .line 1456
    invoke-virtual {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->isLayoutRtl()Z

    #@3d
    move-result v4

    #@3e
    if-eqz v4, :cond_3

    #@40
    .line 1457
    const/4 v1, 0x0

    #@41
    .line 1458
    .local v1, "startX":F
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@43
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->-get15(Landroid/widget/CalendarViewLegacyDelegate;)Z

    #@46
    move-result v0

    #@47
    if-eqz v0, :cond_2

    #@49
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    #@4b
    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    #@4d
    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    #@4f
    div-int/2addr v4, v5

    #@50
    sub-int/2addr v0, v4

    #@51
    :goto_0
    int-to-float v3, v0

    #@52
    .line 1463
    .local v3, "stopX":F
    :goto_1
    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    #@54
    move-object v0, p1

    #@55
    move v4, v2

    #@56
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@59
    .line 1443
    return-void

    #@5a
    .line 1458
    .end local v3    # "stopX":F
    :cond_2
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    #@5c
    goto :goto_0

    #@5d
    .line 1460
    .end local v1    # "startX":F
    :cond_3
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@5f
    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->-get15(Landroid/widget/CalendarViewLegacyDelegate;)Z

    #@62
    move-result v4

    #@63
    if-eqz v4, :cond_4

    #@65
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    #@67
    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    #@69
    div-int/2addr v0, v4

    #@6a
    :cond_4
    int-to-float v1, v0

    #@6b
    .line 1461
    .restart local v1    # "startX":F
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    #@6d
    int-to-float v3, v0

    #@6e
    .restart local v3    # "stopX":F
    goto :goto_1
.end method

.method private initilaizePaints()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1274
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    #@3
    const/4 v1, 0x0

    #@4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    #@7
    .line 1275
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    #@9
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@c
    .line 1276
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    #@e
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@10
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@13
    .line 1278
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    #@15
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    #@18
    .line 1279
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    #@1a
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@1d
    .line 1280
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    #@1f
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@21
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@24
    .line 1281
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    #@26
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    #@28
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    #@2b
    .line 1282
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    #@2d
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@2f
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-get1(Landroid/widget/CalendarViewLegacyDelegate;)I

    #@32
    move-result v1

    #@33
    int-to-float v1, v1

    #@34
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    #@37
    .line 1273
    return-void
.end method

.method private updateSelectionPositions()V
    .locals 5

    #@0
    .prologue
    .line 1499
    iget-boolean v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasSelectedDay:Z

    #@2
    if-eqz v2, :cond_2

    #@4
    .line 1500
    invoke-virtual {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->isLayoutRtl()Z

    #@7
    move-result v0

    #@8
    .line 1501
    .local v0, "isLayoutRtl":Z
    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedDay:I

    #@a
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@c
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get3(Landroid/widget/CalendarViewLegacyDelegate;)I

    #@f
    move-result v3

    #@10
    sub-int v1, v2, v3

    #@12
    .line 1502
    .local v1, "selectedPosition":I
    if-gez v1, :cond_0

    #@14
    .line 1503
    add-int/lit8 v1, v1, 0x7

    #@16
    .line 1505
    :cond_0
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@18
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-get15(Landroid/widget/CalendarViewLegacyDelegate;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_1

    #@1e
    if-eqz v0, :cond_3

    #@20
    .line 1508
    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    #@22
    .line 1509
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@24
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-get2(Landroid/widget/CalendarViewLegacyDelegate;)I

    #@27
    move-result v2

    #@28
    add-int/lit8 v2, v2, -0x1

    #@2a
    sub-int/2addr v2, v1

    #@2b
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    #@2d
    mul-int/2addr v2, v3

    #@2e
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    #@30
    div-int/2addr v2, v3

    #@31
    iput v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    #@33
    .line 1514
    :goto_1
    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    #@35
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    #@37
    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    #@39
    div-int/2addr v3, v4

    #@3a
    add-int/2addr v2, v3

    #@3b
    iput v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedRight:I

    #@3d
    .line 1498
    .end local v0    # "isLayoutRtl":Z
    .end local v1    # "selectedPosition":I
    :cond_2
    return-void

    #@3e
    .line 1506
    .restart local v0    # "isLayoutRtl":Z
    .restart local v1    # "selectedPosition":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@40
    goto :goto_0

    #@41
    .line 1512
    :cond_4
    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    #@43
    mul-int/2addr v2, v1

    #@44
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    #@46
    div-int/2addr v2, v3

    #@47
    iput v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedLeft:I

    #@49
    goto :goto_1
.end method


# virtual methods
.method public getDayFromLocation(FLjava/util/Calendar;)Z
    .locals 7
    .param p1, "x"    # F
    .param p2, "outCalendar"    # Ljava/util/Calendar;

    #@0
    .prologue
    .line 1320
    invoke-virtual {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->isLayoutRtl()Z

    #@3
    move-result v2

    #@4
    .line 1325
    .local v2, "isLayoutRtl":Z
    if-eqz v2, :cond_2

    #@6
    .line 1326
    const/4 v3, 0x0

    #@7
    .line 1327
    .local v3, "start":I
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@9
    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->-get15(Landroid/widget/CalendarViewLegacyDelegate;)Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_1

    #@f
    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    #@11
    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    #@13
    iget v6, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    #@15
    div-int/2addr v5, v6

    #@16
    sub-int v1, v4, v5

    #@18
    .line 1333
    .local v1, "end":I
    :goto_0
    int-to-float v4, v3

    #@19
    cmpg-float v4, p1, v4

    #@1b
    if-ltz v4, :cond_0

    #@1d
    int-to-float v4, v1

    #@1e
    cmpl-float v4, p1, v4

    #@20
    if-lez v4, :cond_4

    #@22
    .line 1334
    :cond_0
    invoke-virtual {p2}, Ljava/util/Calendar;->clear()V

    #@25
    .line 1335
    const/4 v4, 0x0

    #@26
    return v4

    #@27
    .line 1327
    .end local v1    # "end":I
    :cond_1
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    #@29
    .restart local v1    # "end":I
    goto :goto_0

    #@2a
    .line 1329
    .end local v1    # "end":I
    .end local v3    # "start":I
    :cond_2
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@2c
    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->-get15(Landroid/widget/CalendarViewLegacyDelegate;)Z

    #@2f
    move-result v4

    #@30
    if-eqz v4, :cond_3

    #@32
    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    #@34
    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    #@36
    div-int v3, v4, v5

    #@38
    .line 1330
    .restart local v3    # "start":I
    :goto_1
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    #@3a
    .restart local v1    # "end":I
    goto :goto_0

    #@3b
    .line 1329
    .end local v1    # "end":I
    .end local v3    # "start":I
    :cond_3
    const/4 v3, 0x0

    #@3c
    .restart local v3    # "start":I
    goto :goto_1

    #@3d
    .line 1339
    .restart local v1    # "end":I
    :cond_4
    int-to-float v4, v3

    #@3e
    sub-float v4, p1, v4

    #@40
    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@42
    invoke-static {v5}, Landroid/widget/CalendarViewLegacyDelegate;->-get2(Landroid/widget/CalendarViewLegacyDelegate;)I

    #@45
    move-result v5

    #@46
    int-to-float v5, v5

    #@47
    mul-float/2addr v4, v5

    #@48
    sub-int v5, v1, v3

    #@4a
    int-to-float v5, v5

    #@4b
    div-float/2addr v4, v5

    #@4c
    float-to-int v0, v4

    #@4d
    .line 1341
    .local v0, "dayPosition":I
    if-eqz v2, :cond_5

    #@4f
    .line 1342
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@51
    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->-get2(Landroid/widget/CalendarViewLegacyDelegate;)I

    #@54
    move-result v4

    #@55
    add-int/lit8 v4, v4, -0x1

    #@57
    sub-int v0, v4, v0

    #@59
    .line 1345
    :cond_5
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mFirstDay:Ljava/util/Calendar;

    #@5b
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    #@5e
    move-result-wide v4

    #@5f
    invoke-virtual {p2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@62
    .line 1346
    const/4 v4, 0x5

    #@63
    invoke-virtual {p2, v4, v0}, Ljava/util/Calendar;->add(II)V

    #@66
    .line 1348
    const/4 v4, 0x1

    #@67
    return v4
.end method

.method public getFirstDay()Ljava/util/Calendar;
    .locals 1

    #@0
    .prologue
    .line 1309
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mFirstDay:Ljava/util/Calendar;

    #@2
    return-object v0
.end method

.method public getMonthOfFirstWeekDay()I
    .locals 1

    #@0
    .prologue
    .line 1291
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthOfFirstWeekDay:I

    #@2
    return v0
.end method

.method public getMonthOfLastWeekDay()I
    .locals 1

    #@0
    .prologue
    .line 1300
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mLastWeekDayMonth:I

    #@2
    return v0
.end method

.method public init(III)V
    .locals 9
    .param p1, "weekNumber"    # I
    .param p2, "selectedWeekDay"    # I
    .param p3, "focusedMonth"    # I

    #@0
    .prologue
    .line 1217
    iput p2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedDay:I

    #@2
    .line 1218
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mSelectedDay:I

    #@4
    const/4 v4, -0x1

    #@5
    if-eq v3, v4, :cond_2

    #@7
    const/4 v3, 0x1

    #@8
    :goto_0
    iput-boolean v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasSelectedDay:Z

    #@a
    .line 1219
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@c
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get15(Landroid/widget/CalendarViewLegacyDelegate;)Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_3

    #@12
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@14
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get2(Landroid/widget/CalendarViewLegacyDelegate;)I

    #@17
    move-result v3

    #@18
    add-int/lit8 v3, v3, 0x1

    #@1a
    :goto_1
    iput v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    #@1c
    .line 1220
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWeek:I

    #@1e
    .line 1221
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@20
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    #@23
    move-result-object v3

    #@24
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@26
    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->-get9(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    #@2d
    move-result-wide v4

    #@2e
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@31
    .line 1223
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@33
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    #@36
    move-result-object v3

    #@37
    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWeek:I

    #@39
    const/4 v5, 0x3

    #@3a
    invoke-virtual {v3, v5, v4}, Ljava/util/Calendar;->add(II)V

    #@3d
    .line 1224
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@3f
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    #@42
    move-result-object v3

    #@43
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@45
    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->-get3(Landroid/widget/CalendarViewLegacyDelegate;)I

    #@48
    move-result v4

    #@49
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    #@4c
    .line 1227
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    #@4e
    new-array v3, v3, [Ljava/lang/String;

    #@50
    iput-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    #@52
    .line 1228
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    #@54
    new-array v3, v3, [Z

    #@56
    iput-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mFocusDay:[Z

    #@58
    .line 1231
    const/4 v1, 0x0

    #@59
    .line 1232
    .local v1, "i":I
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@5b
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get15(Landroid/widget/CalendarViewLegacyDelegate;)Z

    #@5e
    move-result v3

    #@5f
    if-eqz v3, :cond_0

    #@61
    .line 1233
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    #@63
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@66
    move-result-object v4

    #@67
    const-string/jumbo v5, "%d"

    #@6a
    const/4 v6, 0x1

    #@6b
    new-array v6, v6, [Ljava/lang/Object;

    #@6d
    .line 1234
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@6f
    invoke-static {v7}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    #@72
    move-result-object v7

    #@73
    const/4 v8, 0x3

    #@74
    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    #@77
    move-result v7

    #@78
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7b
    move-result-object v7

    #@7c
    const/4 v8, 0x0

    #@7d
    aput-object v7, v6, v8

    #@7f
    .line 1233
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@82
    move-result-object v4

    #@83
    const/4 v5, 0x0

    #@84
    aput-object v4, v3, v5

    #@86
    .line 1235
    const/4 v1, 0x1

    #@87
    .line 1239
    :cond_0
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@89
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get3(Landroid/widget/CalendarViewLegacyDelegate;)I

    #@8c
    move-result v3

    #@8d
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@8f
    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    #@92
    move-result-object v4

    #@93
    const/4 v5, 0x7

    #@94
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    #@97
    move-result v4

    #@98
    sub-int v0, v3, v4

    #@9a
    .line 1240
    .local v0, "diff":I
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@9c
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    #@9f
    move-result-object v3

    #@a0
    const/4 v4, 0x5

    #@a1
    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->add(II)V

    #@a4
    .line 1242
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@a6
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    #@a9
    move-result-object v3

    #@aa
    invoke-virtual {v3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    #@ad
    move-result-object v3

    #@ae
    check-cast v3, Ljava/util/Calendar;

    #@b0
    iput-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mFirstDay:Ljava/util/Calendar;

    #@b2
    .line 1243
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@b4
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    #@b7
    move-result-object v3

    #@b8
    const/4 v4, 0x2

    #@b9
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    #@bc
    move-result v3

    #@bd
    iput v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mMonthOfFirstWeekDay:I

    #@bf
    .line 1245
    const/4 v3, 0x1

    #@c0
    iput-boolean v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasUnfocusedDay:Z

    #@c2
    .line 1246
    :goto_2
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mNumCells:I

    #@c4
    if-ge v1, v3, :cond_7

    #@c6
    .line 1247
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@c8
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    #@cb
    move-result-object v3

    #@cc
    const/4 v4, 0x2

    #@cd
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    #@d0
    move-result v3

    #@d1
    if-ne v3, p3, :cond_4

    #@d3
    const/4 v2, 0x1

    #@d4
    .line 1248
    .local v2, "isFocusedDay":Z
    :goto_3
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mFocusDay:[Z

    #@d6
    aput-boolean v2, v3, v1

    #@d8
    .line 1249
    iget-boolean v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasFocusedDay:Z

    #@da
    or-int/2addr v3, v2

    #@db
    iput-boolean v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasFocusedDay:Z

    #@dd
    .line 1250
    iget-boolean v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasUnfocusedDay:Z

    #@df
    if-eqz v2, :cond_5

    #@e1
    const/4 v3, 0x0

    #@e2
    :goto_4
    and-int/2addr v3, v4

    #@e3
    iput-boolean v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasUnfocusedDay:Z

    #@e5
    .line 1252
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@e7
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    #@ea
    move-result-object v3

    #@eb
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@ed
    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->-get9(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    #@f0
    move-result-object v4

    #@f1
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    #@f4
    move-result v3

    #@f5
    if-nez v3, :cond_1

    #@f7
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@f9
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    #@fc
    move-result-object v3

    #@fd
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@ff
    invoke-static {v4}, Landroid/widget/CalendarViewLegacyDelegate;->-get8(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    #@102
    move-result-object v4

    #@103
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    #@106
    move-result v3

    #@107
    if-eqz v3, :cond_6

    #@109
    .line 1253
    :cond_1
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    #@10b
    const-string/jumbo v4, ""

    #@10e
    aput-object v4, v3, v1

    #@110
    .line 1258
    :goto_5
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@112
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    #@115
    move-result-object v3

    #@116
    const/4 v4, 0x5

    #@117
    const/4 v5, 0x1

    #@118
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    #@11b
    .line 1246
    add-int/lit8 v1, v1, 0x1

    #@11d
    goto :goto_2

    #@11e
    .line 1218
    .end local v0    # "diff":I
    .end local v1    # "i":I
    .end local v2    # "isFocusedDay":Z
    :cond_2
    const/4 v3, 0x0

    #@11f
    goto/16 :goto_0

    #@121
    .line 1219
    :cond_3
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@123
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get2(Landroid/widget/CalendarViewLegacyDelegate;)I

    #@126
    move-result v3

    #@127
    goto/16 :goto_1

    #@129
    .line 1247
    .restart local v0    # "diff":I
    .restart local v1    # "i":I
    :cond_4
    const/4 v2, 0x0

    #@12a
    .restart local v2    # "isFocusedDay":Z
    goto :goto_3

    #@12b
    .line 1250
    :cond_5
    const/4 v3, 0x1

    #@12c
    goto :goto_4

    #@12d
    .line 1255
    :cond_6
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mDayNumbers:[Ljava/lang/String;

    #@12f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@132
    move-result-object v4

    #@133
    const-string/jumbo v5, "%d"

    #@136
    const/4 v6, 0x1

    #@137
    new-array v6, v6, [Ljava/lang/Object;

    #@139
    .line 1256
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@13b
    invoke-static {v7}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    #@13e
    move-result-object v7

    #@13f
    const/4 v8, 0x5

    #@140
    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    #@143
    move-result v7

    #@144
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@147
    move-result-object v7

    #@148
    const/4 v8, 0x0

    #@149
    aput-object v7, v6, v8

    #@14b
    .line 1255
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@14e
    move-result-object v4

    #@14f
    aput-object v4, v3, v1

    #@151
    goto :goto_5

    #@152
    .line 1262
    .end local v2    # "isFocusedDay":Z
    :cond_7
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@154
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    #@157
    move-result-object v3

    #@158
    const/4 v4, 0x5

    #@159
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    #@15c
    move-result v3

    #@15d
    const/4 v4, 0x1

    #@15e
    if-ne v3, v4, :cond_8

    #@160
    .line 1263
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@162
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    #@165
    move-result-object v3

    #@166
    const/4 v4, 0x5

    #@167
    const/4 v5, -0x1

    #@168
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    #@16b
    .line 1265
    :cond_8
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@16d
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    #@170
    move-result-object v3

    #@171
    const/4 v4, 0x2

    #@172
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    #@175
    move-result v3

    #@176
    iput v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mLastWeekDayMonth:I

    #@178
    .line 1267
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->updateSelectionPositions()V

    #@17b
    .line 1216
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 1353
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->drawBackground(Landroid/graphics/Canvas;)V

    #@3
    .line 1354
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->drawWeekNumbersAndDates(Landroid/graphics/Canvas;)V

    #@6
    .line 1355
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->drawWeekSeparators(Landroid/graphics/Canvas;)V

    #@9
    .line 1356
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->drawSelectedDateVerticalBars(Landroid/graphics/Canvas;)V

    #@c
    .line 1352
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 1520
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@2
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->-get7(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    #@9
    move-result v0

    #@a
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@c
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-get7(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingTop()I

    #@13
    move-result v1

    #@14
    sub-int/2addr v0, v1

    #@15
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@17
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-get7(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingBottom()I

    #@1e
    move-result v1

    #@1f
    sub-int/2addr v0, v1

    #@20
    .line 1521
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@22
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-get16(Landroid/widget/CalendarViewLegacyDelegate;)I

    #@25
    move-result v1

    #@26
    .line 1520
    div-int/2addr v0, v1

    #@27
    iput v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHeight:I

    #@29
    .line 1522
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@2c
    move-result v0

    #@2d
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHeight:I

    #@2f
    invoke-virtual {p0, v0, v1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->setMeasuredDimension(II)V

    #@32
    .line 1519
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    #@0
    .prologue
    .line 1491
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mWidth:I

    #@2
    .line 1492
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->updateSelectionPositions()V

    #@5
    .line 1490
    return-void
.end method
