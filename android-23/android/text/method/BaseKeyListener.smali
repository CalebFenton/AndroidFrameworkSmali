.class public abstract Landroid/text/method/BaseKeyListener;
.super Landroid/text/method/MetaKeyKeyListener;
.source "BaseKeyListener.java"

# interfaces
.implements Landroid/text/method/KeyListener;


# static fields
.field private static synthetic -android_text_method_TextKeyListener$CapitalizeSwitchesValues:[I

.field static final OLD_SEL_START:Ljava/lang/Object;


# direct methods
.method private static synthetic -getandroid_text_method_TextKeyListener$CapitalizeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/text/method/BaseKeyListener;->-android_text_method_TextKeyListener$CapitalizeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/text/method/BaseKeyListener;->-android_text_method_TextKeyListener$CapitalizeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/text/method/TextKeyListener$Capitalize;->values()[Landroid/text/method/TextKeyListener$Capitalize;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    #@10
    invoke-virtual {v1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    #@19
    invoke-virtual {v1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x4

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    #@22
    invoke-virtual {v1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x2

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    #@2b
    invoke-virtual {v1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x3

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    #@32
    :goto_3
    sput-object v0, Landroid/text/method/BaseKeyListener;->-android_text_method_TextKeyListener$CapitalizeSwitchesValues:[I

    #@34
    return-object v0

    #@35
    :catch_0
    move-exception v1

    #@36
    goto :goto_3

    #@37
    :catch_1
    move-exception v1

    #@38
    goto :goto_2

    #@39
    :catch_2
    move-exception v1

    #@3a
    goto :goto_1

    #@3b
    :catch_3
    move-exception v1

    #@3c
    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 40
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    #@2
    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    #@5
    sput-object v0, Landroid/text/method/BaseKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    #@7
    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Landroid/text/method/MetaKeyKeyListener;-><init>()V

    #@3
    return-void
.end method

.method private backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;
    .param p5, "isForwardDelete"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    .line 69
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    #@5
    move-result v5

    #@6
    and-int/lit16 v5, v5, -0x70f4

    #@8
    invoke-static {v5}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    #@b
    move-result v5

    #@c
    if-nez v5, :cond_0

    #@e
    .line 71
    return v6

    #@f
    .line 75
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/text/method/BaseKeyListener;->deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z

    #@12
    move-result v5

    #@13
    if-eqz v5, :cond_1

    #@15
    .line 76
    return v7

    #@16
    .line 80
    :cond_1
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    #@19
    move-result v5

    #@1a
    and-int/lit16 v5, v5, 0x1000

    #@1c
    if-eqz v5, :cond_3

    #@1e
    const/4 v2, 0x1

    #@1f
    .line 81
    .local v2, "isCtrlActive":Z
    :goto_0
    invoke-static {p2, v7, p4}, Landroid/text/method/BaseKeyListener;->getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    #@22
    move-result v5

    #@23
    if-ne v5, v7, :cond_4

    #@25
    const/4 v3, 0x1

    #@26
    .line 82
    .local v3, "isShiftActive":Z
    :goto_1
    const/4 v5, 0x2

    #@27
    invoke-static {p2, v5, p4}, Landroid/text/method/BaseKeyListener;->getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    #@2a
    move-result v5

    #@2b
    if-ne v5, v7, :cond_5

    #@2d
    const/4 v1, 0x1

    #@2e
    .line 84
    .local v1, "isAltActive":Z
    :goto_2
    if-eqz v2, :cond_7

    #@30
    .line 85
    if-nez v1, :cond_2

    #@32
    if-eqz v3, :cond_6

    #@34
    .line 87
    :cond_2
    return v6

    #@35
    .line 80
    .end local v1    # "isAltActive":Z
    .end local v2    # "isCtrlActive":Z
    .end local v3    # "isShiftActive":Z
    :cond_3
    const/4 v2, 0x0

    #@36
    .restart local v2    # "isCtrlActive":Z
    goto :goto_0

    #@37
    .line 81
    :cond_4
    const/4 v3, 0x0

    #@38
    .restart local v3    # "isShiftActive":Z
    goto :goto_1

    #@39
    .line 82
    :cond_5
    const/4 v1, 0x0

    #@3a
    .restart local v1    # "isAltActive":Z
    goto :goto_2

    #@3b
    .line 89
    :cond_6
    invoke-direct {p0, p1, p2, p5}, Landroid/text/method/BaseKeyListener;->deleteUntilWordBoundary(Landroid/view/View;Landroid/text/Editable;Z)Z

    #@3e
    move-result v5

    #@3f
    return v5

    #@40
    .line 93
    :cond_7
    if-eqz v1, :cond_8

    #@42
    invoke-direct {p0, p1, p2}, Landroid/text/method/BaseKeyListener;->deleteLine(Landroid/view/View;Landroid/text/Editable;)Z

    #@45
    move-result v5

    #@46
    if-eqz v5, :cond_8

    #@48
    .line 94
    return v7

    #@49
    .line 98
    :cond_8
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@4c
    move-result v4

    #@4d
    .line 100
    .local v4, "start":I
    if-eqz p5, :cond_9

    #@4f
    .line 101
    invoke-static {p2, v4}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    #@52
    move-result v0

    #@53
    .line 105
    .local v0, "end":I
    :goto_3
    if-eq v4, v0, :cond_a

    #@55
    .line 106
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    #@58
    move-result v5

    #@59
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    #@5c
    move-result v6

    #@5d
    invoke-interface {p2, v5, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    #@60
    .line 107
    return v7

    #@61
    .line 103
    .end local v0    # "end":I
    :cond_9
    invoke-static {p2, v4}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    #@64
    move-result v0

    #@65
    .restart local v0    # "end":I
    goto :goto_3

    #@66
    .line 109
    :cond_a
    return v6
.end method

.method private deleteLine(Landroid/view/View;Landroid/text/Editable;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;

    #@0
    .prologue
    .line 176
    instance-of v4, p1, Landroid/widget/TextView;

    #@2
    if-eqz v4, :cond_0

    #@4
    .line 177
    check-cast p1, Landroid/widget/TextView;

    #@6
    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@9
    move-result-object v1

    #@a
    .line 178
    .local v1, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_0

    #@c
    .line 179
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@f
    move-result v4

    #@10
    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    #@13
    move-result v2

    #@14
    .line 180
    .local v2, "line":I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineStart(I)I

    #@17
    move-result v3

    #@18
    .line 181
    .local v3, "start":I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineEnd(I)I

    #@1b
    move-result v0

    #@1c
    .line 182
    .local v0, "end":I
    if-eq v0, v3, :cond_0

    #@1e
    .line 183
    invoke-interface {p2, v3, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    #@21
    .line 184
    const/4 v4, 0x1

    #@22
    return v4

    #@23
    .line 188
    .end local v0    # "end":I
    .end local v1    # "layout":Landroid/text/Layout;
    .end local v2    # "line":I
    .end local v3    # "start":I
    :cond_0
    const/4 v4, 0x0

    #@24
    return v4
.end method

.method private deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;

    #@0
    .prologue
    .line 161
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@3
    move-result v1

    #@4
    .line 162
    .local v1, "selectionStart":I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@7
    move-result v0

    #@8
    .line 163
    .local v0, "selectionEnd":I
    if-ge v0, v1, :cond_0

    #@a
    .line 164
    move v2, v0

    #@b
    .line 165
    .local v2, "temp":I
    move v0, v1

    #@c
    .line 166
    move v1, v2

    #@d
    .line 168
    .end local v2    # "temp":I
    :cond_0
    if-eq v1, v0, :cond_1

    #@f
    .line 169
    invoke-interface {p2, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    #@12
    .line 170
    const/4 v3, 0x1

    #@13
    return v3

    #@14
    .line 172
    :cond_1
    const/4 v3, 0x0

    #@15
    return v3
.end method

.method private deleteUntilWordBoundary(Landroid/view/View;Landroid/text/Editable;Z)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "isForwardDelete"    # Z

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 113
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@5
    move-result v0

    #@6
    .line 116
    .local v0, "currentCursorOffset":I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@9
    move-result v4

    #@a
    if-eq v0, v4, :cond_0

    #@c
    .line 117
    return v5

    #@d
    .line 121
    :cond_0
    if-nez p3, :cond_2

    #@f
    if-nez v0, :cond_2

    #@11
    .line 123
    :cond_1
    return v5

    #@12
    .line 122
    :cond_2
    if-eqz p3, :cond_3

    #@14
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    #@17
    move-result v4

    #@18
    if-eq v0, v4, :cond_1

    #@1a
    .line 126
    :cond_3
    const/4 v3, 0x0

    #@1b
    .line 127
    .local v3, "wordIterator":Landroid/text/method/WordIterator;
    instance-of v4, p1, Landroid/widget/TextView;

    #@1d
    if-eqz v4, :cond_4

    #@1f
    .line 128
    check-cast p1, Landroid/widget/TextView;

    #@21
    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getWordIterator()Landroid/text/method/WordIterator;

    #@24
    move-result-object v3

    #@25
    .line 131
    .end local v3    # "wordIterator":Landroid/text/method/WordIterator;
    :cond_4
    if-nez v3, :cond_5

    #@27
    .line 135
    new-instance v3, Landroid/text/method/WordIterator;

    #@29
    invoke-direct {v3}, Landroid/text/method/WordIterator;-><init>()V

    #@2c
    .line 141
    :cond_5
    if-eqz p3, :cond_7

    #@2e
    .line 142
    move v1, v0

    #@2f
    .line 143
    .local v1, "deleteFrom":I
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    #@32
    move-result v4

    #@33
    invoke-virtual {v3, p2, v1, v4}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    #@36
    .line 144
    invoke-virtual {v3, v0}, Landroid/text/method/WordIterator;->following(I)I

    #@39
    move-result v2

    #@3a
    .line 145
    .local v2, "deleteTo":I
    if-ne v2, v6, :cond_6

    #@3c
    .line 146
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    #@3f
    move-result v2

    #@40
    .line 156
    :cond_6
    :goto_0
    invoke-interface {p2, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    #@43
    .line 157
    const/4 v4, 0x1

    #@44
    return v4

    #@45
    .line 149
    .end local v1    # "deleteFrom":I
    .end local v2    # "deleteTo":I
    :cond_7
    move v2, v0

    #@46
    .line 150
    .restart local v2    # "deleteTo":I
    invoke-virtual {v3, p2, v5, v2}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    #@49
    .line 151
    invoke-virtual {v3, v0}, Landroid/text/method/WordIterator;->preceding(I)I

    #@4c
    move-result v1

    #@4d
    .line 152
    .restart local v1    # "deleteFrom":I
    if-ne v1, v6, :cond_6

    #@4f
    .line 153
    const/4 v1, 0x0

    #@50
    goto :goto_0
.end method

.method static makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I
    .locals 3
    .param p0, "caps"    # Landroid/text/method/TextKeyListener$Capitalize;
    .param p1, "autoText"    # Z

    #@0
    .prologue
    .line 192
    const/4 v0, 0x1

    #@1
    .line 193
    .local v0, "contentType":I
    invoke-static {}, Landroid/text/method/BaseKeyListener;->-getandroid_text_method_TextKeyListener$CapitalizeSwitchesValues()[I

    #@4
    move-result-object v1

    #@5
    invoke-virtual {p0}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    #@8
    move-result v2

    #@9
    aget v1, v1, v2

    #@b
    packed-switch v1, :pswitch_data_0

    #@e
    .line 204
    :goto_0
    if-eqz p1, :cond_0

    #@10
    .line 205
    const v1, 0x8000

    #@13
    or-int/2addr v0, v1

    #@14
    .line 207
    :cond_0
    return v0

    #@15
    .line 195
    :pswitch_0
    const/16 v0, 0x1001

    #@17
    .line 196
    goto :goto_0

    #@18
    .line 198
    :pswitch_1
    const/16 v0, 0x2001

    #@1a
    .line 199
    goto :goto_0

    #@1b
    .line 201
    :pswitch_2
    const/16 v0, 0x4001

    #@1d
    .line 202
    goto :goto_0

    #@1e
    .line 193
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 51
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    invoke-direct/range {v0 .. v5}, Landroid/text/method/BaseKeyListener;->backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 63
    const/4 v5, 0x1

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    invoke-direct/range {v0 .. v5}, Landroid/text/method/BaseKeyListener;->backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 213
    sparse-switch p3, :sswitch_data_0

    #@3
    .line 221
    const/4 v0, 0x0

    #@4
    .line 225
    :goto_0
    if-eqz v0, :cond_0

    #@6
    .line 226
    invoke-static {p2}, Landroid/text/method/BaseKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    #@9
    .line 229
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/MetaKeyKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    #@c
    move-result v1

    #@d
    return v1

    #@e
    .line 215
    :sswitch_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    #@11
    move-result v0

    #@12
    .local v0, "handled":Z
    goto :goto_0

    #@13
    .line 218
    .end local v0    # "handled":Z
    :sswitch_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    #@16
    move-result v0

    #@17
    .restart local v0    # "handled":Z
    goto :goto_0

    #@18
    .line 213
    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_0
        0x70 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 237
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    #@4
    move-result v4

    #@5
    const/4 v5, 0x2

    #@6
    if-ne v4, v5, :cond_0

    #@8
    .line 238
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_1

    #@e
    .line 240
    :cond_0
    return v6

    #@f
    .line 243
    :cond_1
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@12
    move-result v1

    #@13
    .line 244
    .local v1, "selectionStart":I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@16
    move-result v0

    #@17
    .line 245
    .local v0, "selectionEnd":I
    if-ge v0, v1, :cond_2

    #@19
    .line 246
    move v2, v0

    #@1a
    .line 247
    .local v2, "temp":I
    move v0, v1

    #@1b
    .line 248
    move v1, v2

    #@1c
    .line 251
    .end local v2    # "temp":I
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    .line 252
    .local v3, "text":Ljava/lang/CharSequence;
    if-nez v3, :cond_3

    #@22
    .line 253
    return v6

    #@23
    .line 256
    :cond_3
    invoke-interface {p2, v1, v0, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    #@26
    .line 257
    const/4 v4, 0x1

    #@27
    return v4
.end method
