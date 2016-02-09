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


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCurrentLocale:Ljava/util/Locale;

.field protected mDelegator:Landroid/widget/DatePicker;

.field protected mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

.field protected mValidationCallback:Landroid/widget/DatePicker$ValidationCallback;


# direct methods
.method public constructor <init>(Landroid/widget/DatePicker;Landroid/content/Context;)V
    .locals 1
    .param p1, "delegator"    # Landroid/widget/DatePicker;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 503
    iput-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    #@5
    .line 504
    iput-object p2, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    #@7
    .line 506
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p0, v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    #@e
    .line 502
    return-void
.end method


# virtual methods
.method protected onLocaleChanged(Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 527
    return-void
.end method

.method protected onValidationChanged(Z)V
    .locals 1
    .param p1, "valid"    # Z

    #@0
    .prologue
    .line 522
    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mValidationCallback:Landroid/widget/DatePicker$ValidationCallback;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 523
    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mValidationCallback:Landroid/widget/DatePicker$ValidationCallback;

    #@6
    invoke-interface {v0, p1}, Landroid/widget/DatePicker$ValidationCallback;->onValidationChanged(Z)V

    #@9
    .line 521
    :cond_0
    return-void
.end method

.method protected setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 510
    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    #@2
    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 511
    iput-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    #@a
    .line 512
    invoke-virtual {p0, p1}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->onLocaleChanged(Ljava/util/Locale;)V

    #@d
    .line 509
    :cond_0
    return-void
.end method

.method public setValidationCallback(Landroid/widget/DatePicker$ValidationCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/widget/DatePicker$ValidationCallback;

    #@0
    .prologue
    .line 518
    iput-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mValidationCallback:Landroid/widget/DatePicker$ValidationCallback;

    #@2
    .line 517
    return-void
.end method
