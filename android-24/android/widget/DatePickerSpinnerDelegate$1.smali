.class Landroid/widget/DatePickerSpinnerDelegate$1;
.super Ljava/lang/Object;
.source "DatePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/DatePickerSpinnerDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DatePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroid/widget/DatePickerSpinnerDelegate;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/DatePickerSpinnerDelegate;

    #@0
    .prologue
    .line 123
    iput-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 8
    .param p1, "picker"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    const/4 v6, 0x2

    #@2
    const/4 v5, 0x5

    #@3
    const/4 v4, 0x1

    #@4
    .line 125
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    #@6
    invoke-static {v1}, Landroid/widget/DatePickerSpinnerDelegate;->-wrap3(Landroid/widget/DatePickerSpinnerDelegate;)V

    #@9
    .line 126
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    #@b
    invoke-static {v1}, Landroid/widget/DatePickerSpinnerDelegate;->-get3(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    #@e
    move-result-object v1

    #@f
    iget-object v2, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    #@11
    invoke-static {v2}, Landroid/widget/DatePickerSpinnerDelegate;->-get0(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@18
    move-result-wide v2

    #@19
    invoke-virtual {v1, v2, v3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@1c
    .line 128
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    #@1e
    invoke-static {v1}, Landroid/widget/DatePickerSpinnerDelegate;->-get1(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    #@21
    move-result-object v1

    #@22
    if-ne p1, v1, :cond_2

    #@24
    .line 129
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    #@26
    invoke-static {v1}, Landroid/widget/DatePickerSpinnerDelegate;->-get3(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1, v5}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    #@2d
    move-result v0

    #@2e
    .line 130
    .local v0, "maxDayOfMonth":I
    if-ne p2, v0, :cond_0

    #@30
    if-ne p3, v4, :cond_0

    #@32
    .line 131
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    #@34
    invoke-static {v1}, Landroid/widget/DatePickerSpinnerDelegate;->-get3(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1, v5, v4}, Landroid/icu/util/Calendar;->add(II)V

    #@3b
    .line 151
    .end local v0    # "maxDayOfMonth":I
    :goto_0
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    #@3d
    iget-object v2, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    #@3f
    invoke-static {v2}, Landroid/widget/DatePickerSpinnerDelegate;->-get3(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v2, v4}, Landroid/icu/util/Calendar;->get(I)I

    #@46
    move-result v2

    #@47
    iget-object v3, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    #@49
    invoke-static {v3}, Landroid/widget/DatePickerSpinnerDelegate;->-get3(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v3, v6}, Landroid/icu/util/Calendar;->get(I)I

    #@50
    move-result v3

    #@51
    .line 152
    iget-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    #@53
    invoke-static {v4}, Landroid/widget/DatePickerSpinnerDelegate;->-get3(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {v4, v5}, Landroid/icu/util/Calendar;->get(I)I

    #@5a
    move-result v4

    #@5b
    .line 151
    invoke-static {v1, v2, v3, v4}, Landroid/widget/DatePickerSpinnerDelegate;->-wrap1(Landroid/widget/DatePickerSpinnerDelegate;III)V

    #@5e
    .line 153
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    #@60
    invoke-static {v1}, Landroid/widget/DatePickerSpinnerDelegate;->-wrap4(Landroid/widget/DatePickerSpinnerDelegate;)V

    #@63
    .line 154
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    #@65
    invoke-static {v1}, Landroid/widget/DatePickerSpinnerDelegate;->-wrap2(Landroid/widget/DatePickerSpinnerDelegate;)V

    #@68
    .line 155
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    #@6a
    invoke-static {v1}, Landroid/widget/DatePickerSpinnerDelegate;->-wrap0(Landroid/widget/DatePickerSpinnerDelegate;)V

    #@6d
    .line 124
    return-void

    #@6e
    .line 132
    .restart local v0    # "maxDayOfMonth":I
    :cond_0
    if-ne p2, v4, :cond_1

    #@70
    if-ne p3, v0, :cond_1

    #@72
    .line 133
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    #@74
    invoke-static {v1}, Landroid/widget/DatePickerSpinnerDelegate;->-get3(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    #@77
    move-result-object v1

    #@78
    invoke-virtual {v1, v5, v7}, Landroid/icu/util/Calendar;->add(II)V

    #@7b
    goto :goto_0

    #@7c
    .line 135
    :cond_1
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    #@7e
    invoke-static {v1}, Landroid/widget/DatePickerSpinnerDelegate;->-get3(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    #@81
    move-result-object v1

    #@82
    sub-int v2, p3, p2

    #@84
    invoke-virtual {v1, v5, v2}, Landroid/icu/util/Calendar;->add(II)V

    #@87
    goto :goto_0

    #@88
    .line 137
    .end local v0    # "maxDayOfMonth":I
    :cond_2
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    #@8a
    invoke-static {v1}, Landroid/widget/DatePickerSpinnerDelegate;->-get2(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    #@8d
    move-result-object v1

    #@8e
    if-ne p1, v1, :cond_5

    #@90
    .line 138
    const/16 v1, 0xb

    #@92
    if-ne p2, v1, :cond_3

    #@94
    if-nez p3, :cond_3

    #@96
    .line 139
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    #@98
    invoke-static {v1}, Landroid/widget/DatePickerSpinnerDelegate;->-get3(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    #@9b
    move-result-object v1

    #@9c
    invoke-virtual {v1, v6, v4}, Landroid/icu/util/Calendar;->add(II)V

    #@9f
    goto :goto_0

    #@a0
    .line 140
    :cond_3
    if-nez p2, :cond_4

    #@a2
    const/16 v1, 0xb

    #@a4
    if-ne p3, v1, :cond_4

    #@a6
    .line 141
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    #@a8
    invoke-static {v1}, Landroid/widget/DatePickerSpinnerDelegate;->-get3(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    #@ab
    move-result-object v1

    #@ac
    invoke-virtual {v1, v6, v7}, Landroid/icu/util/Calendar;->add(II)V

    #@af
    goto :goto_0

    #@b0
    .line 143
    :cond_4
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    #@b2
    invoke-static {v1}, Landroid/widget/DatePickerSpinnerDelegate;->-get3(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    #@b5
    move-result-object v1

    #@b6
    sub-int v2, p3, p2

    #@b8
    invoke-virtual {v1, v6, v2}, Landroid/icu/util/Calendar;->add(II)V

    #@bb
    goto :goto_0

    #@bc
    .line 145
    :cond_5
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    #@be
    invoke-static {v1}, Landroid/widget/DatePickerSpinnerDelegate;->-get4(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    #@c1
    move-result-object v1

    #@c2
    if-ne p1, v1, :cond_6

    #@c4
    .line 146
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    #@c6
    invoke-static {v1}, Landroid/widget/DatePickerSpinnerDelegate;->-get3(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    #@c9
    move-result-object v1

    #@ca
    invoke-virtual {v1, v4, p3}, Landroid/icu/util/Calendar;->set(II)V

    #@cd
    goto/16 :goto_0

    #@cf
    .line 148
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@d1
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@d4
    throw v1
.end method
