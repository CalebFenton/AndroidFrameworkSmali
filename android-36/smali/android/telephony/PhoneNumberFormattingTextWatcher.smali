.class public Landroid/telephony/PhoneNumberFormattingTextWatcher;
.super Ljava/lang/Object;
.source "PhoneNumberFormattingTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private greylist-max-r mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

.field private greylist-max-o mSelfChange:Z

.field private greylist-max-o mStopFormatting:Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 67
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "countryCode"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    .line 78
    if-eqz p1, :cond_13

    .line 79
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getAsYouTypeFormatter(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    .line 80
    return-void

    .line 78
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private greylist-max-o getFormattedNumber(CZ)Ljava/lang/String;
    .registers 4
    .param p1, "lastNonSeparator"    # C
    .param p2, "hasCursor"    # Z

    .line 171
    if-eqz p2, :cond_9

    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigitAndRememberPosition(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 172
    :cond_9
    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigit(C)Ljava/lang/String;

    move-result-object v0

    .line 171
    :goto_f
    return-object v0
.end method

.method private greylist-max-o hasSeparator(Ljava/lang/CharSequence;II)Z
    .registers 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .line 181
    move v0, p2

    .local v0, "i":I
    :goto_1
    add-int v1, p2, p3

    if-ge v0, v1, :cond_14

    .line 182
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 183
    .local v1, "c":C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v2

    if-nez v2, :cond_11

    .line 184
    const/4 v2, 0x1

    return v2

    .line 181
    .end local v1    # "c":C
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 187
    .end local v0    # "i":I
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o reformat(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .registers 11
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "cursor"    # I

    .line 145
    add-int/lit8 v0, p2, -0x1

    .line 146
    .local v0, "curIndex":I
    const/4 v1, 0x0

    .line 147
    .local v1, "formatted":Ljava/lang/String;
    iget-object v2, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->clear()V

    .line 148
    const/4 v2, 0x0

    .line 149
    .local v2, "lastNonSeparator":C
    const/4 v3, 0x0

    .line 150
    .local v3, "hasCursor":Z
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 151
    .local v4, "len":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_f
    if-ge v5, v4, :cond_29

    .line 152
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 153
    .local v6, "c":C
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 154
    if-eqz v2, :cond_22

    .line 155
    invoke-direct {p0, v2, v3}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->getFormattedNumber(CZ)Ljava/lang/String;

    move-result-object v1

    .line 156
    const/4 v3, 0x0

    .line 158
    :cond_22
    move v2, v6

    .line 160
    :cond_23
    if-ne v5, v0, :cond_26

    .line 161
    const/4 v3, 0x1

    .line 151
    .end local v6    # "c":C
    :cond_26
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 164
    .end local v5    # "i":I
    :cond_29
    if-eqz v2, :cond_2f

    .line 165
    invoke-direct {p0, v2, v3}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->getFormattedNumber(CZ)Ljava/lang/String;

    move-result-object v1

    .line 167
    :cond_2f
    return-object v1
.end method

.method private greylist-max-o stopFormatting()V
    .registers 2

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    .line 177
    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->clear()V

    .line 178
    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist afterTextChanged(Landroid/text/Editable;)V
    .registers 11
    .param p1, "s"    # Landroid/text/Editable;

    monitor-enter p0

    .line 107
    :try_start_1
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    .line 109
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_f

    :cond_e
    move v1, v2

    :goto_f
    iput-boolean v1, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_6c

    .line 110
    monitor-exit p0

    return-void

    .line 112
    .end local p0    # "this":Landroid/telephony/PhoneNumberFormattingTextWatcher;
    :cond_13
    :try_start_13
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_6c

    if-eqz v0, :cond_19

    .line 114
    monitor-exit p0

    return-void

    .line 116
    .restart local p0    # "this":Landroid/telephony/PhoneNumberFormattingTextWatcher;
    :cond_19
    :try_start_19
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->reformat(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 117
    .local v6, "formatted":Ljava/lang/String;
    if-eqz v6, :cond_4a

    .line 118
    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->getRememberedPosition()I

    move-result v0

    .line 119
    .local v0, "rememberedPos":I
    iput-boolean v1, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    .line 120
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    .end local p1    # "s":Landroid/text/Editable;
    .local v3, "s":Landroid/text/Editable;
    invoke-interface/range {v3 .. v8}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 123
    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 124
    invoke-static {v3, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 126
    .end local p0    # "this":Landroid/telephony/PhoneNumberFormattingTextWatcher;
    :cond_47
    iput-boolean v2, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    goto :goto_4b

    .line 117
    .end local v0    # "rememberedPos":I
    .end local v3    # "s":Landroid/text/Editable;
    .restart local p1    # "s":Landroid/text/Editable;
    :cond_4a
    move-object v3, p1

    .line 130
    .end local p1    # "s":Landroid/text/Editable;
    .restart local v3    # "s":Landroid/text/Editable;
    :goto_4b
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result p1

    const-class v0, Landroid/text/style/TtsSpan;

    invoke-interface {v3, v2, p1, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/TtsSpan;

    .line 131
    .local p1, "ttsSpans":[Landroid/text/style/TtsSpan;
    array-length v0, p1

    move v1, v2

    :goto_59
    if-ge v1, v0, :cond_63

    aget-object v4, p1, v1

    .line 132
    .local v4, "ttsSpan":Landroid/text/style/TtsSpan;
    invoke-interface {v3, v4}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 131
    .end local v4    # "ttsSpan":Landroid/text/style/TtsSpan;
    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    .line 135
    :cond_63
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-static {v3, v2, v0}, Landroid/telephony/PhoneNumberUtils;->ttsSpanAsPhoneNumber(Landroid/text/Spannable;II)V
    :try_end_6a
    .catchall {:try_start_19 .. :try_end_6a} :catchall_6c

    .line 136
    monitor-exit p0

    return-void

    .line 106
    .end local v3    # "s":Landroid/text/Editable;
    .end local v6    # "formatted":Ljava/lang/String;
    .end local p1    # "ttsSpans":[Landroid/text/style/TtsSpan;
    :catchall_6c
    move-exception v0

    move-object p1, v0

    :try_start_6e
    monitor-exit p0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6c

    throw p1
.end method

.method public whitelist beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 85
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    if-eqz v0, :cond_9

    goto :goto_15

    .line 89
    :cond_9
    if-lez p3, :cond_14

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->hasSeparator(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 90
    invoke-direct {p0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->stopFormatting()V

    .line 92
    :cond_14
    return-void

    .line 86
    :cond_15
    :goto_15
    return-void
.end method

.method public whitelist onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 96
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    if-eqz v0, :cond_9

    goto :goto_15

    .line 100
    :cond_9
    if-lez p4, :cond_14

    invoke-direct {p0, p1, p2, p4}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->hasSeparator(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 101
    invoke-direct {p0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->stopFormatting()V

    .line 103
    :cond_14
    return-void

    .line 97
    :cond_15
    :goto_15
    return-void
.end method
