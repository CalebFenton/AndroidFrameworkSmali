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
.field protected static final greylist-max-o DEFAULT_MAX_DATE:Ljava/lang/String; = "01/01/2100"

.field protected static final greylist-max-o DEFAULT_MIN_DATE:Ljava/lang/String; = "01/01/1900"


# instance fields
.field protected greylist-max-o mContext:Landroid/content/Context;

.field protected greylist-max-o mCurrentLocale:Ljava/util/Locale;

.field protected greylist-max-o mDelegator:Landroid/widget/CalendarView;


# direct methods
.method constructor greylist-max-o <init>(Landroid/widget/CalendarView;Landroid/content/Context;)V
    .registers 4
    .param p1, "delegator"    # Landroid/widget/CalendarView;
    .param p2, "context"    # Landroid/content/Context;

    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 664
    iput-object p1, p0, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->mDelegator:Landroid/widget/CalendarView;

    .line 665
    iput-object p2, p0, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->mContext:Landroid/content/Context;

    .line 668
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 669
    return-void
.end method


# virtual methods
.method public greylist-max-o getFocusedMonthDateColor()I
    .registers 2

    .line 708
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getSelectedDateVerticalBar()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 759
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getSelectedWeekBackgroundColor()I
    .registers 2

    .line 697
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getShowWeekNumber()Z
    .registers 2

    .line 770
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getShownWeekCount()I
    .registers 2

    .line 686
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getUnfocusedMonthDateColor()I
    .registers 2

    .line 719
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getWeekNumberColor()I
    .registers 2

    .line 731
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getWeekSeparatorLineColor()I
    .registers 2

    .line 743
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 777
    return-void
.end method

.method protected greylist-max-o setCurrentLocale(Ljava/util/Locale;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 672
    iget-object v0, p0, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 673
    return-void

    .line 675
    :cond_9
    iput-object p1, p0, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->mCurrentLocale:Ljava/util/Locale;

    .line 676
    return-void
.end method

.method public greylist-max-o setFocusedMonthDateColor(I)V
    .registers 2
    .param p1, "color"    # I

    .line 703
    return-void
.end method

.method public greylist-max-o setSelectedDateVerticalBar(I)V
    .registers 2
    .param p1, "resId"    # I

    .line 749
    return-void
.end method

.method public greylist-max-o setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 754
    return-void
.end method

.method public greylist-max-o setSelectedWeekBackgroundColor(I)V
    .registers 2
    .param p1, "color"    # I

    .line 692
    return-void
.end method

.method public greylist-max-o setShowWeekNumber(Z)V
    .registers 2
    .param p1, "showWeekNumber"    # Z

    .line 765
    return-void
.end method

.method public greylist-max-o setShownWeekCount(I)V
    .registers 2
    .param p1, "count"    # I

    .line 681
    return-void
.end method

.method public greylist-max-o setUnfocusedMonthDateColor(I)V
    .registers 2
    .param p1, "color"    # I

    .line 714
    return-void
.end method

.method public greylist-max-o setWeekNumberColor(I)V
    .registers 2
    .param p1, "color"    # I

    .line 725
    return-void
.end method

.method public greylist-max-o setWeekSeparatorLineColor(I)V
    .registers 2
    .param p1, "color"    # I

    .line 737
    return-void
.end method
