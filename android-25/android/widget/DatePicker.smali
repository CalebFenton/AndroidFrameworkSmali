.class public Landroid/widget/DatePicker;
.super Landroid/widget/FrameLayout;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DatePicker$AbstractDatePickerDelegate;,
        Landroid/widget/DatePicker$DatePickerDelegate;,
        Landroid/widget/DatePicker$OnDateChangedListener;,
        Landroid/widget/DatePicker$ValidationCallback;
    }
.end annotation


# static fields
.field public static final MODE_CALENDAR:I = 0x2

.field public static final MODE_SPINNER:I = 0x1


# instance fields
.field private final mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

.field private final mMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 130
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 134
    const v0, 0x101035c

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 138
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 142
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 144
    sget-object v4, Lcom/android/internal/R$styleable;->DatePicker:[I

    #@6
    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@9
    move-result-object v0

    #@a
    .line 146
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v4, 0x14

    #@c
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@f
    move-result v2

    #@10
    .line 147
    .local v2, "isDialogMode":Z
    const/16 v4, 0x10

    #@12
    const/4 v5, 0x1

    #@13
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    #@16
    move-result v3

    #@17
    .line 148
    .local v3, "requestedMode":I
    const/4 v4, 0x3

    #@18
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@1b
    move-result v1

    #@1c
    .line 149
    .local v1, "firstDayOfWeek":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1f
    .line 151
    const/4 v4, 0x2

    #@20
    if-ne v3, v4, :cond_1

    #@22
    if-eqz v2, :cond_1

    #@24
    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@27
    move-result-object v4

    #@28
    const v5, 0x10e00c9

    #@2b
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    #@2e
    move-result v4

    #@2f
    iput v4, p0, Landroid/widget/DatePicker;->mMode:I

    #@31
    .line 159
    :goto_0
    iget v4, p0, Landroid/widget/DatePicker;->mMode:I

    #@33
    packed-switch v4, :pswitch_data_0

    #@36
    .line 165
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/DatePicker;->createSpinnerUIDelegate(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/widget/DatePicker$DatePickerDelegate;

    #@39
    move-result-object v4

    #@3a
    iput-object v4, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    #@3c
    .line 169
    :goto_1
    if-eqz v1, :cond_0

    #@3e
    .line 170
    invoke-virtual {p0, v1}, Landroid/widget/DatePicker;->setFirstDayOfWeek(I)V

    #@41
    .line 141
    :cond_0
    return-void

    #@42
    .line 156
    :cond_1
    iput v3, p0, Landroid/widget/DatePicker;->mMode:I

    #@44
    goto :goto_0

    #@45
    .line 161
    :pswitch_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/DatePicker;->createCalendarUIDelegate(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/widget/DatePicker$DatePickerDelegate;

    #@48
    move-result-object v4

    #@49
    iput-object v4, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    #@4b
    goto :goto_1

    #@4c
    .line 159
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private createCalendarUIDelegate(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/widget/DatePicker$DatePickerDelegate;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 181
    new-instance v0, Landroid/widget/DatePickerCalendarDelegate;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move-object v3, p2

    #@5
    move v4, p3

    #@6
    move v5, p4

    #@7
    invoke-direct/range {v0 .. v5}, Landroid/widget/DatePickerCalendarDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@a
    return-object v0
.end method

.method private createSpinnerUIDelegate(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/widget/DatePicker$DatePickerDelegate;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 176
    new-instance v0, Landroid/widget/DatePickerSpinnerDelegate;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move-object v3, p2

    #@5
    move v4, p3

    #@6
    move v5, p4

    #@7
    invoke-direct/range {v0 .. v5}, Landroid/widget/DatePickerSpinnerDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@a
    return-object v0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 321
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    #@2
    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 467
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/widget/DatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    #@3
    .line 466
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 333
    const-class v0, Landroid/widget/DatePicker;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 415
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    #@2
    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getCalendarView()Landroid/widget/CalendarView;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCalendarViewShown()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 396
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    #@2
    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getCalendarViewShown()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDayOfMonth()I
    .locals 1

    #@0
    .prologue
    .line 241
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    #@2
    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getDayOfMonth()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    #@0
    .prologue
    .line 380
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    #@2
    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getFirstDayOfWeek()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMaxDate()J
    .locals 2

    #@0
    .prologue
    .line 280
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    #@2
    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getMaxDate()Landroid/icu/util/Calendar;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@9
    move-result-wide v0

    #@a
    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    #@0
    .prologue
    .line 255
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    #@2
    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getMinDate()Landroid/icu/util/Calendar;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@9
    move-result-wide v0

    #@a
    return-wide v0
.end method

.method public getMode()I
    .locals 1

    #@0
    .prologue
    .line 194
    iget v0, p0, Landroid/widget/DatePicker;->mMode:I

    #@2
    return v0
.end method

.method public getMonth()I
    .locals 1

    #@0
    .prologue
    .line 234
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    #@2
    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getMonth()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getSpinnersShown()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 446
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    #@2
    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getSpinnersShown()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getYear()I
    .locals 1

    #@0
    .prologue
    .line 227
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    #@2
    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getYear()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Landroid/widget/DatePicker$OnDateChangedListener;

    #@0
    .prologue
    .line 209
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    #@2
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/DatePicker$DatePickerDelegate;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    #@5
    .line 208
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 315
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    #@2
    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->isEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 338
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@3
    .line 339
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    #@5
    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@8
    .line 337
    return-void
.end method

.method public onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 327
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 328
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    #@5
    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@8
    .line 326
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 478
    check-cast v0, Landroid/view/View$BaseSavedState;

    #@3
    .line 479
    .local v0, "ss":Landroid/view/View$BaseSavedState;
    invoke-virtual {v0}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    #@6
    move-result-object v1

    #@7
    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@a
    .line 480
    iget-object v1, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    #@c
    invoke-interface {v1, v0}, Landroid/widget/DatePicker$DatePickerDelegate;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@f
    .line 477
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    #@0
    .prologue
    .line 472
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v0

    #@4
    .line 473
    .local v0, "superState":Landroid/os/Parcelable;
    iget-object v1, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    #@6
    invoke-interface {v1, v0}, Landroid/widget/DatePicker$DatePickerDelegate;->onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    #@9
    move-result-object v1

    #@a
    return-object v1
.end method

.method public setCalendarViewShown(Z)V
    .locals 1
    .param p1, "shown"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 431
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    #@2
    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->setCalendarViewShown(Z)V

    #@5
    .line 430
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 306
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    #@2
    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->isEnabled()Z

    #@5
    move-result v0

    #@6
    if-ne v0, p1, :cond_0

    #@8
    .line 307
    return-void

    #@9
    .line 309
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    #@c
    .line 310
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    #@e
    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->setEnabled(Z)V

    #@11
    .line 305
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 2
    .param p1, "firstDayOfWeek"    # I

    #@0
    .prologue
    .line 358
    const/4 v0, 0x1

    #@1
    if-lt p1, v0, :cond_0

    #@3
    const/4 v0, 0x7

    #@4
    if-le p1, v0, :cond_1

    #@6
    .line 359
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "firstDayOfWeek must be between 1 and 7"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 361
    :cond_1
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    #@11
    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->setFirstDayOfWeek(I)V

    #@14
    .line 357
    return-void
.end method

.method public setMaxDate(J)V
    .locals 1
    .param p1, "maxDate"    # J

    #@0
    .prologue
    .line 291
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/widget/DatePicker$DatePickerDelegate;->setMaxDate(J)V

    #@5
    .line 290
    return-void
.end method

.method public setMinDate(J)V
    .locals 1
    .param p1, "minDate"    # J

    #@0
    .prologue
    .line 266
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/widget/DatePicker$DatePickerDelegate;->setMinDate(J)V

    #@5
    .line 265
    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 1
    .param p1, "shown"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 462
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    #@2
    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->setSpinnersShown(Z)V

    #@5
    .line 461
    return-void
.end method

.method public setValidationCallback(Landroid/widget/DatePicker$ValidationCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/widget/DatePicker$ValidationCallback;

    #@0
    .prologue
    .line 301
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    #@2
    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->setValidationCallback(Landroid/widget/DatePicker$ValidationCallback;)V

    #@5
    .line 300
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    #@0
    .prologue
    .line 220
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    #@2
    invoke-interface {v0, p1, p2, p3}, Landroid/widget/DatePicker$DatePickerDelegate;->updateDate(III)V

    #@5
    .line 219
    return-void
.end method
