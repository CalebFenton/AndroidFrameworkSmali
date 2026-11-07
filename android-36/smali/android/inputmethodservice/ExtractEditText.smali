.class public Landroid/inputmethodservice/ExtractEditText;
.super Landroid/widget/EditText;
.source "ExtractEditText.java"


# instance fields
.field private greylist-max-o mIME:Landroid/inputmethodservice/InputMethodService;

.field private greylist-max-o mSettingExtractedText:I


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 38
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/inputmethodservice/ExtractEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    return-void
.end method


# virtual methods
.method protected greylist-max-o deleteText_internal(II)V
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 188
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onExtractedDeleteText(II)V

    .line 189
    return-void
.end method

.method public whitelist finishInternalChanges()V
    .registers 2

    .line 68
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    .line 69
    return-void
.end method

.method public whitelist hasFocus()Z
    .registers 2

    .line 156
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public whitelist hasVerticalScrollBar()Z
    .registers 3

    .line 132
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->computeVerticalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->computeVerticalScrollExtent()I

    move-result v1

    if-le v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist hasWindowFocus()Z
    .registers 2

    .line 140
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public whitelist isFocused()Z
    .registers 2

    .line 148
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isInExtractedMode()Z
    .registers 2

    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isInputMethodTarget()Z
    .registers 2

    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method protected whitelist onSelectionChanged(II)V
    .registers 4
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    .line 88
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_11

    if-ltz p1, :cond_11

    if-ltz p2, :cond_11

    .line 89
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onExtractedSelectionChanged(II)V

    .line 91
    :cond_11
    return-void
.end method

.method public whitelist onTextContextMenuItem(I)Z
    .registers 3
    .param p1, "id"    # I

    .line 108
    const v0, 0x102001f

    if-eq p1, v0, :cond_2b

    const v0, 0x1020034

    if-ne p1, v0, :cond_b

    goto :goto_2b

    .line 111
    :cond_b
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onExtractTextContextMenuItem(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 114
    const v0, 0x1020021

    if-eq p1, v0, :cond_21

    const v0, 0x1020022

    if-ne p1, v0, :cond_24

    :cond_21
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->stopTextActionMode()V

    .line 115
    :cond_24
    const/4 v0, 0x1

    return v0

    .line 117
    :cond_26
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    .line 109
    :cond_2b
    :goto_2b
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v0

    return v0
.end method

.method public whitelist performClick()Z
    .registers 2

    .line 98
    invoke-super {p0}, Landroid/widget/EditText;->performClick()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_11

    .line 99
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->onExtractedTextClicked()V

    .line 100
    const/4 v0, 0x1

    return v0

    .line 102
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method protected greylist-max-o replaceText_internal(IILjava/lang/CharSequence;)V
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    .line 199
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2, p3}, Landroid/inputmethodservice/InputMethodService;->onExtractedReplaceText(IILjava/lang/CharSequence;)V

    .line 200
    return-void
.end method

.method protected greylist-max-o setCursorPosition_internal(II)V
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 221
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onExtractedSelectionChanged(II)V

    .line 222
    return-void
.end method

.method public whitelist setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    .registers 4
    .param p1, "text"    # Landroid/view/inputmethod/ExtractedText;

    .line 77
    :try_start_0
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    .line 78
    invoke-super {p0, p1}, Landroid/widget/EditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_11

    .line 80
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    .line 81
    nop

    .line 82
    return-void

    .line 80
    :catchall_11
    move-exception v0

    iget v1, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    .line 81
    throw v0
.end method

.method greylist-max-o setIME(Landroid/inputmethodservice/InputMethodService;)V
    .registers 2
    .param p1, "ime"    # Landroid/inputmethodservice/InputMethodService;

    .line 50
    iput-object p1, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    .line 51
    return-void
.end method

.method protected greylist-max-o setSpan_internal(Ljava/lang/Object;III)V
    .registers 6
    .param p1, "span"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .line 210
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/inputmethodservice/InputMethodService;->onExtractedSetSpan(Ljava/lang/Object;III)V

    .line 211
    return-void
.end method

.method public whitelist startInternalChanges()V
    .registers 2

    .line 59
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    .line 60
    return-void
.end method

.method protected greylist-max-o viewClicked(Landroid/view/inputmethod/InputMethodManager;)V
    .registers 4
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;

    .line 167
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_a

    .line 168
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodService;->onViewClicked(Z)V

    .line 170
    :cond_a
    return-void
.end method
