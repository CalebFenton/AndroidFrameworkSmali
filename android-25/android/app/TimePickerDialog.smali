.class public Landroid/app/TimePickerDialog;
.super Landroid/app/AlertDialog;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/TimePickerDialog$OnTimeSetListener;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I
    .param p3, "listener"    # Landroid/app/TimePickerDialog$OnTimeSetListener;
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "is24HourView"    # Z

    #@0
    .prologue
    .line 111
    invoke-static {p1, p2}, Landroid/app/TimePickerDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    #@3
    move-result v3

    #@4
    invoke-direct {p0, p1, v3}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    #@7
    .line 113
    iput-object p3, p0, Landroid/app/TimePickerDialog;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    #@9
    .line 114
    iput p4, p0, Landroid/app/TimePickerDialog;->mInitialHourOfDay:I

    #@b
    .line 115
    iput p5, p0, Landroid/app/TimePickerDialog;->mInitialMinute:I

    #@d
    .line 116
    iput-boolean p6, p0, Landroid/app/TimePickerDialog;->mIs24HourView:Z

    #@f
    .line 118
    invoke-virtual {p0}, Landroid/app/TimePickerDialog;->getContext()Landroid/content/Context;

    #@12
    move-result-object v1

    #@13
    .line 119
    .local v1, "themeContext":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@16
    move-result-object v0

    #@17
    .line 120
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x10900fa

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@1e
    move-result-object v2

    #@1f
    .line 121
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/app/TimePickerDialog;->setView(Landroid/view/View;)V

    #@22
    .line 122
    const v3, 0x104000a

    #@25
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    const/4 v4, -0x1

    #@2a
    invoke-virtual {p0, v4, v3, p0}, Landroid/app/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    #@2d
    .line 123
    const/high16 v3, 0x1040000

    #@2f
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    const/4 v4, -0x2

    #@34
    invoke-virtual {p0, v4, v3, p0}, Landroid/app/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    #@37
    .line 124
    const/4 v3, 0x1

    #@38
    invoke-virtual {p0, v3}, Landroid/app/TimePickerDialog;->setButtonPanelLayoutHint(I)V

    #@3b
    .line 126
    const v3, 0x1020432

    #@3e
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@41
    move-result-object v3

    #@42
    check-cast v3, Landroid/widget/TimePicker;

    #@44
    iput-object v3, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    #@46
    .line 127
    iget-object v3, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    #@48
    iget-boolean v4, p0, Landroid/app/TimePickerDialog;->mIs24HourView:Z

    #@4a
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    #@51
    .line 128
    iget-object v3, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    #@53
    iget v4, p0, Landroid/app/TimePickerDialog;->mInitialHourOfDay:I

    #@55
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@58
    move-result-object v4

    #@59
    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    #@5c
    .line 129
    iget-object v3, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    #@5e
    iget v4, p0, Landroid/app/TimePickerDialog;->mInitialMinute:I

    #@60
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@63
    move-result-object v4

    #@64
    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    #@67
    .line 130
    iget-object v3, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    #@69
    invoke-virtual {v3, p0}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    #@6c
    .line 110
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
    .line 80
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
    .line 79
    return-void
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 84
    if-nez p1, :cond_0

    #@2
    .line 85
    new-instance v0, Landroid/util/TypedValue;

    #@4
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@7
    .line 86
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
    .line 87
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    #@14
    return v1

    #@15
    .line 89
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_0
    return p1
.end method


# virtual methods
.method public getTimePicker()Landroid/widget/TimePicker;
    .locals 1

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    #@2
    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    #@0
    .prologue
    .line 149
    packed-switch p2, :pswitch_data_0

    #@3
    .line 148
    :cond_0
    :goto_0
    return-void

    #@4
    .line 151
    :pswitch_0
    iget-object v0, p0, Landroid/app/TimePickerDialog;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 152
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
    .line 153
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
    .line 152
    invoke-interface {v0, v1, v2, v3}, Landroid/app/TimePickerDialog$OnTimeSetListener;->onTimeSet(Landroid/widget/TimePicker;II)V

    #@23
    goto :goto_0

    #@24
    .line 157
    :pswitch_1
    invoke-virtual {p0}, Landroid/app/TimePickerDialog;->cancel()V

    #@27
    goto :goto_0

    #@28
    .line 149
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
    .line 184
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 185
    const-string/jumbo v2, "hour"

    #@6
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@9
    move-result v0

    #@a
    .line 186
    .local v0, "hour":I
    const-string/jumbo v2, "minute"

    #@d
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@10
    move-result v1

    #@11
    .line 187
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
    .line 188
    iget-object v2, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    #@23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    #@2a
    .line 189
    iget-object v2, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    #@2c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    #@33
    .line 183
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    #@0
    .prologue
    .line 175
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    .line 176
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
    .line 177
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
    .line 178
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
    .line 179
    return-object v0
.end method

.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    #@0
    .prologue
    .line 143
    return-void
.end method

.method public updateTime(II)V
    .locals 2
    .param p1, "hourOfDay"    # I
    .param p2, "minuteOfHour"    # I

    #@0
    .prologue
    .line 169
    iget-object v0, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    #@9
    .line 170
    iget-object v0, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    #@b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    #@12
    .line 168
    return-void
.end method
