.class abstract Landroid/widget/DatePicker$AbstractDatePickerDelegate;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/widget/DatePicker$DatePickerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractDatePickerDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;
    }
.end annotation


# instance fields
.field protected greylist-max-o mAutoFillChangeListener:Landroid/widget/DatePicker$OnDateChangedListener;

.field private greylist-max-o mAutofilledValue:J

.field protected greylist-max-o mContext:Landroid/content/Context;

.field protected greylist-max-o mCurrentDate:Landroid/icu/util/Calendar;

.field protected greylist-max-o mCurrentLocale:Ljava/util/Locale;

.field protected greylist-max-o mDelegator:Landroid/widget/DatePicker;

.field protected greylist-max-o mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

.field protected greylist-max-o mValidationCallback:Landroid/widget/DatePicker$ValidationCallback;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/widget/DatePicker;Landroid/content/Context;)V
    .registers 4
    .param p1, "delegator"    # Landroid/widget/DatePicker;
    .param p2, "context"    # Landroid/content/Context;

    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    iput-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    .line 615
    iput-object p2, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    .line 617
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 618
    return-void
.end method


# virtual methods
.method public final greylist-max-o autofill(Landroid/view/autofill/AutofillValue;)V
    .registers 8
    .param p1, "value"    # Landroid/view/autofill/AutofillValue;

    .line 644
    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isDate()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2b

    .line 649
    :cond_9
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getDateValue()J

    move-result-wide v0

    .line 651
    .local v0, "time":J
    iget-object v2, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {v2}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v2

    .line 652
    .local v2, "cal":Landroid/icu/util/Calendar;
    invoke-virtual {v2, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 653
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    .line 654
    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v5

    .line 653
    invoke-virtual {p0, v3, v4, v5}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->updateDate(III)V

    .line 658
    iput-wide v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mAutofilledValue:J

    .line 659
    return-void

    .line 645
    .end local v0    # "time":J
    .end local v2    # "cal":Landroid/icu/util/Calendar;
    :cond_2b
    :goto_2b
    invoke-static {}, Landroid/widget/DatePicker;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " could not be autofilled into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    return-void
.end method

.method public final greylist-max-o getAutofillValue()Landroid/view/autofill/AutofillValue;
    .registers 5

    .line 663
    iget-wide v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mAutofilledValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    .line 664
    iget-wide v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mAutofilledValue:J

    goto :goto_11

    .line 665
    :cond_b
    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    :goto_11
    nop

    .line 666
    .local v0, "time":J
    invoke-static {v0, v1}, Landroid/view/autofill/AutofillValue;->forDate(J)Landroid/view/autofill/AutofillValue;

    move-result-object v2

    return-object v2
.end method

.method protected greylist-max-o getFormattedCurrentDate()Ljava/lang/String;
    .registers 5

    .line 693
    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 v3, 0x16

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected greylist-max-o onLocaleChanged(Ljava/util/Locale;)V
    .registers 2
    .param p1, "locale"    # Ljava/util/Locale;

    .line 685
    return-void
.end method

.method public greylist-max-o onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 689
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->getFormattedCurrentDate()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    return-void
.end method

.method protected greylist-max-o onValidationChanged(Z)V
    .registers 3
    .param p1, "valid"    # Z

    .line 678
    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mValidationCallback:Landroid/widget/DatePicker$ValidationCallback;

    if-eqz v0, :cond_9

    .line 679
    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mValidationCallback:Landroid/widget/DatePicker$ValidationCallback;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$ValidationCallback;->onValidationChanged(Z)V

    .line 681
    :cond_9
    return-void
.end method

.method protected greylist-max-o resetAutofilledValue()V
    .registers 3

    .line 674
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mAutofilledValue:J

    .line 675
    return-void
.end method

.method public greylist-max-o setAutoFillChangeListener(Landroid/widget/DatePicker$OnDateChangedListener;)V
    .registers 2
    .param p1, "callback"    # Landroid/widget/DatePicker$OnDateChangedListener;

    .line 634
    iput-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mAutoFillChangeListener:Landroid/widget/DatePicker$OnDateChangedListener;

    .line 635
    return-void
.end method

.method protected greylist-max-o setCurrentLocale(Ljava/util/Locale;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 621
    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 622
    iput-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    .line 623
    invoke-virtual {p0, p1}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->onLocaleChanged(Ljava/util/Locale;)V

    .line 625
    :cond_d
    return-void
.end method

.method public greylist-max-o setOnDateChangedListener(Landroid/widget/DatePicker$OnDateChangedListener;)V
    .registers 2
    .param p1, "callback"    # Landroid/widget/DatePicker$OnDateChangedListener;

    .line 629
    iput-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    .line 630
    return-void
.end method

.method public greylist-max-o setValidationCallback(Landroid/widget/DatePicker$ValidationCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/widget/DatePicker$ValidationCallback;

    .line 639
    iput-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mValidationCallback:Landroid/widget/DatePicker$ValidationCallback;

    .line 640
    return-void
.end method
