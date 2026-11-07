.class abstract Landroid/widget/TimePicker$AbstractTimePickerDelegate;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Landroid/widget/TimePicker$TimePickerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractTimePickerDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;
    }
.end annotation


# instance fields
.field protected greylist-max-o mAutoFillChangeListener:Landroid/widget/TimePicker$OnTimeChangedListener;

.field private greylist-max-o mAutofilledValue:J

.field protected final greylist-max-o mContext:Landroid/content/Context;

.field protected final greylist-max-o mDelegator:Landroid/widget/TimePicker;

.field protected final greylist-max-o mLocale:Ljava/util/Locale;

.field protected greylist-max-o mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/widget/TimePicker;Landroid/content/Context;)V
    .registers 4
    .param p1, "delegator"    # Landroid/widget/TimePicker;
    .param p2, "context"    # Landroid/content/Context;

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    iput-object p1, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Landroid/widget/TimePicker;

    .line 452
    iput-object p2, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    .line 453
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    .line 454
    return-void
.end method


# virtual methods
.method public final greylist-max-o autofill(Landroid/view/autofill/AutofillValue;)V
    .registers 7
    .param p1, "value"    # Landroid/view/autofill/AutofillValue;

    .line 468
    if-eqz p1, :cond_28

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isDate()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_28

    .line 473
    :cond_9
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getDateValue()J

    move-result-wide v0

    .line 475
    .local v0, "time":J
    iget-object v2, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v2}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v2

    .line 476
    .local v2, "cal":Landroid/icu/util/Calendar;
    invoke-virtual {v2, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 477
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->setDate(II)V

    .line 481
    iput-wide v0, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mAutofilledValue:J

    .line 482
    return-void

    .line 469
    .end local v0    # "time":J
    .end local v2    # "cal":Landroid/icu/util/Calendar;
    :cond_28
    :goto_28
    invoke-static {}, Landroid/widget/TimePicker;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

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

    .line 470
    return-void
.end method

.method public final greylist-max-o getAutofillValue()Landroid/view/autofill/AutofillValue;
    .registers 5

    .line 486
    iget-wide v0, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mAutofilledValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 487
    iget-wide v0, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mAutofilledValue:J

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillValue;->forDate(J)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    return-object v0

    .line 490
    :cond_f
    iget-object v0, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    .line 491
    .local v0, "cal":Landroid/icu/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {p0}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->getHour()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    .line 492
    const/16 v1, 0xc

    invoke-virtual {p0}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->getMinute()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    .line 493
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/view/autofill/AutofillValue;->forDate(J)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    return-object v1
.end method

.method protected greylist-max-o resetAutofilledValue()V
    .registers 3

    .line 501
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mAutofilledValue:J

    .line 502
    return-void
.end method

.method public greylist-max-o setAutoFillChangeListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    .registers 2
    .param p1, "callback"    # Landroid/widget/TimePicker$OnTimeChangedListener;

    .line 463
    iput-object p1, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mAutoFillChangeListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    .line 464
    return-void
.end method

.method public greylist-max-o setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    .registers 2
    .param p1, "callback"    # Landroid/widget/TimePicker$OnTimeChangedListener;

    .line 458
    iput-object p1, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    .line 459
    return-void
.end method
