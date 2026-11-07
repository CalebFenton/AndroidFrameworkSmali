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
.field private static final greylist-max-o HOUR:Ljava/lang/String; = "hour"

.field private static final greylist-max-o IS_24_HOUR:Ljava/lang/String; = "is24hour"

.field private static final greylist-max-o MINUTE:Ljava/lang/String; = "minute"


# instance fields
.field private final greylist-max-o mInitialHourOfDay:I

.field private final greylist-max-o mInitialMinute:I

.field private final greylist-max-o mIs24HourView:Z

.field private final greylist mTimePicker:Landroid/widget/TimePicker;

.field private final greylist-max-o mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmTimePicker(Landroid/app/TimePickerDialog;)Landroid/widget/TimePicker;
    .registers 1

    iget-object p0, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I
    .param p3, "listener"    # Landroid/app/TimePickerDialog$OnTimeSetListener;
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "is24HourView"    # Z

    .line 113
    invoke-static {p1, p2}, Landroid/app/TimePickerDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 115
    iput-object p3, p0, Landroid/app/TimePickerDialog;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 116
    iput p4, p0, Landroid/app/TimePickerDialog;->mInitialHourOfDay:I

    .line 117
    iput p5, p0, Landroid/app/TimePickerDialog;->mInitialMinute:I

    .line 118
    iput-boolean p6, p0, Landroid/app/TimePickerDialog;->mIs24HourView:Z

    .line 120
    invoke-virtual {p0}, Landroid/app/TimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 121
    .local v0, "themeContext":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 122
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x109016d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 123
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/app/TimePickerDialog;->setView(Landroid/view/View;)V

    .line 124
    const v3, 0x104000a

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {p0, v4, v3, p0}, Landroid/app/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 125
    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x2

    invoke-virtual {p0, v4, v3, p0}, Landroid/app/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 126
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/app/TimePickerDialog;->setButtonPanelLayoutHint(I)V

    .line 128
    const v3, 0x1020595

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TimePicker;

    iput-object v3, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    .line 129
    iget-object v3, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    iget-boolean v4, p0, Landroid/app/TimePickerDialog;->mIs24HourView:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 130
    iget-object v3, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    iget v4, p0, Landroid/app/TimePickerDialog;->mInitialHourOfDay:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 131
    iget-object v3, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    iget v4, p0, Landroid/app/TimePickerDialog;->mInitialMinute:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 132
    iget-object v3, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v3, p0}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 133
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/app/TimePickerDialog$OnTimeSetListener;
    .param p3, "hourOfDay"    # I
    .param p4, "minute"    # I
    .param p5, "is24HourView"    # Z

    .line 82
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "listener":Landroid/app/TimePickerDialog$OnTimeSetListener;
    .end local p3    # "hourOfDay":I
    .end local p4    # "minute":I
    .end local p5    # "is24HourView":Z
    .local v1, "context":Landroid/content/Context;
    .local v3, "listener":Landroid/app/TimePickerDialog$OnTimeSetListener;
    .local v4, "hourOfDay":I
    .local v5, "minute":I
    .local v6, "is24HourView":Z
    invoke-direct/range {v0 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 83
    return-void
.end method

.method static greylist-max-o resolveDialogTheme(Landroid/content/Context;I)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .line 86
    if-nez p1, :cond_15

    .line 87
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 88
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101049e

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 89
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1

    .line 91
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_15
    return p1
.end method


# virtual methods
.method public blacklist getTimePicker()Landroid/widget/TimePicker;
    .registers 2

    .line 141
    iget-object v0, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    return-object v0
.end method

.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 168
    packed-switch p2, :pswitch_data_28

    goto :goto_27

    .line 173
    :pswitch_4
    iget-object v0, p0, Landroid/app/TimePickerDialog;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_27

    .line 174
    iget-object v0, p0, Landroid/app/TimePickerDialog;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget-object v1, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    iget-object v2, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    .line 175
    invoke-virtual {v3}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 174
    invoke-interface {v0, v1, v2, v3}, Landroid/app/TimePickerDialog$OnTimeSetListener;->onTimeSet(Landroid/widget/TimePicker;II)V

    goto :goto_27

    .line 179
    :pswitch_24
    invoke-virtual {p0}, Landroid/app/TimePickerDialog;->cancel()V

    .line 182
    :cond_27
    :goto_27
    return-void

    :pswitch_data_28
    .packed-switch -0x2
        :pswitch_24
        :pswitch_4
    .end packed-switch
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 206
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 207
    const-string/jumbo v0, "hour"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 208
    .local v0, "hour":I
    const-string/jumbo v1, "minute"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 209
    .local v1, "minute":I
    iget-object v2, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    const-string/jumbo v3, "is24hour"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 210
    iget-object v2, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 211
    iget-object v2, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 212
    return-void
.end method

.method public whitelist onSaveInstanceState()Landroid/os/Bundle;
    .registers 4

    .line 197
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 198
    .local v0, "state":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v2, "hour"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 199
    iget-object v1, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v2, "minute"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    iget-object v1, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v1

    const-string/jumbo v2, "is24hour"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 201
    return-object v0
.end method

.method public whitelist onTimeChanged(Landroid/widget/TimePicker;II)V
    .registers 4
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .line 147
    return-void
.end method

.method public whitelist show()V
    .registers 3

    .line 151
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 152
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/TimePickerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Landroid/app/TimePickerDialog$1;

    invoke-direct {v1, p0}, Landroid/app/TimePickerDialog$1;-><init>(Landroid/app/TimePickerDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    return-void
.end method

.method public whitelist updateTime(II)V
    .registers 5
    .param p1, "hourOfDay"    # I
    .param p2, "minuteOfHour"    # I

    .line 191
    iget-object v0, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 192
    iget-object v0, p0, Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 193
    return-void
.end method
