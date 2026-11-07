.class public Landroid/widget/DatePicker;
.super Landroid/widget/FrameLayout;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DatePicker$DatePickerDelegate;,
        Landroid/widget/DatePicker$OnDateChangedListener;,
        Landroid/widget/DatePicker$ValidationCallback;,
        Landroid/widget/DatePicker$AbstractDatePickerDelegate;,
        Landroid/widget/DatePicker$DatePickerMode;
    }
.end annotation


# static fields
.field private static final greylist-max-o LOG_TAG:Ljava/lang/String;

.field public static final blacklist MODE_CALENDAR:I = 0x2

.field public static final blacklist MODE_SPINNER:I = 0x1


# instance fields
.field private final greylist mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

.field private final greylist-max-o mMode:I


# direct methods
.method public static synthetic blacklist $r8$lambda$nJJlSB6ASH8SEEf0_qDg7_EudW0(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/widget/DatePicker;III)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/widget/DatePicker;->lambda$new$0(Landroid/content/Context;Landroid/widget/DatePicker;III)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/widget/DatePicker;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 89
    const-class v0, Landroid/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/DatePicker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 144
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 147
    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 148
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 152
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 155
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 158
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getImportantForAutofill()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_d

    .line 159
    invoke-virtual {p0, v1}, Landroid/widget/DatePicker;->setImportantForAutofill(I)V

    .line 162
    :cond_d
    sget-object v0, Lcom/android/internal/R$styleable;->DatePicker:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 164
    .local v6, "a":Landroid/content/res/TypedArray;
    sget-object v4, Lcom/android/internal/R$styleable;->DatePicker:[I

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v7, p3

    move v8, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    .local v3, "context":Landroid/content/Context;
    .local v5, "attrs":Landroid/util/AttributeSet;
    .local v7, "defStyleAttr":I
    .local v8, "defStyleRes":I
    invoke-virtual/range {v2 .. v8}, Landroid/widget/DatePicker;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 166
    const/16 p1, 0x11

    const/4 p2, 0x0

    invoke-virtual {v6, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 167
    .local p1, "isDialogMode":Z
    const/16 p3, 0x10

    invoke-virtual {v6, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 168
    .local p3, "requestedMode":I
    const/4 p4, 0x3

    invoke-virtual {v6, p4, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 169
    .local p2, "firstDayOfWeek":I
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 171
    const/4 p4, 0x2

    if-ne p3, p4, :cond_45

    if-eqz p1, :cond_45

    .line 174
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x10e0167

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p4

    iput p4, v2, Landroid/widget/DatePicker;->mMode:I

    goto :goto_47

    .line 176
    :cond_45
    iput p3, v2, Landroid/widget/DatePicker;->mMode:I

    .line 179
    :goto_47
    iget p4, v2, Landroid/widget/DatePicker;->mMode:I

    packed-switch p4, :pswitch_data_6a

    .line 185
    invoke-direct {p0, v3, v5, v7, v8}, Landroid/widget/DatePicker;->createSpinnerUIDelegate(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/widget/DatePicker$DatePickerDelegate;

    move-result-object p4

    iput-object p4, v2, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    goto :goto_5a

    .line 181
    :pswitch_53
    invoke-direct {p0, v3, v5, v7, v8}, Landroid/widget/DatePicker;->createCalendarUIDelegate(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/widget/DatePicker$DatePickerDelegate;

    move-result-object p4

    iput-object p4, v2, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    .line 182
    nop

    .line 189
    :goto_5a
    if-eqz p2, :cond_5f

    .line 190
    invoke-virtual {p0, p2}, Landroid/widget/DatePicker;->setFirstDayOfWeek(I)V

    .line 193
    :cond_5f
    iget-object p4, v2, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    new-instance v0, Landroid/widget/DatePicker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v3}, Landroid/widget/DatePicker$$ExternalSyntheticLambda0;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;)V

    invoke-interface {p4, v0}, Landroid/widget/DatePicker$DatePickerDelegate;->setAutoFillChangeListener(Landroid/widget/DatePicker$OnDateChangedListener;)V

    .line 199
    return-void

    :pswitch_data_6a
    .packed-switch 0x2
        :pswitch_53
    .end packed-switch
.end method

.method private greylist-max-o createCalendarUIDelegate(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/widget/DatePicker$DatePickerDelegate;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 208
    new-instance v0, Landroid/widget/DatePickerCalendarDelegate;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    .local v2, "context":Landroid/content/Context;
    .local v3, "attrs":Landroid/util/AttributeSet;
    .local v4, "defStyleAttr":I
    .local v5, "defStyleRes":I
    invoke-direct/range {v0 .. v5}, Landroid/widget/DatePickerCalendarDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-object v0
.end method

.method private greylist-max-o createSpinnerUIDelegate(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/widget/DatePicker$DatePickerDelegate;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 203
    new-instance v0, Landroid/widget/DatePickerSpinnerDelegate;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    .local v2, "context":Landroid/content/Context;
    .local v3, "attrs":Landroid/util/AttributeSet;
    .local v4, "defStyleAttr":I
    .local v5, "defStyleRes":I
    invoke-direct/range {v0 .. v5}, Landroid/widget/DatePickerSpinnerDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-object v0
.end method

.method private synthetic blacklist lambda$new$0(Landroid/content/Context;Landroid/widget/DatePicker;III)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/widget/DatePicker;
    .param p3, "y"    # I
    .param p4, "m"    # I
    .param p5, "d"    # I

    .line 194
    const-class v0, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 195
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_d

    .line 196
    invoke-virtual {v0, p0}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;)V

    .line 198
    :cond_d
    return-void
.end method


# virtual methods
.method public whitelist autofill(Landroid/view/autofill/AutofillValue;)V
    .registers 3
    .param p1, "value"    # Landroid/view/autofill/AutofillValue;

    .line 828
    invoke-virtual {p0}, Landroid/widget/DatePicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 830
    :cond_7
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->autofill(Landroid/view/autofill/AutofillValue;)V

    .line 831
    return-void
.end method

.method public greylist-max-o dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 368
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .registers 4
    .param p1, "structure"    # Landroid/view/ViewStructure;
    .param p2, "flags"    # I

    .line 822
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setAutofillId(Landroid/view/autofill/AutofillId;)V

    .line 823
    invoke-virtual {p0, p1, p2}, Landroid/widget/DatePicker;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 824
    return-void
.end method

.method protected whitelist dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 517
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/widget/DatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 518
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 380
    const-class v0, Landroid/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAutofillType()I
    .registers 2

    .line 835
    invoke-virtual {p0}, Landroid/widget/DatePicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist getAutofillValue()Landroid/view/autofill/AutofillValue;
    .registers 2

    .line 840
    invoke-virtual {p0}, Landroid/widget/DatePicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method public whitelist getCalendarView()Landroid/widget/CalendarView;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 464
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getCalendarView()Landroid/widget/CalendarView;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCalendarViewShown()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 445
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getCalendarViewShown()Z

    move-result v0

    return v0
.end method

.method public whitelist getDayOfMonth()I
    .registers 2

    .line 285
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getDayOfMonth()I

    move-result v0

    return v0
.end method

.method public whitelist getFirstDayOfWeek()I
    .registers 2

    .line 428
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public whitelist getMaxDate()J
    .registers 3

    .line 326
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getMaxDate()Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getMinDate()J
    .registers 3

    .line 300
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getMinDate()Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getMode()I
    .registers 2

    .line 225
    iget v0, p0, Landroid/widget/DatePicker;->mMode:I

    return v0
.end method

.method public whitelist getMonth()I
    .registers 2

    .line 277
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getMonth()I

    move-result v0

    return v0
.end method

.method public whitelist getSpinnersShown()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 496
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getSpinnersShown()Z

    move-result v0

    return v0
.end method

.method public whitelist getYear()I
    .registers 2

    .line 269
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getYear()I

    move-result v0

    return v0
.end method

.method public whitelist init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V
    .registers 6
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Landroid/widget/DatePicker$OnDateChangedListener;

    .line 240
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/DatePicker$DatePickerDelegate;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 241
    return-void
.end method

.method public whitelist isEnabled()Z
    .registers 2

    .line 362
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 385
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 386
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 387
    return-void
.end method

.method public greylist-max-o onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 374
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 375
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 376
    return-void
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 528
    move-object v0, p1

    check-cast v0, Landroid/view/View$BaseSavedState;

    .line 529
    .local v0, "ss":Landroid/view/View$BaseSavedState;
    invoke-virtual {v0}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 530
    iget-object v1, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v1, v0}, Landroid/widget/DatePicker$DatePickerDelegate;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 531
    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 522
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 523
    .local v0, "superState":Landroid/os/Parcelable;
    iget-object v1, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v1, v0}, Landroid/widget/DatePicker$DatePickerDelegate;->onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v1

    return-object v1
.end method

.method public whitelist setCalendarViewShown(Z)V
    .registers 3
    .param p1, "shown"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 480
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->setCalendarViewShown(Z)V

    .line 481
    return-void
.end method

.method public whitelist setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 353
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_9

    .line 354
    return-void

    .line 356
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 357
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->setEnabled(Z)V

    .line 358
    return-void
.end method

.method public whitelist setFirstDayOfWeek(I)V
    .registers 4
    .param p1, "firstDayOfWeek"    # I

    .line 405
    const/4 v0, 0x1

    if-lt p1, v0, :cond_c

    const/4 v0, 0x7

    if-gt p1, v0, :cond_c

    .line 408
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->setFirstDayOfWeek(I)V

    .line 409
    return-void

    .line 406
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "firstDayOfWeek must be between 1 and 7"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMaxDate(J)V
    .registers 4
    .param p1, "maxDate"    # J

    .line 337
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1, p2}, Landroid/widget/DatePicker$DatePickerDelegate;->setMaxDate(J)V

    .line 338
    return-void
.end method

.method public whitelist setMinDate(J)V
    .registers 4
    .param p1, "minDate"    # J

    .line 311
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1, p2}, Landroid/widget/DatePicker$DatePickerDelegate;->setMinDate(J)V

    .line 312
    return-void
.end method

.method public whitelist setOnDateChangedListener(Landroid/widget/DatePicker$OnDateChangedListener;)V
    .registers 3
    .param p1, "onDateChangedListener"    # Landroid/widget/DatePicker$OnDateChangedListener;

    .line 250
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->setOnDateChangedListener(Landroid/widget/DatePicker$OnDateChangedListener;)V

    .line 251
    return-void
.end method

.method public whitelist setSpinnersShown(Z)V
    .registers 3
    .param p1, "shown"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 512
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->setSpinnersShown(Z)V

    .line 513
    return-void
.end method

.method public greylist setValidationCallback(Landroid/widget/DatePicker$ValidationCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/widget/DatePicker$ValidationCallback;

    .line 348
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->setValidationCallback(Landroid/widget/DatePicker$ValidationCallback;)V

    .line 349
    return-void
.end method

.method public whitelist updateDate(III)V
    .registers 5
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 261
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/DatePicker$DatePickerDelegate;->updateDate(III)V

    .line 262
    return-void
.end method
