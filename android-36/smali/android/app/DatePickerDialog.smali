.class public Landroid/app/DatePickerDialog;
.super Landroid/app/AlertDialog;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o DAY:Ljava/lang/String; = "day"

.field private static final greylist-max-o MONTH:Ljava/lang/String; = "month"

.field private static final greylist-max-o YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final greylist mDatePicker:Landroid/widget/DatePicker;

.field private greylist-max-o mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private final greylist-max-o mValidationCallback:Landroid/widget/DatePicker$ValidationCallback;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "context":Landroid/content/Context;
    .local v1, "context":Landroid/content/Context;
    invoke-direct/range {v0 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;III)V

    .line 64
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .line 75
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v3, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "themeResId":I
    .local v1, "context":Landroid/content/Context;
    .local v2, "themeResId":I
    invoke-direct/range {v0 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;III)V

    .line 76
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I
    .param p3, "listener"    # Landroid/app/DatePickerDialog$OnDateSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I

    .line 111
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "themeResId":I
    .end local p3    # "listener":Landroid/app/DatePickerDialog$OnDateSetListener;
    .end local p4    # "year":I
    .end local p5    # "monthOfYear":I
    .end local p6    # "dayOfMonth":I
    .local v1, "context":Landroid/content/Context;
    .local v2, "themeResId":I
    .local v3, "listener":Landroid/app/DatePickerDialog$OnDateSetListener;
    .local v5, "year":I
    .local v6, "monthOfYear":I
    .local v7, "dayOfMonth":I
    invoke-direct/range {v0 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;III)V

    .line 112
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;III)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I
    .param p3, "listener"    # Landroid/app/DatePickerDialog$OnDateSetListener;
    .param p4, "calendar"    # Ljava/util/Calendar;
    .param p5, "year"    # I
    .param p6, "monthOfYear"    # I
    .param p7, "dayOfMonth"    # I

    .line 117
    invoke-static {p1, p2}, Landroid/app/DatePickerDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 223
    new-instance v0, Landroid/app/DatePickerDialog$1;

    invoke-direct {v0, p0}, Landroid/app/DatePickerDialog$1;-><init>(Landroid/app/DatePickerDialog;)V

    iput-object v0, p0, Landroid/app/DatePickerDialog;->mValidationCallback:Landroid/widget/DatePicker$ValidationCallback;

    .line 119
    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 120
    .local v0, "themeContext":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 121
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x109006c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 122
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/app/DatePickerDialog;->setView(Landroid/view/View;)V

    .line 124
    const v3, 0x104000a

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {p0, v4, v3, p0}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 125
    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x2

    invoke-virtual {p0, v4, v3, p0}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 126
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/app/DatePickerDialog;->setButtonPanelLayoutHint(I)V

    .line 128
    if-eqz p4, :cond_4a

    .line 129
    invoke-virtual {p4, v3}, Ljava/util/Calendar;->get(I)I

    move-result p5

    .line 130
    const/4 v3, 0x2

    invoke-virtual {p4, v3}, Ljava/util/Calendar;->get(I)I

    move-result p6

    .line 131
    const/4 v3, 0x5

    invoke-virtual {p4, v3}, Ljava/util/Calendar;->get(I)I

    move-result p7

    .line 134
    :cond_4a
    const v3, 0x10202c1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/DatePicker;

    iput-object v3, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    .line 135
    iget-object v3, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3, p5, p6, p7, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 136
    iget-object v3, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    iget-object v4, p0, Landroid/app/DatePickerDialog;->mValidationCallback:Landroid/widget/DatePicker$ValidationCallback;

    invoke-virtual {v3, v4}, Landroid/widget/DatePicker;->setValidationCallback(Landroid/widget/DatePicker$ValidationCallback;)V

    .line 138
    iput-object p3, p0, Landroid/app/DatePickerDialog;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 139
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/app/DatePickerDialog$OnDateSetListener;
    .param p3, "year"    # I
    .param p4, "month"    # I
    .param p5, "dayOfMonth"    # I

    .line 92
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "listener":Landroid/app/DatePickerDialog$OnDateSetListener;
    .end local p3    # "year":I
    .end local p4    # "month":I
    .end local p5    # "dayOfMonth":I
    .local v1, "context":Landroid/content/Context;
    .local v3, "listener":Landroid/app/DatePickerDialog$OnDateSetListener;
    .local v5, "year":I
    .local v6, "month":I
    .local v7, "dayOfMonth":I
    invoke-direct/range {v0 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;III)V

    .line 93
    return-void
.end method

.method static greylist-max-o resolveDialogTheme(Landroid/content/Context;I)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "themeResId"    # I

    .line 142
    if-nez p1, :cond_15

    .line 143
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 144
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10104ac

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 145
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1

    .line 147
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_15
    return p1
.end method


# virtual methods
.method public whitelist getDatePicker()Landroid/widget/DatePicker;
    .registers 2

    .line 190
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    return-object v0
.end method

.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 167
    packed-switch p2, :pswitch_data_2c

    goto :goto_2a

    .line 169
    :pswitch_4
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_2a

    .line 172
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->clearFocus()V

    .line 173
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    iget-object v2, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    .line 174
    invoke-virtual {v3}, Landroid/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    .line 173
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/DatePickerDialog$OnDateSetListener;->onDateSet(Landroid/widget/DatePicker;III)V

    goto :goto_2a

    .line 178
    :pswitch_27
    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->cancel()V

    .line 181
    :cond_2a
    :goto_2a
    return-void

    nop

    :pswitch_data_2c
    .packed-switch -0x2
        :pswitch_27
        :pswitch_4
    .end packed-switch
.end method

.method public whitelist onDateChanged(Landroid/widget/DatePicker;III)V
    .registers 6
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "dayOfMonth"    # I

    .line 153
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0, p2, p3, p4, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 154
    return-void
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 216
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 217
    const-string/jumbo v0, "year"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 218
    .local v0, "year":I
    const-string/jumbo v1, "month"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 219
    .local v1, "month":I
    const-string v2, "day"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 220
    .local v2, "day":I
    iget-object v3, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3, v0, v1, v2, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 221
    return-void
.end method

.method public whitelist onSaveInstanceState()Landroid/os/Bundle;
    .registers 4

    .line 207
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 208
    .local v0, "state":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getYear()I

    move-result v1

    const-string/jumbo v2, "year"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 209
    iget-object v1, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getMonth()I

    move-result v1

    const-string/jumbo v2, "month"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 210
    iget-object v1, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v1

    const-string v2, "day"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    return-object v0
.end method

.method public whitelist setOnDateSetListener(Landroid/app/DatePickerDialog$OnDateSetListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 162
    iput-object p1, p0, Landroid/app/DatePickerDialog;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 163
    return-void
.end method

.method public whitelist updateDate(III)V
    .registers 5
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 202
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 203
    return-void
.end method
