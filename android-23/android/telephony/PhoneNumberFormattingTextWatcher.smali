.class public Landroid/telephony/PhoneNumberFormattingTextWatcher;
.super Ljava/lang/Object;
.source "PhoneNumberFormattingTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

.field private mSelfChange:Z

.field private mStopFormatting:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 60
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-direct {p0, v0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>(Ljava/lang/String;)V

    #@b
    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "countryCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    #@6
    .line 70
    if-nez p1, :cond_0

    #@8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@d
    throw v0

    #@e
    .line 71
    :cond_0
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getAsYouTypeFormatter(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    #@18
    .line 69
    return-void
.end method

.method private getFormattedNumber(CZ)Ljava/lang/String;
    .locals 1
    .param p1, "lastNonSeparator"    # C
    .param p2, "hasCursor"    # Z

    #@0
    .prologue
    .line 156
    if-eqz p2, :cond_0

    #@2
    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    #@4
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigitAndRememberPosition(C)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    :goto_0
    return-object v0

    #@9
    .line 157
    :cond_0
    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    #@b
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigit(C)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    goto :goto_0
.end method

.method private hasSeparator(Ljava/lang/CharSequence;II)Z
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I

    #@0
    .prologue
    .line 166
    move v1, p2

    #@1
    .local v1, "i":I
    :goto_0
    add-int v2, p2, p3

    #@3
    if-ge v1, v2, :cond_1

    #@5
    .line 167
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@8
    move-result v0

    #@9
    .line 168
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_0

    #@f
    .line 169
    const/4 v2, 0x1

    #@10
    return v2

    #@11
    .line 166
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 172
    .end local v0    # "c":C
    :cond_1
    const/4 v2, 0x0

    #@15
    return v2
.end method

.method private reformat(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 8
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "cursor"    # I

    #@0
    .prologue
    .line 130
    add-int/lit8 v1, p2, -0x1

    #@2
    .line 131
    .local v1, "curIndex":I
    const/4 v2, 0x0

    #@3
    .line 132
    .local v2, "formatted":Ljava/lang/String;
    iget-object v7, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    #@5
    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->clear()V

    #@8
    .line 133
    const/4 v5, 0x0

    #@9
    .line 134
    .local v5, "lastNonSeparator":C
    const/4 v3, 0x0

    #@a
    .line 135
    .local v3, "hasCursor":Z
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@d
    move-result v6

    #@e
    .line 136
    .local v6, "len":I
    const/4 v4, 0x0

    #@f
    .end local v2    # "formatted":Ljava/lang/String;
    .end local v5    # "lastNonSeparator":C
    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_3

    #@11
    .line 137
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    #@14
    move-result v0

    #@15
    .line 138
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    #@18
    move-result v7

    #@19
    if-eqz v7, :cond_1

    #@1b
    .line 139
    if-eqz v5, :cond_0

    #@1d
    .line 140
    invoke-direct {p0, v5, v3}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->getFormattedNumber(CZ)Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    .line 141
    .local v2, "formatted":Ljava/lang/String;
    const/4 v3, 0x0

    #@22
    .line 143
    .end local v2    # "formatted":Ljava/lang/String;
    :cond_0
    move v5, v0

    #@23
    .line 145
    :cond_1
    if-ne v4, v1, :cond_2

    #@25
    .line 146
    const/4 v3, 0x1

    #@26
    .line 136
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@28
    goto :goto_0

    #@29
    .line 149
    .end local v0    # "c":C
    :cond_3
    if-eqz v5, :cond_4

    #@2b
    .line 150
    invoke-direct {p0, v5, v3}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->getFormattedNumber(CZ)Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    .line 152
    :cond_4
    return-object v2
.end method

.method private stopFormatting()V
    .locals 1

    #@0
    .prologue
    .line 161
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    #@3
    .line 162
    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    #@5
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->clear()V

    #@8
    .line 160
    return-void
.end method


# virtual methods
.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .param p1, "s"    # Landroid/text/Editable;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    monitor-enter p0

    #@3
    .line 99
    :try_start_0
    iget-boolean v2, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    #@5
    if-eqz v2, :cond_1

    #@7
    .line 101
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    :goto_0
    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit p0

    #@10
    .line 102
    return-void

    #@11
    :cond_0
    move v0, v1

    #@12
    .line 101
    goto :goto_0

    #@13
    .line 104
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    if-eqz v0, :cond_2

    #@17
    monitor-exit p0

    #@18
    .line 106
    return-void

    #@19
    .line 108
    :cond_2
    :try_start_2
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@1c
    move-result v0

    #@1d
    invoke-direct {p0, p1, v0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->reformat(Ljava/lang/CharSequence;I)Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    .line 109
    .local v3, "formatted":Ljava/lang/String;
    if-eqz v3, :cond_4

    #@23
    .line 110
    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    #@25
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->getRememberedPosition()I

    #@28
    move-result v6

    #@29
    .line 111
    .local v6, "rememberedPos":I
    const/4 v0, 0x1

    #@2a
    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    #@2c
    .line 112
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    #@2f
    move-result v2

    #@30
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@33
    move-result v5

    #@34
    const/4 v1, 0x0

    #@35
    const/4 v4, 0x0

    #@36
    move-object v0, p1

    #@37
    invoke-interface/range {v0 .. v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    #@3a
    .line 115
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v0

    #@42
    if-eqz v0, :cond_3

    #@44
    .line 116
    invoke-static {p1, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@47
    .line 118
    :cond_3
    const/4 v0, 0x0

    #@48
    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    #@4a
    .line 120
    .end local v6    # "rememberedPos":I
    :cond_4
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    #@4d
    move-result v0

    #@4e
    const/4 v1, 0x0

    #@4f
    invoke-static {p1, v1, v0}, Landroid/telephony/PhoneNumberUtils;->ttsSpanAsPhoneNumber(Landroid/text/Spannable;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@52
    monitor-exit p0

    #@53
    .line 98
    return-void

    #@54
    .end local v3    # "formatted":Ljava/lang/String;
    :catchall_0
    move-exception v0

    #@55
    monitor-exit p0

    #@56
    throw v0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    #@0
    .prologue
    .line 77
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 78
    :cond_0
    return-void

    #@9
    .line 81
    :cond_1
    if-lez p3, :cond_2

    #@b
    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->hasSeparator(Ljava/lang/CharSequence;II)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_2

    #@11
    .line 82
    invoke-direct {p0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->stopFormatting()V

    #@14
    .line 76
    :cond_2
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    #@0
    .prologue
    .line 88
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 89
    :cond_0
    return-void

    #@9
    .line 92
    :cond_1
    if-lez p4, :cond_2

    #@b
    invoke-direct {p0, p1, p2, p4}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->hasSeparator(Ljava/lang/CharSequence;II)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_2

    #@11
    .line 93
    invoke-direct {p0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->stopFormatting()V

    #@14
    .line 87
    :cond_2
    return-void
.end method
