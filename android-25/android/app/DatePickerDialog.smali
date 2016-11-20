.class public Landroid/app/DatePickerDialog;
.super Landroid/app/AlertDialog;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/DatePickerDialog$1;,
        Landroid/app/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final mDatePicker:Landroid/widget/DatePicker;

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private final mValidationCallback:Landroid/widget/DatePicker$ValidationCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    .line 61
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@4
    move-result-object v4

    #@5
    const/4 v2, 0x0

    #@6
    const/4 v3, 0x0

    #@7
    move-object v0, p0

    #@8
    move-object v1, p1

    #@9
    move v6, v5

    #@a
    move v7, v5

    #@b
    invoke-direct/range {v0 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;III)V

    #@e
    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    .line 73
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@4
    move-result-object v4

    #@5
    const/4 v3, 0x0

    #@6
    move-object v0, p0

    #@7
    move-object v1, p1

    #@8
    move v2, p2

    #@9
    move v6, v5

    #@a
    move v7, v5

    #@b
    invoke-direct/range {v0 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;III)V

    #@e
    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I
    .param p3, "listener"    # Landroid/app/DatePickerDialog$OnDateSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I

    #@0
    .prologue
    .line 109
    const/4 v4, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move v5, p4

    #@6
    move v6, p5

    #@7
    move v7, p6

    #@8
    invoke-direct/range {v0 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;III)V

    #@b
    .line 108
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;III)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I
    .param p3, "listener"    # Landroid/app/DatePickerDialog$OnDateSetListener;
    .param p4, "calendar"    # Ljava/util/Calendar;
    .param p5, "year"    # I
    .param p6, "monthOfYear"    # I
    .param p7, "dayOfMonth"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 115
    invoke-static {p1, p2}, Landroid/app/DatePickerDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    #@5
    move-result v3

    #@6
    invoke-direct {p0, p1, v3}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    #@9
    .line 221
    new-instance v3, Landroid/app/DatePickerDialog$1;

    #@b
    invoke-direct {v3, p0}, Landroid/app/DatePickerDialog$1;-><init>(Landroid/app/DatePickerDialog;)V

    #@e
    iput-object v3, p0, Landroid/app/DatePickerDialog;->mValidationCallback:Landroid/widget/DatePicker$ValidationCallback;

    #@10
    .line 117
    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->getContext()Landroid/content/Context;

    #@13
    move-result-object v1

    #@14
    .line 118
    .local v1, "themeContext":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@17
    move-result-object v0

    #@18
    .line 119
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x1090047

    #@1b
    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@1e
    move-result-object v2

    #@1f
    .line 120
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/app/DatePickerDialog;->setView(Landroid/view/View;)V

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
    invoke-virtual {p0, v4, v3, p0}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

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
    invoke-virtual {p0, v4, v3, p0}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    #@37
    .line 124
    invoke-virtual {p0, v5}, Landroid/app/DatePickerDialog;->setButtonPanelLayoutHint(I)V

    #@3a
    .line 126
    if-eqz p4, :cond_0

    #@3c
    .line 127
    invoke-virtual {p4, v5}, Ljava/util/Calendar;->get(I)I

    #@3f
    move-result p5

    #@40
    .line 128
    const/4 v3, 0x2

    #@41
    invoke-virtual {p4, v3}, Ljava/util/Calendar;->get(I)I

    #@44
    move-result p6

    #@45
    .line 129
    const/4 v3, 0x5

    #@46
    invoke-virtual {p4, v3}, Ljava/util/Calendar;->get(I)I

    #@49
    move-result p7

    #@4a
    .line 132
    :cond_0
    const v3, 0x1020353

    #@4d
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@50
    move-result-object v3

    #@51
    check-cast v3, Landroid/widget/DatePicker;

    #@53
    iput-object v3, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    #@55
    .line 133
    iget-object v3, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    #@57
    invoke-virtual {v3, p5, p6, p7, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    #@5a
    .line 134
    iget-object v3, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    #@5c
    iget-object v4, p0, Landroid/app/DatePickerDialog;->mValidationCallback:Landroid/widget/DatePicker$ValidationCallback;

    #@5e
    invoke-virtual {v3, v4}, Landroid/widget/DatePicker;->setValidationCallback(Landroid/widget/DatePicker$ValidationCallback;)V

    #@61
    .line 136
    iput-object p3, p0, Landroid/app/DatePickerDialog;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    #@63
    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/app/DatePickerDialog$OnDateSetListener;
    .param p3, "year"    # I
    .param p4, "month"    # I
    .param p5, "dayOfMonth"    # I

    #@0
    .prologue
    .line 90
    const/4 v2, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v3, p2

    #@5
    move v5, p3

    #@6
    move v6, p4

    #@7
    move v7, p5

    #@8
    invoke-direct/range {v0 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;III)V

    #@b
    .line 89
    return-void
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "themeResId"    # I

    #@0
    .prologue
    .line 140
    if-nez p1, :cond_0

    #@2
    .line 141
    new-instance v0, Landroid/util/TypedValue;

    #@4
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@7
    .line 142
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@a
    move-result-object v1

    #@b
    const v2, 0x10104ac

    #@e
    const/4 v3, 0x1

    #@f
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@12
    .line 143
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    #@14
    return v1

    #@15
    .line 145
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_0
    return p1
.end method


# virtual methods
.method public getDatePicker()Landroid/widget/DatePicker;
    .locals 1

    #@0
    .prologue
    .line 188
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    #@2
    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    #@0
    .prologue
    .line 165
    packed-switch p2, :pswitch_data_0

    #@3
    .line 164
    :cond_0
    :goto_0
    return-void

    #@4
    .line 167
    :pswitch_0
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 170
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    #@a
    invoke-virtual {v0}, Landroid/widget/DatePicker;->clearFocus()V

    #@d
    .line 171
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    #@f
    iget-object v1, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    #@11
    iget-object v2, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    #@13
    invoke-virtual {v2}, Landroid/widget/DatePicker;->getYear()I

    #@16
    move-result v2

    #@17
    .line 172
    iget-object v3, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    #@19
    invoke-virtual {v3}, Landroid/widget/DatePicker;->getMonth()I

    #@1c
    move-result v3

    #@1d
    iget-object v4, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    #@1f
    invoke-virtual {v4}, Landroid/widget/DatePicker;->getDayOfMonth()I

    #@22
    move-result v4

    #@23
    .line 171
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/DatePickerDialog$OnDateSetListener;->onDateSet(Landroid/widget/DatePicker;III)V

    #@26
    goto :goto_0

    #@27
    .line 176
    :pswitch_1
    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->cancel()V

    #@2a
    goto :goto_0

    #@2b
    .line 165
    nop

    #@2c
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "dayOfMonth"    # I

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    #@2
    invoke-virtual {v0, p2, p3, p4, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    #@5
    .line 150
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 214
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 215
    const-string/jumbo v3, "year"

    #@6
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@9
    move-result v2

    #@a
    .line 216
    .local v2, "year":I
    const-string/jumbo v3, "month"

    #@d
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@10
    move-result v1

    #@11
    .line 217
    .local v1, "month":I
    const-string/jumbo v3, "day"

    #@14
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@17
    move-result v0

    #@18
    .line 218
    .local v0, "day":I
    iget-object v3, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    #@1a
    invoke-virtual {v3, v2, v1, v0, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    #@1d
    .line 213
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    #@0
    .prologue
    .line 205
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    .line 206
    .local v0, "state":Landroid/os/Bundle;
    const-string/jumbo v1, "year"

    #@7
    iget-object v2, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    #@9
    invoke-virtual {v2}, Landroid/widget/DatePicker;->getYear()I

    #@c
    move-result v2

    #@d
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@10
    .line 207
    const-string/jumbo v1, "month"

    #@13
    iget-object v2, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    #@15
    invoke-virtual {v2}, Landroid/widget/DatePicker;->getMonth()I

    #@18
    move-result v2

    #@19
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@1c
    .line 208
    const-string/jumbo v1, "day"

    #@1f
    iget-object v2, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    #@21
    invoke-virtual {v2}, Landroid/widget/DatePicker;->getDayOfMonth()I

    #@24
    move-result v2

    #@25
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@28
    .line 209
    return-object v0
.end method

.method public setOnDateSetListener(Landroid/app/DatePickerDialog$OnDateSetListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/app/DatePickerDialog$OnDateSetListener;

    #@0
    .prologue
    .line 160
    iput-object p1, p0, Landroid/app/DatePickerDialog;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    #@2
    .line 159
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    #@0
    .prologue
    .line 200
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/DatePicker;->updateDate(III)V

    #@5
    .line 199
    return-void
.end method
