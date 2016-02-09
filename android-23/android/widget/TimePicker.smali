.class public Landroid/widget/TimePicker;
.super Landroid/widget/FrameLayout;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TimePicker$OnTimeChangedListener;,
        Landroid/widget/TimePicker$TimePickerDelegate;,
        Landroid/widget/TimePicker$ValidationCallback;,
        Landroid/widget/TimePicker$AbstractTimePickerDelegate;
    }
.end annotation


# static fields
.field private static final MODE_CLOCK:I = 0x2

.field private static final MODE_SPINNER:I = 0x1


# instance fields
.field private final mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 62
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 66
    const v0, 0x101049d

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 70
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 77
    sget-object v0, Lcom/android/internal/R$styleable;->TimePicker:[I

    #@5
    .line 76
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@8
    move-result-object v6

    #@9
    .line 78
    .local v6, "a":Landroid/content/res/TypedArray;
    const/16 v0, 0x8

    #@b
    const/4 v1, 0x1

    #@c
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@f
    move-result v7

    #@10
    .line 79
    .local v7, "mode":I
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    #@13
    .line 81
    packed-switch v7, :pswitch_data_0

    #@16
    .line 88
    new-instance v0, Landroid/widget/TimePickerSpinnerDelegate;

    #@18
    move-object v1, p0

    #@19
    move-object v2, p1

    #@1a
    move-object v3, p2

    #@1b
    move v4, p3

    #@1c
    move v5, p4

    #@1d
    invoke-direct/range {v0 .. v5}, Landroid/widget/TimePickerSpinnerDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@20
    iput-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    #@22
    .line 73
    :goto_0
    return-void

    #@23
    .line 83
    :pswitch_0
    new-instance v0, Landroid/widget/TimePickerClockDelegate;

    #@25
    move-object v1, p0

    #@26
    move-object v2, p1

    #@27
    move-object v3, p2

    #@28
    move v4, p3

    #@29
    move v5, p4

    #@2a
    invoke-direct/range {v0 .. v5}, Landroid/widget/TimePickerClockDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@2d
    iput-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    #@2f
    goto :goto_0

    #@30
    .line 81
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 261
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    #@2
    invoke-interface {v0, p1}, Landroid/widget/TimePicker$TimePickerDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 255
    const-class v0, Landroid/widget/TimePicker;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    #@0
    .prologue
    .line 231
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    #@2
    invoke-interface {v0}, Landroid/widget/TimePicker$TimePickerDelegate;->getBaseline()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    #@2
    invoke-interface {v0}, Landroid/widget/TimePicker$TimePickerDelegate;->getCurrentHour()I

    #@5
    move-result v0

    #@6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 171
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    #@2
    invoke-interface {v0}, Landroid/widget/TimePicker$TimePickerDelegate;->getCurrentMinute()I

    #@5
    move-result v0

    #@6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getHour()I
    .locals 1

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    #@2
    invoke-interface {v0}, Landroid/widget/TimePicker$TimePickerDelegate;->getCurrentHour()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMinute()I
    .locals 1

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    #@2
    invoke-interface {v0}, Landroid/widget/TimePicker$TimePickerDelegate;->getCurrentMinute()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public is24HourView()Z
    .locals 1

    #@0
    .prologue
    .line 196
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    #@2
    invoke-interface {v0}, Landroid/widget/TimePicker$TimePickerDelegate;->is24HourView()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 226
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    #@2
    invoke-interface {v0}, Landroid/widget/TimePicker$TimePickerDelegate;->isEnabled()Z

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
    .line 236
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@3
    .line 237
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    #@5
    invoke-interface {v0, p1}, Landroid/widget/TimePicker$TimePickerDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@8
    .line 235
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 248
    check-cast v0, Landroid/view/View$BaseSavedState;

    #@3
    .line 249
    .local v0, "ss":Landroid/view/View$BaseSavedState;
    invoke-virtual {v0}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    #@6
    move-result-object v1

    #@7
    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@a
    .line 250
    iget-object v1, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    #@c
    invoke-interface {v1, v0}, Landroid/widget/TimePicker$TimePickerDelegate;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@f
    .line 247
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    #@0
    .prologue
    .line 242
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v0

    #@4
    .line 243
    .local v0, "superState":Landroid/os/Parcelable;
    iget-object v1, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    #@6
    invoke-interface {v1, v0}, Landroid/widget/TimePicker$TimePickerDelegate;->onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    #@9
    move-result-object v1

    #@a
    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "currentHour"    # Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 141
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/widget/TimePicker;->setHour(I)V

    #@7
    .line 140
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "currentMinute"    # Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 161
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    #@2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@5
    move-result v1

    #@6
    invoke-interface {v0, v1}, Landroid/widget/TimePicker$TimePickerDelegate;->setCurrentMinute(I)V

    #@9
    .line 160
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    #@3
    .line 221
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    #@5
    invoke-interface {v0, p1}, Landroid/widget/TimePicker$TimePickerDelegate;->setEnabled(Z)V

    #@8
    .line 219
    return-void
.end method

.method public setHour(I)V
    .locals 1
    .param p1, "hour"    # I

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    #@2
    invoke-interface {v0, p1}, Landroid/widget/TimePicker$TimePickerDelegate;->setCurrentHour(I)V

    #@5
    .line 100
    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "is24HourView"    # Ljava/lang/Boolean;

    #@0
    .prologue
    .line 183
    if-nez p1, :cond_0

    #@2
    .line 184
    return-void

    #@3
    .line 187
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    #@5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@8
    move-result v1

    #@9
    invoke-interface {v0, v1}, Landroid/widget/TimePicker$TimePickerDelegate;->setIs24HourView(Z)V

    #@c
    .line 182
    return-void
.end method

.method public setMinute(I)V
    .locals 1
    .param p1, "minute"    # I

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    #@2
    invoke-interface {v0, p1}, Landroid/widget/TimePicker$TimePickerDelegate;->setCurrentMinute(I)V

    #@5
    .line 120
    return-void
.end method

.method public setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    .locals 1
    .param p1, "onTimeChangedListener"    # Landroid/widget/TimePicker$OnTimeChangedListener;

    #@0
    .prologue
    .line 205
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    #@2
    invoke-interface {v0, p1}, Landroid/widget/TimePicker$TimePickerDelegate;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    #@5
    .line 204
    return-void
.end method

.method public setValidationCallback(Landroid/widget/TimePicker$ValidationCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/widget/TimePicker$ValidationCallback;

    #@0
    .prologue
    .line 215
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    #@2
    invoke-interface {v0, p1}, Landroid/widget/TimePicker$TimePickerDelegate;->setValidationCallback(Landroid/widget/TimePicker$ValidationCallback;)V

    #@5
    .line 214
    return-void
.end method
