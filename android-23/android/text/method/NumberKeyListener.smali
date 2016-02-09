.class public abstract Landroid/text/method/NumberKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "NumberKeyListener.java"

# interfaces
.implements Landroid/text/InputFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    #@3
    return-void
.end method

.method protected static ok([CC)Z
    .locals 3
    .param p0, "accept"    # [C
    .param p1, "c"    # C

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 86
    array-length v1, p0

    #@2
    add-int/lit8 v0, v1, -0x1

    #@4
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@6
    .line 87
    aget-char v1, p0, v0

    #@8
    if-ne v1, p1, :cond_0

    #@a
    .line 88
    const/4 v1, 0x1

    #@b
    return v1

    #@c
    .line 86
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@e
    goto :goto_0

    #@f
    .line 92
    :cond_1
    return v2
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    #@0
    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/text/method/NumberKeyListener;->getAcceptedChars()[C

    #@3
    move-result-object v0

    #@4
    .line 50
    .local v0, "accept":[C
    const/4 v1, 0x0

    #@5
    .line 53
    .local v1, "filter":Z
    move v3, p2

    #@6
    .local v3, "i":I
    :goto_0
    if-ge v3, p3, :cond_0

    #@8
    .line 54
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@b
    move-result v6

    #@c
    invoke-static {v0, v6}, Landroid/text/method/NumberKeyListener;->ok([CC)Z

    #@f
    move-result v6

    #@10
    if-nez v6, :cond_1

    #@12
    .line 59
    :cond_0
    if-ne v3, p3, :cond_2

    #@14
    .line 61
    const/4 v6, 0x0

    #@15
    return-object v6

    #@16
    .line 53
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@18
    goto :goto_0

    #@19
    .line 64
    :cond_2
    sub-int v6, p3, p2

    #@1b
    const/4 v7, 0x1

    #@1c
    if-ne v6, v7, :cond_3

    #@1e
    .line 66
    const-string/jumbo v6, ""

    #@21
    return-object v6

    #@22
    .line 70
    :cond_3
    new-instance v2, Landroid/text/SpannableStringBuilder;

    #@24
    invoke-direct {v2, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    #@27
    .line 71
    .local v2, "filtered":Landroid/text/SpannableStringBuilder;
    sub-int/2addr v3, p2

    #@28
    .line 72
    sub-int/2addr p3, p2

    #@29
    .line 74
    sub-int v5, p3, p2

    #@2b
    .line 76
    .local v5, "len":I
    add-int/lit8 v4, p3, -0x1

    #@2d
    .local v4, "j":I
    :goto_1
    if-lt v4, v3, :cond_5

    #@2f
    .line 77
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    #@32
    move-result v6

    #@33
    invoke-static {v0, v6}, Landroid/text/method/NumberKeyListener;->ok([CC)Z

    #@36
    move-result v6

    #@37
    if-nez v6, :cond_4

    #@39
    .line 78
    add-int/lit8 v6, v4, 0x1

    #@3b
    invoke-virtual {v2, v4, v6}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    #@3e
    .line 76
    :cond_4
    add-int/lit8 v4, v4, -0x1

    #@40
    goto :goto_1

    #@41
    .line 82
    :cond_5
    return-object v2
.end method

.method protected abstract getAcceptedChars()[C
.end method

.method protected lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "content"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 44
    invoke-virtual {p0}, Landroid/text/method/NumberKeyListener;->getAcceptedChars()[C

    #@3
    move-result-object v0

    #@4
    invoke-static {p2, p1}, Landroid/text/method/NumberKeyListener;->getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I

    #@7
    move-result v1

    #@8
    invoke-virtual {p1, v0, v1}, Landroid/view/KeyEvent;->getMatch([CI)C

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/16 v7, 0x30

    #@2
    const/4 v8, 0x1

    #@3
    const/4 v6, 0x0

    #@4
    .line 101
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@7
    move-result v0

    #@8
    .line 102
    .local v0, "a":I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@b
    move-result v1

    #@c
    .line 104
    .local v1, "b":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@f
    move-result v5

    #@10
    .line 105
    .local v5, "selStart":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@13
    move-result v4

    #@14
    .line 108
    .local v4, "selEnd":I
    if-ltz v5, :cond_0

    #@16
    if-gez v4, :cond_1

    #@18
    .line 109
    :cond_0
    const/4 v4, 0x0

    #@19
    const/4 v5, 0x0

    #@1a
    .line 110
    invoke-static {p2, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@1d
    .line 113
    :cond_1
    if-eqz p4, :cond_3

    #@1f
    invoke-virtual {p0, p4, p2}, Landroid/text/method/NumberKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    #@22
    move-result v2

    #@23
    .line 114
    .local v2, "i":I
    :goto_0
    if-eqz p4, :cond_4

    #@25
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@28
    move-result v3

    #@29
    .line 115
    .local v3, "repeatCount":I
    :goto_1
    if-nez v3, :cond_5

    #@2b
    .line 116
    if-eqz v2, :cond_6

    #@2d
    .line 117
    if-eq v5, v4, :cond_2

    #@2f
    .line 118
    invoke-static {p2, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@32
    .line 121
    :cond_2
    int-to-char v6, v2

    #@33
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@36
    move-result-object v6

    #@37
    invoke-interface {p2, v5, v4, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    #@3a
    .line 123
    invoke-static {p2}, Landroid/text/method/NumberKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    #@3d
    .line 124
    return v8

    #@3e
    .line 113
    .end local v2    # "i":I
    .end local v3    # "repeatCount":I
    :cond_3
    const/4 v2, 0x0

    #@3f
    .restart local v2    # "i":I
    goto :goto_0

    #@40
    .line 114
    :cond_4
    const/4 v3, 0x0

    #@41
    .restart local v3    # "repeatCount":I
    goto :goto_1

    #@42
    .line 126
    :cond_5
    if-ne v2, v7, :cond_6

    #@44
    if-ne v3, v8, :cond_6

    #@46
    .line 129
    if-ne v5, v4, :cond_6

    #@48
    if-lez v4, :cond_6

    #@4a
    .line 130
    add-int/lit8 v6, v5, -0x1

    #@4c
    invoke-interface {p2, v6}, Landroid/text/Editable;->charAt(I)C

    #@4f
    move-result v6

    #@50
    if-ne v6, v7, :cond_6

    #@52
    .line 131
    add-int/lit8 v6, v5, -0x1

    #@54
    const/16 v7, 0x2b

    #@56
    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@59
    move-result-object v7

    #@5a
    invoke-interface {p2, v6, v4, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    #@5d
    .line 132
    invoke-static {p2}, Landroid/text/method/NumberKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    #@60
    .line 133
    return v8

    #@61
    .line 137
    :cond_6
    invoke-static {p2}, Landroid/text/method/NumberKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    #@64
    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    #@67
    move-result v6

    #@68
    return v6
.end method
