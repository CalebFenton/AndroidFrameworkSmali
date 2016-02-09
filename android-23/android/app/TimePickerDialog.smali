.class public Landroid/app/TimePickerDialog;
.super Landroid/app/AlertDialog;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/TimePickerDialog$OnTimeSetListener;,
        Landroid/app/TimePickerDialog$1;
    }
.end annotation


# static fields
.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final IS_24_HOUR:Ljava/lang/String; = "is24hour"

.field private static final MINUTE:Ljava/lang/String; = "minute"


# instance fields
.field private final mInitialHourOfDay:I

.field private final mInitialMinute:I

.field private final mIs24HourView:Z

.field private final mTimePicker:Landroid/widget/TimePicker;

.field private final mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private final mValidationCallback:Landroid/widget/TimePicker$ValidationCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I
    .param p3, "listener"    # Landroid/app/TimePickerDialog$OnTimeSetListener;
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "is24HourView"    # Z

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 106
    invoke-static {p1, p2}, Landroid/app/TimePickerDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    #@4
    move-result v5

    #@5
    invoke-direct {p0, p1, v5}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    #@8
    .line 185
    new-instance v5, Landroid/app/TimePickerDialog$1;

    #@a
    invoke-direct {v5, p0}, Landroid/app/TimePickerDialog$1;-><init>(Landroid/app/TimePickerDialog;)V

    #@d
    iput-object v5, p0, Landroid/app/TimePickerDialog;->mValidationCallback:Landroid/widget/TimePicker$ValidationCallback;

    #@f
    .line 108
    iput-object p3, p0, Landroid/app/TimePickerDialog;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    #@11
    .line 109
    iput p4, p0, Landroid/app/TimePickerDialog;->mInitialHourOfDay:I

    #@13
    .line 110
    iput p5, p0, Landroid/app/TimePickerDialog;->mInitialMinute:I

    #@15
    .line 111
    iput-boolean p6, p0, Landroid/app/TimePickerDialog;->mIs24HourView:Z

    #@17
    .line 113
    invoke-virtual {p0}, Landroid/app/TimePickerDialog;->getContext()Landroid/content/Context;

    #@1a
    move-result-object v3

    #@1b
    .line 116
    .local v3, "themeContext":Landroid/content/Context;
    new-instance v2, Landroid/util/TypedValue;

    #@1d
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    #@20
    .line 117
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@23
    move-result-object v5

    #@24
    const v6, 0x101049e

    #@27
    invoke-virtual {v5, v6, v2, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@2a
    .line 118
    iget v1, v2, Landroid/util/TypedValue;->resourceId:I

    #@2c
    .line 120
    .local v1, "layoutResId":I
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@2f
    move-result-object v0

    #@30
    .line 121
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x10900f0

    #@33
    const/4 v6, 0x0

    #@34
    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@37
    move-result-object v4

    #@38
    .line 122
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p0, v4}, Landroid/app/TimePickerDialog;->setView(Landroid/view/View;)V

    #@3b
    .line 123
    const v5, 0x104000a

    #@3e
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@41
    move-result-object v5

    #@42
    const/4 v6, -0x1

    #@43
    invoke-virtual {p0, v6, v5, p0}, Landroid/app/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    #@46
    .line 124
    const/high16 v5, 0x1040000

    #@48
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@4b
    move-result-object v5

    #@4c
    const/4 v6, -0x2

    #@4d
    invoke-virtual {p0, v6, v5, p0}, Landroid/app/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    #@50
    .line 125
    invoke-virtual {p0, v7}, Landroid/app/TimePickerDialog;->setButtonPanelLayoutHint(I)V

    #@53
    .line 127
    const v5, 0x10203e8

    #@56
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@59
    move-result-object v5

    #@5a
    check-cast v5, Landroid/widget/TimePicker;

    #@5c
    iput-object v5, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    #@5e
    .line 128
    iget-object v5, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    #@60
    iget-boolean v6, p0, Landroid/app/TimePickerDialog;->mIs24HourView:Z

    #@62
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@65
    move-result-object v6

    #@66
    invoke-virtual {v5, v6}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    #@69
    .line 129
    iget-object v5, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    #@6b
    iget v6, p0, Landroid/app/TimePickerDialog;->mInitialHourOfDay:I

    #@6d
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@70
    move-result-object v6

    #@71
    invoke-virtual {v5, v6}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    #@74
    .line 130
    iget-object v5, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    #@76
    iget v6, p0, Landroid/app/TimePickerDialog;->mInitialMinute:I

    #@78
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7b
    move-result-object v6

    #@7c
    invoke-virtual {v5, v6}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    #@7f
    .line 131
    iget-object v5, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    #@81
    invoke-virtual {v5, p0}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    #@84
    .line 132
    iget-object v5, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    #@86
    iget-object v6, p0, Landroid/app/TimePickerDialog;->mValidationCallback:Landroid/widget/TimePicker$ValidationCallback;

    #@88
    invoke-virtual {v5, v6}, Landroid/widget/TimePicker;->setValidationCallback(Landroid/widget/TimePicker$ValidationCallback;)V

    #@8b
    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/app/TimePickerDialog$OnTimeSetListener;
    .param p3, "hourOfDay"    # I
    .param p4, "minute"    # I
    .param p5, "is24HourView"    # Z

    #@0
    .prologue
    .line 81
    const/4 v2, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v3, p2

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    move v6, p5

    #@7
    invoke-direct/range {v0 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    #@a
    .line 80
    return-void
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 85
    if-nez p1, :cond_0

    #@2
    .line 86
    new-instance v0, Landroid/util/TypedValue;

    #@4
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@7
    .line 87
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@a
    move-result-object v1

    #@b
    const v2, 0x101049e

    #@e
    const/4 v3, 0x1

    #@f
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@12
    .line 88
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    #@14
    return v1

    #@15
    .line 90
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_0
    return p1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    #@0
    .prologue
    .line 142
    packed-switch p2, :pswitch_data_0

    #@3
    .line 141
    :cond_0
    :goto_0
    return-void

    #@4
    .line 144
    :pswitch_0
    iget-object v0, p0, Landroid/app/TimePickerDialog;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 145
    iget-object v0, p0, Landroid/app/TimePickerDialog;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    #@a
    iget-object v1, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    #@c
    iget-object v2, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    #@e
    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@15
    move-result v2

    #@16
    .line 146
    iget-object v3, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    #@18
    invoke-virtual {v3}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@1f
    move-result v3

    #@20
    .line 145
    invoke-interface {v0, v1, v2, v3}, Landroid/app/TimePickerDialog$OnTimeSetListener;->onTimeSet(Landroid/widget/TimePicker;II)V

    #@23
    goto :goto_0

    #@24
    .line 150
    :pswitch_1
    invoke-virtual {p0}, Landroid/app/TimePickerDialog;->cancel()V

    #@27
    goto :goto_0

    #@28
    .line 142
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 178
    const-string/jumbo v2, "hour"

    #@6
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@9
    move-result v0

    #@a
    .line 179
    .local v0, "hour":I
    const-string/jumbo v2, "minute"

    #@d
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@10
    move-result v1

    #@11
    .line 180
    .local v1, "minute":I
    iget-object v2, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    #@13
    const-string/jumbo v3, "is24hour"

    #@16
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@19
    move-result v3

    #@1a
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    #@21
    .line 181
    iget-object v2, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    #@23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    #@2a
    .line 182
    iget-object v2, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    #@2c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    #@33
    .line 176
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    #@0
    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    .line 169
    .local v0, "state":Landroid/os/Bundle;
    const-string/jumbo v1, "hour"

    #@7
    iget-object v2, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    #@9
    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@10
    move-result v2

    #@11
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@14
    .line 170
    const-string/jumbo v1, "minute"

    #@17
    iget-object v2, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    #@19
    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@20
    move-result v2

    #@21
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@24
    .line 171
    const-string/jumbo v1, "is24hour"

    #@27
    iget-object v2, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    #@29
    invoke-virtual {v2}, Landroid/widget/TimePicker;->is24HourView()Z

    #@2c
    move-result v2

    #@2d
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@30
    .line 172
    return-object v0
.end method

.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    #@0
    .prologue
    .line 136
    return-void
.end method

.method public updateTime(II)V
    .locals 2
    .param p1, "hourOfDay"    # I
    .param p2, "minuteOfHour"    # I

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    #@9
    .line 163
    iget-object v0, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    #@b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    #@12
    .line 161
    return-void
.end method
