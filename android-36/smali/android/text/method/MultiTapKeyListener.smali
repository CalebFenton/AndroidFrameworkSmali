.class public Landroid/text/method/MultiTapKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "MultiTapKeyListener.java"

# interfaces
.implements Landroid/text/SpanWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/MultiTapKeyListener$Timeout;
    }
.end annotation


# static fields
.field private static greylist-max-o sInstance:[Landroid/text/method/MultiTapKeyListener;

.field private static final greylist-max-o sRecs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mAutoText:Z

.field private greylist-max-o mCapitalize:Landroid/text/method/TextKeyListener$Capitalize;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 43
    invoke-static {}, Landroid/text/method/TextKeyListener$Capitalize;->values()[Landroid/text/method/TextKeyListener$Capitalize;

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Landroid/text/method/MultiTapKeyListener;

    sput-object v0, Landroid/text/method/MultiTapKeyListener;->sInstance:[Landroid/text/method/MultiTapKeyListener;

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    .line 51
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string v2, ".,1!@#$%^&*:/?\'=()"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const/16 v1, 0x9

    const-string v2, "abc2ABC"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const/16 v1, 0xa

    const-string v2, "def3DEF"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const/16 v1, 0xb

    const-string v2, "ghi4GHI"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const/16 v1, 0xc

    const-string v2, "jkl5JKL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const/16 v1, 0xd

    const-string v2, "mno6MNO"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const/16 v1, 0xe

    const-string v2, "pqrs7PQRS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const/16 v1, 0xf

    const-string/jumbo v2, "tuv8TUV"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const/16 v1, 0x10

    const-string/jumbo v2, "wxyz9WXYZ"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string v2, "0+"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const/16 v1, 0x12

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    return-void
.end method

.method public constructor whitelist <init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V
    .registers 3
    .param p1, "cap"    # Landroid/text/method/TextKeyListener$Capitalize;
    .param p2, "autotext"    # Z

    .line 65
    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    .line 66
    iput-object p1, p0, Landroid/text/method/MultiTapKeyListener;->mCapitalize:Landroid/text/method/TextKeyListener$Capitalize;

    .line 67
    iput-boolean p2, p0, Landroid/text/method/MultiTapKeyListener;->mAutoText:Z

    .line 68
    return-void
.end method

.method public static whitelist getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/MultiTapKeyListener;
    .registers 5
    .param p0, "autotext"    # Z
    .param p1, "cap"    # Landroid/text/method/TextKeyListener$Capitalize;

    .line 76
    invoke-virtual {p1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p0

    .line 78
    .local v0, "off":I
    sget-object v1, Landroid/text/method/MultiTapKeyListener;->sInstance:[Landroid/text/method/MultiTapKeyListener;

    aget-object v1, v1, v0

    if-nez v1, :cond_16

    .line 79
    sget-object v1, Landroid/text/method/MultiTapKeyListener;->sInstance:[Landroid/text/method/MultiTapKeyListener;

    new-instance v2, Landroid/text/method/MultiTapKeyListener;

    invoke-direct {v2, p1, p0}, Landroid/text/method/MultiTapKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    aput-object v2, v1, v0

    .line 82
    :cond_16
    sget-object v1, Landroid/text/method/MultiTapKeyListener;->sInstance:[Landroid/text/method/MultiTapKeyListener;

    aget-object v1, v1, v0

    return-object v1
.end method

.method private static greylist-max-o removeTimeouts(Landroid/text/Spannable;)V
    .registers 5
    .param p0, "buf"    # Landroid/text/Spannable;

    .line 247
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/method/MultiTapKeyListener$Timeout;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/MultiTapKeyListener$Timeout;

    .line 249
    .local v0, "timeout":[Landroid/text/method/MultiTapKeyListener$Timeout;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_20

    .line 250
    aget-object v2, v0, v1

    .line 252
    .local v2, "t":Landroid/text/method/MultiTapKeyListener$Timeout;
    invoke-virtual {v2, v2}, Landroid/text/method/MultiTapKeyListener$Timeout;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 253
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/text/method/MultiTapKeyListener$Timeout;->-$$Nest$fputmBuffer(Landroid/text/method/MultiTapKeyListener$Timeout;Landroid/text/Editable;)V

    .line 254
    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 249
    .end local v2    # "t":Landroid/text/method/MultiTapKeyListener$Timeout;
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 256
    .end local v1    # "i":I
    :cond_20
    return-void
.end method


# virtual methods
.method public whitelist getInputType()I
    .registers 3

    .line 86
    iget-object v0, p0, Landroid/text/method/MultiTapKeyListener;->mCapitalize:Landroid/text/method/TextKeyListener$Capitalize;

    iget-boolean v1, p0, Landroid/text/method/MultiTapKeyListener;->mAutoText:Z

    invoke-static {v0, v1}, Landroid/text/method/MultiTapKeyListener;->makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I

    move-result v0

    return v0
.end method

.method public whitelist onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 23
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 92
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v7, p3

    const/4 v2, 0x0

    .line 94
    .local v2, "pref":I
    if-eqz p1, :cond_17

    .line 95
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/method/TextKeyListener;->getPrefs(Landroid/content/Context;)I

    move-result v2

    move v8, v2

    goto :goto_18

    .line 94
    :cond_17
    move v8, v2

    .line 99
    .end local v2    # "pref":I
    .local v8, "pref":I
    :goto_18
    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 100
    .local v2, "a":I
    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 102
    .local v3, "b":I
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 103
    .local v4, "selStart":I
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 106
    .end local v2    # "a":I
    .local v3, "selEnd":I
    sget-object v2, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    .line 107
    .local v9, "activeStart":I
    sget-object v2, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 114
    .local v10, "activeEnd":I
    sget-object v2, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    const/high16 v5, -0x1000000

    and-int/2addr v2, v5

    ushr-int/lit8 v11, v2, 0x18

    .line 117
    .local v11, "rec":I
    const/16 v2, 0x11

    const/4 v12, 0x1

    if-ne v9, v4, :cond_d9

    if-ne v10, v3, :cond_d9

    sub-int v5, v3, v4

    if-ne v5, v12, :cond_d9

    if-ltz v11, :cond_d9

    sget-object v5, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    .line 119
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v11, v5, :cond_d9

    .line 120
    if-ne v7, v2, :cond_90

    .line 121
    invoke-interface {v1, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    .line 123
    .local v5, "current":C
    invoke-static {v5}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v6

    if-eqz v6, :cond_75

    .line 124
    nop

    .line 125
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-interface {v1, v4, v3, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 126
    invoke-static {v1}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    .line 127
    new-instance v2, Landroid/text/method/MultiTapKeyListener$Timeout;

    invoke-direct {v2, v0, v1}, Landroid/text/method/MultiTapKeyListener$Timeout;-><init>(Landroid/text/method/MultiTapKeyListener;Landroid/text/Editable;)V

    .line 129
    return v12

    .line 131
    :cond_75
    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_90

    .line 132
    nop

    .line 133
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-interface {v1, v4, v3, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 134
    invoke-static {v1}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    .line 135
    new-instance v2, Landroid/text/method/MultiTapKeyListener$Timeout;

    invoke-direct {v2, v0, v1}, Landroid/text/method/MultiTapKeyListener$Timeout;-><init>(Landroid/text/method/MultiTapKeyListener;Landroid/text/Editable;)V

    .line 137
    return v12

    .line 141
    .end local v5    # "current":C
    :cond_90
    sget-object v5, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-ne v5, v11, :cond_c9

    .line 142
    sget-object v5, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    invoke-virtual {v5, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 143
    .local v5, "val":Ljava/lang/String;
    invoke-interface {v1, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v13

    .line 144
    .local v13, "ch":C
    invoke-virtual {v5, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 146
    .local v6, "ix":I
    if-ltz v6, :cond_c9

    .line 147
    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    rem-int/2addr v2, v14

    .line 149
    .end local v6    # "ix":I
    .local v2, "ix":I
    add-int/lit8 v6, v2, 0x1

    move-object/from16 v17, v5

    move v5, v2

    move v2, v4

    move-object/from16 v4, v17

    .local v2, "selStart":I
    .local v4, "val":Ljava/lang/String;
    .local v5, "ix":I
    invoke-interface/range {v1 .. v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 150
    move v4, v2

    move v2, v5

    move-object/from16 v5, v17

    .local v2, "ix":I
    .local v4, "selStart":I
    .local v5, "val":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    .line 151
    new-instance v6, Landroid/text/method/MultiTapKeyListener$Timeout;

    invoke-direct {v6, v0, v1}, Landroid/text/method/MultiTapKeyListener$Timeout;-><init>(Landroid/text/method/MultiTapKeyListener;Landroid/text/Editable;)V

    .line 153
    return v12

    .line 162
    .end local v2    # "ix":I
    .end local v5    # "val":Ljava/lang/String;
    .end local v13    # "ch":C
    :cond_c9
    sget-object v5, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    .line 164
    .end local v11    # "rec":I
    .local v5, "rec":I
    if-ltz v5, :cond_d7

    .line 165
    invoke-static {v1, v3, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 166
    move v4, v3

    move v11, v5

    goto :goto_e0

    .line 164
    :cond_d7
    move v11, v5

    goto :goto_e0

    .line 169
    .end local v5    # "rec":I
    .restart local v11    # "rec":I
    :cond_d9
    sget-object v5, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    move v11, v5

    .line 172
    :goto_e0
    if-ltz v11, :cond_175

    .line 177
    sget-object v5, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    invoke-virtual {v5, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 179
    .local v5, "val":Ljava/lang/String;
    const/4 v6, 0x0

    .line 180
    .local v6, "off":I
    and-int/lit8 v13, v8, 0x1

    if-eqz v13, :cond_10d

    iget-object v13, v0, Landroid/text/method/MultiTapKeyListener;->mCapitalize:Landroid/text/method/TextKeyListener$Capitalize;

    .line 181
    invoke-static {v13, v1, v4}, Landroid/text/method/TextKeyListener;->shouldCap(Landroid/text/method/TextKeyListener$Capitalize;Ljava/lang/CharSequence;I)Z

    move-result v13

    if-eqz v13, :cond_10d

    .line 182
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_f8
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v13, v14, :cond_10d

    .line 183
    invoke-virtual {v5, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v14

    if-eqz v14, :cond_10a

    .line 184
    move v6, v13

    .line 185
    goto :goto_10d

    .line 182
    :cond_10a
    add-int/lit8 v13, v13, 0x1

    goto :goto_f8

    .line 190
    .end local v13    # "i":I
    :cond_10d
    :goto_10d
    if-eq v4, v3, :cond_112

    .line 191
    invoke-static {v1, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 194
    :cond_112
    sget-object v13, Landroid/text/method/MultiTapKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    invoke-interface {v1, v13, v4, v4, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 197
    move v2, v4

    move-object v4, v5

    move v5, v6

    .end local v6    # "off":I
    .local v2, "selStart":I
    .local v4, "val":Ljava/lang/String;
    .local v5, "off":I
    add-int/lit8 v6, v5, 0x1

    invoke-interface/range {v1 .. v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 199
    sget-object v6, Landroid/text/method/MultiTapKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    invoke-interface {v1, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 200
    .local v6, "oldStart":I
    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 202
    if-eq v3, v6, :cond_13d

    .line 203
    invoke-static {v1, v6, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 205
    sget-object v13, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    const/16 v14, 0x21

    invoke-interface {v1, v13, v6, v3, v14}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 209
    sget-object v13, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    shl-int/lit8 v15, v11, 0x18

    or-int/2addr v14, v15

    invoke-interface {v1, v13, v6, v3, v14}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 216
    :cond_13d
    invoke-static {v1}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    .line 217
    new-instance v13, Landroid/text/method/MultiTapKeyListener$Timeout;

    invoke-direct {v13, v0, v1}, Landroid/text/method/MultiTapKeyListener$Timeout;-><init>(Landroid/text/method/MultiTapKeyListener;Landroid/text/Editable;)V

    .line 222
    invoke-interface {v1, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    if-gez v13, :cond_172

    .line 223
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v13

    const-class v14, Landroid/text/method/KeyListener;

    const/4 v15, 0x0

    invoke-interface {v1, v15, v13, v14}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/text/method/KeyListener;

    .line 225
    .local v13, "methods":[Landroid/text/method/KeyListener;
    array-length v14, v13

    move/from16 v16, v12

    move v12, v15

    :goto_15c
    if-ge v12, v14, :cond_167

    aget-object v15, v13, v12

    .line 226
    .local v15, "method":Ljava/lang/Object;
    invoke-interface {v1, v15}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 225
    .end local v15    # "method":Ljava/lang/Object;
    add-int/lit8 v12, v12, 0x1

    const/4 v15, 0x0

    goto :goto_15c

    .line 228
    :cond_167
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v12

    const/16 v14, 0x12

    const/4 v15, 0x0

    invoke-interface {v1, v0, v15, v12, v14}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_174

    .line 222
    .end local v13    # "methods":[Landroid/text/method/KeyListener;
    :cond_172
    move/from16 v16, v12

    .line 232
    :goto_174
    return v16

    .line 235
    .end local v2    # "selStart":I
    .end local v5    # "off":I
    .end local v6    # "oldStart":I
    .local v4, "selStart":I
    :cond_175
    move v2, v4

    .end local v4    # "selStart":I
    .restart local v2    # "selStart":I
    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v4

    return v4
.end method

.method public whitelist onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 5
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 291
    return-void
.end method

.method public whitelist onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .registers 8
    .param p1, "buf"    # Landroid/text/Spannable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "s"    # I
    .param p4, "e"    # I
    .param p5, "start"    # I
    .param p6, "stop"    # I

    .line 240
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v0, :cond_c

    .line 241
    sget-object v0, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 242
    invoke-static {p1}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    .line 244
    :cond_c
    return-void
.end method

.method public whitelist onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 5
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 292
    return-void
.end method
