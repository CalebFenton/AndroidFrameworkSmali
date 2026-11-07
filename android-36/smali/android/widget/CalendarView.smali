.class public Landroid/widget/CalendarView;
.super Landroid/widget/FrameLayout;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CalendarView$CalendarViewDelegate;,
        Landroid/widget/CalendarView$OnDateChangeListener;,
        Landroid/widget/CalendarView$AbstractCalendarViewDelegate;
    }
.end annotation


# static fields
.field private static final greylist-max-o DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final greylist-max-o DATE_FORMATTER:Ljava/text/DateFormat;

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "CalendarView"

.field private static final greylist-max-o MODE_HOLO:I = 0x0

.field private static final greylist-max-o MODE_MATERIAL:I = 0x1


# instance fields
.field private final greylist mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 784
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/CalendarView;->DATE_FORMATTER:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 101
    const v0, 0x101035d

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/CalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 107
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 111
    invoke-direct/range {p0 .. p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 113
    sget-object v0, Lcom/android/internal/R$styleable;->CalendarView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 115
    .local v0, "a":Landroid/content/res/TypedArray;
    sget-object v2, Lcom/android/internal/R$styleable;->CalendarView:[I

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    move-object v4, v0

    move-object v0, p0

    .end local v0    # "a":Landroid/content/res/TypedArray;
    .local v4, "a":Landroid/content/res/TypedArray;
    invoke-virtual/range {v0 .. v6}, Landroid/widget/CalendarView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 117
    move-object v6, v4

    .end local v4    # "a":Landroid/content/res/TypedArray;
    .local v6, "a":Landroid/content/res/TypedArray;
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 118
    .local v7, "mode":I
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    packed-switch v7, :pswitch_data_46

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid calendarViewMode attribute"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :pswitch_2a
    new-instance v0, Landroid/widget/CalendarViewMaterialDelegate;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/CalendarViewMaterialDelegate;-><init>(Landroid/widget/CalendarView;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    .line 128
    goto :goto_44

    .line 122
    :pswitch_37
    new-instance v0, Landroid/widget/CalendarViewLegacyDelegate;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/CalendarViewLegacyDelegate;-><init>(Landroid/widget/CalendarView;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    .line 124
    nop

    .line 132
    :goto_44
    return-void

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_37
        :pswitch_2a
    .end packed-switch
.end method

.method public static greylist-max-o parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z
    .registers 6
    .param p0, "date"    # Ljava/lang/String;
    .param p1, "outDate"    # Landroid/icu/util/Calendar;

    .line 792
    const/4 v0, 0x0

    if-eqz p0, :cond_3b

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_3b

    .line 797
    :cond_a
    :try_start_a
    sget-object v1, Landroid/widget/CalendarView;->DATE_FORMATTER:Ljava/text/DateFormat;

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 798
    .local v1, "parsedDate":Ljava/util/Date;
    invoke-virtual {p1, v1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_13
    .catch Ljava/text/ParseException; {:try_start_a .. :try_end_13} :catch_15

    .line 799
    const/4 v0, 0x1

    return v0

    .line 800
    .end local v1    # "parsedDate":Ljava/util/Date;
    :catch_15
    move-exception v1

    .line 801
    .local v1, "e":Ljava/text/ParseException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not in format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MM/dd/yyyy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CalendarView"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    return v0

    .line 793
    .end local v1    # "e":Ljava/text/ParseException;
    :cond_3b
    :goto_3b
    return v0
.end method


# virtual methods
.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 589
    const-class v0, Landroid/widget/CalendarView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBoundsForDate(JLandroid/graphics/Rect;)Z
    .registers 5
    .param p1, "date"    # J
    .param p3, "outBounds"    # Landroid/graphics/Rect;

    .line 578
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/CalendarView$CalendarViewDelegate;->getBoundsForDate(JLandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public whitelist getDate()J
    .registers 3

    .line 530
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getDateTextAppearance()I
    .registers 2

    .line 385
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getDateTextAppearance()I

    move-result v0

    return v0
.end method

.method public whitelist getFirstDayOfWeek()I
    .registers 2

    .line 492
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public whitelist getFocusedMonthDateColor()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getFocusedMonthDateColor()I

    move-result v0

    return v0
.end method

.method public whitelist getMaxDate()J
    .registers 3

    .line 432
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getMaxDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getMinDate()J
    .registers 3

    .line 402
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getMinDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getSelectedDateVerticalBar()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 339
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getSelectedDateVerticalBar()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSelectedWeekBackgroundColor()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 186
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getSelectedWeekBackgroundColor()I

    move-result v0

    return v0
.end method

.method public whitelist getShowWeekNumber()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 472
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getShowWeekNumber()Z

    move-result v0

    return v0
.end method

.method public whitelist getShownWeekCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getShownWeekCount()I

    move-result v0

    return v0
.end method

.method public whitelist getUnfocusedMonthDateColor()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 242
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getUnfocusedMonthDateColor()I

    move-result v0

    return v0
.end method

.method public whitelist getWeekDayTextAppearance()I
    .registers 2

    .line 362
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getWeekDayTextAppearance()I

    move-result v0

    return v0
.end method

.method public whitelist getWeekNumberColor()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 270
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getWeekNumberColor()I

    move-result v0

    return v0
.end method

.method public whitelist getWeekSeparatorLineColor()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 298
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getWeekSeparatorLineColor()I

    move-result v0

    return v0
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 583
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 584
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 585
    return-void
.end method

.method public whitelist setDate(J)V
    .registers 4
    .param p1, "date"    # J

    .line 547
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0, p1, p2}, Landroid/widget/CalendarView$CalendarViewDelegate;->setDate(J)V

    .line 548
    return-void
.end method

.method public whitelist setDate(JZZ)V
    .registers 6
    .param p1, "date"    # J
    .param p3, "animate"    # Z
    .param p4, "center"    # Z

    .line 565
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/CalendarView$CalendarViewDelegate;->setDate(JZZ)V

    .line 566
    return-void
.end method

.method public whitelist setDateTextAppearance(I)V
    .registers 3
    .param p1, "resourceId"    # I

    .line 373
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setDateTextAppearance(I)V

    .line 374
    return-void
.end method

.method public whitelist setFirstDayOfWeek(I)V
    .registers 3
    .param p1, "firstDayOfWeek"    # I

    .line 511
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setFirstDayOfWeek(I)V

    .line 512
    return-void
.end method

.method public whitelist setFocusedMonthDateColor(I)V
    .registers 3
    .param p1, "color"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setFocusedMonthDateColor(I)V

    .line 200
    return-void
.end method

.method public whitelist setMaxDate(J)V
    .registers 4
    .param p1, "maxDate"    # J

    .line 445
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0, p1, p2}, Landroid/widget/CalendarView$CalendarViewDelegate;->setMaxDate(J)V

    .line 446
    return-void
.end method

.method public whitelist setMinDate(J)V
    .registers 4
    .param p1, "minDate"    # J

    .line 415
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0, p1, p2}, Landroid/widget/CalendarView$CalendarViewDelegate;->setMinDate(J)V

    .line 416
    return-void
.end method

.method public whitelist setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/widget/CalendarView$OnDateChangeListener;

    .line 520
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V

    .line 521
    return-void
.end method

.method public whitelist setSelectedDateVerticalBar(I)V
    .registers 3
    .param p1, "resourceId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 312
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setSelectedDateVerticalBar(I)V

    .line 313
    return-void
.end method

.method public whitelist setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 326
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V

    .line 327
    return-void
.end method

.method public whitelist setSelectedWeekBackgroundColor(I)V
    .registers 3
    .param p1, "color"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 171
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setSelectedWeekBackgroundColor(I)V

    .line 172
    return-void
.end method

.method public whitelist setShowWeekNumber(Z)V
    .registers 3
    .param p1, "showWeekNumber"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 458
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setShowWeekNumber(Z)V

    .line 459
    return-void
.end method

.method public whitelist setShownWeekCount(I)V
    .registers 3
    .param p1, "count"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 144
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setShownWeekCount(I)V

    .line 145
    return-void
.end method

.method public whitelist setUnfocusedMonthDateColor(I)V
    .registers 3
    .param p1, "color"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 227
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setUnfocusedMonthDateColor(I)V

    .line 228
    return-void
.end method

.method public whitelist setWeekDayTextAppearance(I)V
    .registers 3
    .param p1, "resourceId"    # I

    .line 350
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setWeekDayTextAppearance(I)V

    .line 351
    return-void
.end method

.method public whitelist setWeekNumberColor(I)V
    .registers 3
    .param p1, "color"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 255
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setWeekNumberColor(I)V

    .line 256
    return-void
.end method

.method public whitelist setWeekSeparatorLineColor(I)V
    .registers 3
    .param p1, "color"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 283
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setWeekSeparatorLineColor(I)V

    .line 284
    return-void
.end method
