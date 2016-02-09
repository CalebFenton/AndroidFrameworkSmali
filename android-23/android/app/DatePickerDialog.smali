.class public Landroid/app/DatePickerDialog;
.super Landroid/app/AlertDialog;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/DatePickerDialog$OnDateSetListener;,
        Landroid/app/DatePickerDialog$1;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private final mDatePicker:Landroid/widget/DatePicker;

.field private final mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mTitleNeedsUpdate:Z

.field private final mValidationCallback:Landroid/widget/DatePicker$ValidationCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "listener"    # Landroid/app/DatePickerDialog$OnDateSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 105
    invoke-static {p1, p2}, Landroid/app/DatePickerDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    #@4
    move-result v3

    #@5
    invoke-direct {p0, p1, v3}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    #@8
    .line 53
    iput-boolean v5, p0, Landroid/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    #@a
    .line 207
    new-instance v3, Landroid/app/DatePickerDialog$1;

    #@c
    invoke-direct {v3, p0}, Landroid/app/DatePickerDialog$1;-><init>(Landroid/app/DatePickerDialog;)V

    #@f
    iput-object v3, p0, Landroid/app/DatePickerDialog;->mValidationCallback:Landroid/widget/DatePicker$ValidationCallback;

    #@11
    .line 107
    iput-object p3, p0, Landroid/app/DatePickerDialog;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    #@13
    .line 108
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@16
    move-result-object v3

    #@17
    iput-object v3, p0, Landroid/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    #@19
    .line 110
    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->getContext()Landroid/content/Context;

    #@1c
    move-result-object v1

    #@1d
    .line 111
    .local v1, "themeContext":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@20
    move-result-object v0

    #@21
    .line 112
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x1090045

    #@24
    const/4 v4, 0x0

    #@25
    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@28
    move-result-object v2

    #@29
    .line 113
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/app/DatePickerDialog;->setView(Landroid/view/View;)V

    #@2c
    .line 114
    const v3, 0x104000a

    #@2f
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    const/4 v4, -0x1

    #@34
    invoke-virtual {p0, v4, v3, p0}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    #@37
    .line 115
    const/high16 v3, 0x1040000

    #@39
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    const/4 v4, -0x2

    #@3e
    invoke-virtual {p0, v4, v3, p0}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    #@41
    .line 116
    invoke-virtual {p0, v5}, Landroid/app/DatePickerDialog;->setButtonPanelLayoutHint(I)V

    #@44
    .line 118
    const v3, 0x1020318

    #@47
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@4a
    move-result-object v3

    #@4b
    check-cast v3, Landroid/widget/DatePicker;

    #@4d
    iput-object v3, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    #@4f
    .line 119
    iget-object v3, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    #@51
    invoke-virtual {v3, p4, p5, p6, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    #@54
    .line 120
    iget-object v3, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    #@56
    iget-object v4, p0, Landroid/app/DatePickerDialog;->mValidationCallback:Landroid/widget/DatePicker$ValidationCallback;

    #@58
    invoke-virtual {v3, v4}, Landroid/widget/DatePicker;->setValidationCallback(Landroid/widget/DatePicker$ValidationCallback;)V

    #@5b
    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Landroid/app/DatePickerDialog$OnDateSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I

    #@0
    .prologue
    .line 82
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
    invoke-direct/range {v0 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    #@a
    .line 81
    return-void
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I

    #@0
    .prologue
    .line 86
    if-nez p1, :cond_0

    #@2
    .line 87
    new-instance v0, Landroid/util/TypedValue;

    #@4
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@7
    .line 88
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
    .line 89
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    #@14
    return v1

    #@15
    .line 91
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_0
    return p1
.end method

.method private updateTitle(III)V
    .locals 6
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 168
    iget-object v1, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    #@3
    invoke-virtual {v1}, Landroid/widget/DatePicker;->getCalendarViewShown()Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_1

    #@9
    .line 169
    iget-object v1, p0, Landroid/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    #@b
    invoke-virtual {v1, v5, p1}, Ljava/util/Calendar;->set(II)V

    #@e
    .line 170
    iget-object v1, p0, Landroid/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    #@10
    const/4 v2, 0x2

    #@11
    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->set(II)V

    #@14
    .line 171
    iget-object v1, p0, Landroid/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    #@16
    const/4 v2, 0x5

    #@17
    invoke-virtual {v1, v2, p3}, Ljava/util/Calendar;->set(II)V

    #@1a
    .line 172
    iget-object v1, p0, Landroid/app/DatePickerDialog;->mContext:Landroid/content/Context;

    #@1c
    .line 173
    iget-object v2, p0, Landroid/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    #@1e
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    #@21
    move-result-wide v2

    #@22
    .line 174
    const v4, 0x18016

    #@25
    .line 172
    invoke-static {v1, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    .line 179
    .local v0, "title":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    #@2c
    .line 180
    iput-boolean v5, p0, Landroid/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    #@2e
    .line 167
    .end local v0    # "title":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    #@2f
    .line 182
    :cond_1
    iget-boolean v1, p0, Landroid/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    #@31
    if-eqz v1, :cond_0

    #@33
    .line 183
    const/4 v1, 0x0

    #@34
    iput-boolean v1, p0, Landroid/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    #@36
    .line 184
    const v1, 0x10403c0

    #@39
    invoke-virtual {p0, v1}, Landroid/app/DatePickerDialog;->setTitle(I)V

    #@3c
    goto :goto_0
.end method


# virtual methods
.method public getDatePicker()Landroid/widget/DatePicker;
    .locals 1

    #@0
    .prologue
    .line 153
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
    .line 131
    packed-switch p2, :pswitch_data_0

    #@3
    .line 130
    :cond_0
    :goto_0
    return-void

    #@4
    .line 133
    :pswitch_0
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 136
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    #@a
    invoke-virtual {v0}, Landroid/widget/DatePicker;->clearFocus()V

    #@d
    .line 137
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
    .line 138
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
    .line 137
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/DatePickerDialog$OnDateSetListener;->onDateSet(Landroid/widget/DatePicker;III)V

    #@26
    goto :goto_0

    #@27
    .line 142
    :pswitch_1
    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->cancel()V

    #@2a
    goto :goto_0

    #@2b
    .line 131
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
    .param p4, "day"    # I

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    #@2
    invoke-virtual {v0, p2, p3, p4, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    #@5
    .line 126
    invoke-direct {p0, p2, p3, p4}, Landroid/app/DatePickerDialog;->updateTitle(III)V

    #@8
    .line 124
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 200
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 201
    const-string/jumbo v3, "year"

    #@6
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@9
    move-result v2

    #@a
    .line 202
    .local v2, "year":I
    const-string/jumbo v3, "month"

    #@d
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@10
    move-result v1

    #@11
    .line 203
    .local v1, "month":I
    const-string/jumbo v3, "day"

    #@14
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@17
    move-result v0

    #@18
    .line 204
    .local v0, "day":I
    iget-object v3, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    #@1a
    invoke-virtual {v3, v2, v1, v0, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    #@1d
    .line 199
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    #@0
    .prologue
    .line 191
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    .line 192
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
    .line 193
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
    .line 194
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
    .line 195
    return-object v0
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/DatePicker;->updateDate(III)V

    #@5
    .line 163
    return-void
.end method
