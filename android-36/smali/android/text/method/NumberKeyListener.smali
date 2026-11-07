.class public abstract Landroid/text/method/NumberKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "NumberKeyListener.java"

# interfaces
.implements Landroid/text/InputFilter;


# static fields
.field private static final greylist-max-o DATE_TIME_FORMAT_SYMBOLS:Ljava/lang/String; = "GyYuUrQqMLlwWdDFgEecabBhHKkjJCmsSAzZOvVXx"

.field private static final greylist-max-o SINGLE_QUOTE:C = '\''


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    return-void
.end method

.method static greylist-max-o addAmPmChars(Ljava/util/Collection;Ljava/util/Locale;)Z
    .registers 8
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/Locale;",
            ")Z"
        }
    .end annotation

    .line 227
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Character;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 228
    return v0

    .line 230
    :cond_4
    invoke-static {p1}, Landroid/text/format/DateFormat;->getIcuDateFormatSymbols(Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "amPm":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    array-length v3, v1

    if-ge v2, v3, :cond_33

    .line 232
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_11
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_30

    .line 233
    aget-object v4, v1, v2

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 234
    .local v4, "ch":C
    invoke-static {v4}, Ljava/lang/Character;->isBmpCodePoint(I)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 235
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 232
    .end local v4    # "ch":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 237
    .restart local v4    # "ch":C
    :cond_2f
    return v0

    .line 231
    .end local v3    # "j":I
    .end local v4    # "ch":C
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 241
    .end local v2    # "i":I
    :cond_33
    const/4 v0, 0x1

    return v0
.end method

.method static greylist-max-o addDigits(Ljava/util/Collection;Ljava/util/Locale;)Z
    .registers 7
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/Locale;",
            ")Z"
        }
    .end annotation

    .line 153
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Character;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 154
    return v0

    .line 156
    :cond_4
    invoke-static {p1}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStrings()[Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "digits":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    const/16 v3, 0xa

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2b

    .line 158
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_1b

    .line 159
    return v0

    .line 161
    :cond_1b
    aget-object v3, v1, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 163
    .end local v2    # "i":I
    :cond_2b
    return v4
.end method

.method static greylist-max-o addFormatCharsFromSkeleton(Ljava/util/Collection;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "skeleton"    # Ljava/lang/String;
    .param p3, "symbolsToIgnore"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 175
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Character;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 176
    return v0

    .line 178
    :cond_4
    invoke-static {p1, p2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "pattern":Ljava/lang/String;
    const/4 v2, 0x1

    .line 180
    .local v2, "outsideQuotes":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_4d

    .line 181
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 182
    .local v4, "ch":C
    invoke-static {v4}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 183
    return v0

    .line 184
    :cond_1c
    const/16 v6, 0x27

    if-ne v4, v6, :cond_30

    .line 185
    if-nez v2, :cond_23

    goto :goto_24

    :cond_23
    move v5, v0

    :goto_24
    move v2, v5

    .line 188
    if-eqz v3, :cond_4a

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_30

    .line 189
    goto :goto_4a

    .line 193
    :cond_30
    if-eqz v2, :cond_43

    .line 194
    invoke-virtual {p3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3a

    .line 196
    goto :goto_4a

    .line 197
    :cond_3a
    const-string v5, "GyYuUrQqMLlwWdDFgEecabBhHKkjJCmsSAzZOvVXx"

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v6, :cond_43

    .line 199
    return v0

    .line 204
    :cond_43
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 180
    .end local v4    # "ch":C
    :cond_4a
    :goto_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 206
    .end local v3    # "i":I
    :cond_4d
    return v5
.end method

.method static greylist-max-o addFormatCharsFromSkeletons(Ljava/util/Collection;Ljava/util/Locale;[Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "skeletons"    # [Ljava/lang/String;
    .param p3, "symbolsToIgnore"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/Locale;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 213
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Character;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_11

    .line 214
    aget-object v1, p2, v0

    invoke-static {p0, p1, v1, p3}, Landroid/text/method/NumberKeyListener;->addFormatCharsFromSkeleton(Ljava/util/Collection;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 216
    .local v1, "success":Z
    if-nez v1, :cond_e

    .line 217
    const/4 v2, 0x0

    return v2

    .line 213
    .end local v1    # "success":Z
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 220
    .end local v0    # "i":I
    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method static greylist-max-o collectionToArray(Ljava/util/Collection;)[C
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Character;",
            ">;)[C"
        }
    .end annotation

    .line 247
    .local p0, "chars":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Character;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [C

    .line 248
    .local v0, "result":[C
    const/4 v1, 0x0

    .line 249
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    .line 250
    .local v3, "ch":Ljava/lang/Character;
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v5

    aput-char v5, v0, v1

    .line 251
    .end local v3    # "ch":Ljava/lang/Character;
    move v1, v4

    goto :goto_b

    .line 252
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_21
    return-object v0
.end method

.method protected static whitelist ok([CC)Z
    .registers 5
    .param p0, "accept"    # [C
    .param p1, "c"    # C

    .line 95
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_3
    if-ltz v0, :cond_d

    .line 96
    aget-char v2, p0, v0

    if-ne v2, p1, :cond_a

    .line 97
    return v1

    .line 95
    :cond_a
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 101
    .end local v0    # "i":I
    :cond_d
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .line 58
    invoke-virtual {p0}, Landroid/text/method/NumberKeyListener;->getAcceptedChars()[C

    move-result-object v0

    .line 59
    .local v0, "accept":[C
    const/4 v1, 0x0

    .line 62
    .local v1, "filter":Z
    move v2, p2

    .local v2, "i":I
    :goto_6
    if-ge v2, p3, :cond_16

    .line 63
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v0, v3}, Landroid/text/method/NumberKeyListener;->ok([CC)Z

    move-result v3

    if-nez v3, :cond_13

    .line 64
    goto :goto_16

    .line 62
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 68
    :cond_16
    :goto_16
    if-ne v2, p3, :cond_1a

    .line 70
    const/4 v3, 0x0

    return-object v3

    .line 73
    :cond_1a
    sub-int v3, p3, p2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_22

    .line 75
    const-string v3, ""

    return-object v3

    .line 78
    :cond_22
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 80
    .local v3, "filtered":Landroid/text/SpannableStringBuilder;
    sub-int/2addr v2, p2

    .line 81
    sub-int/2addr p3, p2

    .line 83
    sub-int v4, p3, p2

    .line 85
    .local v4, "len":I
    add-int/lit8 v5, p3, -0x1

    .local v5, "j":I
    :goto_2d
    if-lt v5, v2, :cond_41

    .line 86
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v0, v6}, Landroid/text/method/NumberKeyListener;->ok([CC)Z

    move-result v6

    if-nez v6, :cond_3e

    .line 87
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 85
    :cond_3e
    add-int/lit8 v5, v5, -0x1

    goto :goto_2d

    .line 91
    .end local v5    # "j":I
    :cond_41
    return-object v3
.end method

.method protected abstract whitelist getAcceptedChars()[C
.end method

.method protected whitelist lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "content"    # Landroid/text/Spannable;

    .line 53
    invoke-virtual {p0}, Landroid/text/method/NumberKeyListener;->getAcceptedChars()[C

    move-result-object v0

    invoke-static {p2, p1}, Landroid/text/method/NumberKeyListener;->getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/KeyEvent;->getMatch([CI)C

    move-result v0

    return v0
.end method

.method public whitelist onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 110
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 111
    .local v0, "a":I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 113
    .local v1, "b":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 114
    .local v2, "selStart":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 117
    .end local v1    # "b":I
    .local v0, "selEnd":I
    const/4 v1, 0x0

    if-ltz v2, :cond_15

    if-gez v0, :cond_1a

    .line 118
    :cond_15
    move v0, v1

    move v2, v1

    .line 119
    invoke-static {p2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 122
    :cond_1a
    if-eqz p4, :cond_21

    invoke-virtual {p0, p4, p2}, Landroid/text/method/NumberKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v3

    goto :goto_22

    :cond_21
    move v3, v1

    .line 123
    .local v3, "i":I
    :goto_22
    if-eqz p4, :cond_28

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    .line 124
    .local v1, "repeatCount":I
    :cond_28
    const/4 v4, 0x1

    if-nez v1, :cond_3e

    .line 125
    if-eqz v3, :cond_5f

    .line 126
    if-eq v2, v0, :cond_32

    .line 127
    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 130
    :cond_32
    int-to-char v5, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v2, v0, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 132
    invoke-static {p2}, Landroid/text/method/NumberKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 133
    return v4

    .line 135
    :cond_3e
    const/16 v5, 0x30

    if-ne v3, v5, :cond_5f

    if-ne v1, v4, :cond_5f

    .line 138
    if-ne v2, v0, :cond_5f

    if-lez v0, :cond_5f

    add-int/lit8 v6, v2, -0x1

    .line 139
    invoke-interface {p2, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_5f

    .line 140
    add-int/lit8 v5, v2, -0x1

    const/16 v6, 0x2b

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v5, v0, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 141
    invoke-static {p2}, Landroid/text/method/NumberKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 142
    return v4

    .line 146
    :cond_5f
    invoke-static {p2}, Landroid/text/method/NumberKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v4

    return v4
.end method
