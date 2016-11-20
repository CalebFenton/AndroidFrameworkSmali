.class abstract Landroid/widget/CalendarView$AbstractCalendarViewDelegate;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Landroid/widget/CalendarView$CalendarViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractCalendarViewDelegate"
.end annotation


# static fields
.field protected static final DEFAULT_MAX_DATE:Ljava/lang/String; = "01/01/2100"

.field protected static final DEFAULT_MIN_DATE:Ljava/lang/String; = "01/01/1900"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCurrentLocale:Ljava/util/Locale;

.field protected mDelegator:Landroid/widget/CalendarView;


# direct methods
.method constructor <init>(Landroid/widget/CalendarView;Landroid/content/Context;)V
    .locals 1
    .param p1, "delegator"    # Landroid/widget/CalendarView;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 629
    iput-object p1, p0, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->mDelegator:Landroid/widget/CalendarView;

    #@5
    .line 630
    iput-object p2, p0, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->mContext:Landroid/content/Context;

    #@7
    .line 633
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p0, v0}, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    #@e
    .line 628
    return-void
.end method


# virtual methods
.method public getFocusedMonthDateColor()I
    .locals 1

    #@0
    .prologue
    .line 673
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getSelectedDateVerticalBar()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 724
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getSelectedWeekBackgroundColor()I
    .locals 1

    #@0
    .prologue
    .line 662
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getShowWeekNumber()Z
    .locals 1

    #@0
    .prologue
    .line 735
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getShownWeekCount()I
    .locals 1

    #@0
    .prologue
    .line 651
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getUnfocusedMonthDateColor()I
    .locals 1

    #@0
    .prologue
    .line 684
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getWeekNumberColor()I
    .locals 1

    #@0
    .prologue
    .line 696
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getWeekSeparatorLineColor()I
    .locals 1

    #@0
    .prologue
    .line 708
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 739
    return-void
.end method

.method protected setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 637
    iget-object v0, p0, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->mCurrentLocale:Ljava/util/Locale;

    #@2
    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 638
    return-void

    #@9
    .line 640
    :cond_0
    iput-object p1, p0, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->mCurrentLocale:Ljava/util/Locale;

    #@b
    .line 636
    return-void
.end method

.method public setFocusedMonthDateColor(I)V
    .locals 0
    .param p1, "color"    # I

    #@0
    .prologue
    .line 666
    return-void
.end method

.method public setSelectedDateVerticalBar(I)V
    .locals 0
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 712
    return-void
.end method

.method public setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 717
    return-void
.end method

.method public setSelectedWeekBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    #@0
    .prologue
    .line 655
    return-void
.end method

.method public setShowWeekNumber(Z)V
    .locals 0
    .param p1, "showWeekNumber"    # Z

    #@0
    .prologue
    .line 728
    return-void
.end method

.method public setShownWeekCount(I)V
    .locals 0
    .param p1, "count"    # I

    #@0
    .prologue
    .line 644
    return-void
.end method

.method public setUnfocusedMonthDateColor(I)V
    .locals 0
    .param p1, "color"    # I

    #@0
    .prologue
    .line 677
    return-void
.end method

.method public setWeekNumberColor(I)V
    .locals 0
    .param p1, "color"    # I

    #@0
    .prologue
    .line 688
    return-void
.end method

.method public setWeekSeparatorLineColor(I)V
    .locals 0
    .param p1, "color"    # I

    #@0
    .prologue
    .line 700
    return-void
.end method
