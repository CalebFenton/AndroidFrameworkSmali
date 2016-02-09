.class public Landroid/widget/EditText;
.super Landroid/widget/TextView;
.source "EditText.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 52
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 56
    const v0, 0x101006e

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 60
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 59
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
    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 63
    return-void
.end method


# virtual methods
.method public extendSelection(I)V
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    #@7
    .line 111
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 126
    const-class v0, Landroid/widget/EditText;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected getDefaultEditable()Z
    .locals 1

    #@0
    .prologue
    .line 69
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    #@0
    .prologue
    .line 74
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 1

    #@0
    .prologue
    .line 79
    invoke-super {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/text/Editable;

    #@6
    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 132
    packed-switch p1, :pswitch_data_0

    #@3
    .line 143
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    #@6
    move-result v1

    #@7
    return v1

    #@8
    .line 134
    :pswitch_0
    if-eqz p2, :cond_1

    #@a
    .line 135
    const-string/jumbo v1, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    #@d
    .line 134
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@10
    move-result-object v0

    #@11
    .line 136
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    #@14
    .line 137
    if-eqz v0, :cond_0

    #@16
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@19
    move-result v1

    #@1a
    if-lez v1, :cond_0

    #@1c
    .line 138
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@1f
    move-result v1

    #@20
    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setSelection(I)V

    #@23
    .line 140
    :cond_0
    const/4 v1, 0x1

    #@24
    return v1

    #@25
    .line 135
    :cond_1
    const/4 v0, 0x0

    #@26
    .local v0, "text":Ljava/lang/CharSequence;
    goto :goto_0

    #@27
    .line 132
    nop

    #@28
    :pswitch_data_0
    .packed-switch 0x200000
        :pswitch_0
    .end packed-switch
.end method

.method public selectAll()V
    .locals 1

    #@0
    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    #@7
    .line 104
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 2
    .param p1, "ellipsis"    # Landroid/text/TextUtils$TruncateAt;

    #@0
    .prologue
    .line 117
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "EditText cannot use the ellipsize mode TextUtils.TruncateAt.MARQUEE"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 121
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@10
    .line 116
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@7
    .line 97
    return-void
.end method

.method public setSelection(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "stop"    # I

    #@0
    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@7
    .line 90
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    #@0
    .prologue
    .line 84
    sget-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    #@2
    invoke-super {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    #@5
    .line 83
    return-void
.end method
