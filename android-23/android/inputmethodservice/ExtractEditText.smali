.class public Landroid/inputmethodservice/ExtractEditText;
.super Landroid/widget/EditText;
.source "ExtractEditText.java"


# instance fields
.field private mIME:Landroid/inputmethodservice/InputMethodService;

.field private mSettingExtractedText:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 34
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 38
    const v0, 0x101006e

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 42
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/inputmethodservice/ExtractEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 45
    return-void
.end method


# virtual methods
.method protected deleteText_internal(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 188
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onExtractedDeleteText(II)V

    #@5
    .line 185
    return-void
.end method

.method public finishInternalChanges()V
    .locals 1

    #@0
    .prologue
    .line 68
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    iput v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    #@6
    .line 67
    return-void
.end method

.method public hasFocus()Z
    .locals 1

    #@0
    .prologue
    .line 156
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->isEnabled()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public hasVerticalScrollBar()Z
    .locals 2

    #@0
    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->computeVerticalScrollRange()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->computeVerticalScrollExtent()I

    #@7
    move-result v1

    #@8
    if-le v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    #@0
    .prologue
    .line 140
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->isEnabled()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isFocused()Z
    .locals 1

    #@0
    .prologue
    .line 148
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->isEnabled()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isInExtractedMode()Z
    .locals 1

    #@0
    .prologue
    .line 177
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isInputMethodTarget()Z
    .locals 1

    #@0
    .prologue
    .line 125
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected onSelectionChanged(II)V
    .locals 1
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    #@0
    .prologue
    .line 88
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    #@6
    if-eqz v0, :cond_0

    #@8
    if-ltz p1, :cond_0

    #@a
    if-ltz p2, :cond_0

    #@c
    .line 89
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    #@e
    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onExtractedSelectionChanged(II)V

    #@11
    .line 87
    :cond_0
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 1
    .param p1, "id"    # I

    #@0
    .prologue
    .line 108
    const v0, 0x102001f

    #@3
    if-eq p1, v0, :cond_0

    #@5
    const v0, 0x1020034

    #@8
    if-ne p1, v0, :cond_1

    #@a
    .line 109
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 111
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    #@11
    if-eqz v0, :cond_4

    #@13
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    #@15
    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onExtractTextContextMenuItem(I)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_4

    #@1b
    .line 114
    const v0, 0x1020021

    #@1e
    if-eq p1, v0, :cond_2

    #@20
    const v0, 0x1020022

    #@23
    if-ne p1, v0, :cond_3

    #@25
    :cond_2
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->stopTextActionMode()V

    #@28
    .line 115
    :cond_3
    const/4 v0, 0x1

    #@29
    return v0

    #@2a
    .line 117
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    #@2d
    move-result v0

    #@2e
    return v0
.end method

.method public performClick()Z
    .locals 1

    #@0
    .prologue
    .line 98
    invoke-super {p0}, Landroid/widget/EditText;->performClick()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 99
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    #@c
    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->onExtractedTextClicked()V

    #@f
    .line 100
    const/4 v0, 0x1

    #@10
    return v0

    #@11
    .line 102
    :cond_0
    const/4 v0, 0x0

    #@12
    return v0
.end method

.method protected replaceText_internal(IILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 199
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/inputmethodservice/InputMethodService;->onExtractedReplaceText(IILjava/lang/CharSequence;)V

    #@5
    .line 196
    return-void
.end method

.method protected setCursorPosition_internal(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 221
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onExtractedSelectionChanged(II)V

    #@5
    .line 218
    return-void
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    .locals 2
    .param p1, "text"    # Landroid/view/inputmethod/ExtractedText;

    #@0
    .prologue
    .line 77
    :try_start_0
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    #@6
    .line 78
    invoke-super {p0, p1}, Landroid/widget/EditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 80
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    #@b
    add-int/lit8 v0, v0, -0x1

    #@d
    iput v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    #@f
    .line 75
    return-void

    #@10
    .line 79
    :catchall_0
    move-exception v0

    #@11
    .line 80
    iget v1, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    #@13
    add-int/lit8 v1, v1, -0x1

    #@15
    iput v1, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    #@17
    .line 79
    throw v0
.end method

.method setIME(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .param p1, "ime"    # Landroid/inputmethodservice/InputMethodService;

    #@0
    .prologue
    .line 50
    iput-object p1, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    #@2
    .line 49
    return-void
.end method

.method protected setSpan_internal(Ljava/lang/Object;III)V
    .locals 1
    .param p1, "span"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    #@0
    .prologue
    .line 210
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/inputmethodservice/InputMethodService;->onExtractedSetSpan(Ljava/lang/Object;III)V

    #@5
    .line 207
    return-void
.end method

.method public startInternalChanges()V
    .locals 1

    #@0
    .prologue
    .line 59
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    #@6
    .line 58
    return-void
.end method

.method protected viewClicked(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 2
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 168
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodService;->onViewClicked(Z)V

    #@a
    .line 162
    :cond_0
    return-void
.end method
