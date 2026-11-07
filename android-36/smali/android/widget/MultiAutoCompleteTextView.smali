.class public Landroid/widget/MultiAutoCompleteTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "MultiAutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/MultiAutoCompleteTextView$Tokenizer;,
        Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;
    }
.end annotation


# instance fields
.field private greylist-max-o mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 65
    const v0, 0x101006b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 75
    return-void
.end method


# virtual methods
.method public whitelist enoughToFilter()Z
    .registers 7

    .line 119
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 121
    .local v0, "text":Landroid/text/Editable;
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getSelectionEnd()I

    move-result v1

    .line 122
    .local v1, "end":I
    const/4 v2, 0x0

    if-ltz v1, :cond_21

    iget-object v3, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-nez v3, :cond_10

    goto :goto_21

    .line 126
    :cond_10
    iget-object v3, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v3, v0, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 128
    .local v3, "start":I
    sub-int v4, v1, v3

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getThreshold()I

    move-result v5

    if-lt v4, v5, :cond_20

    .line 129
    const/4 v2, 0x1

    return v2

    .line 131
    :cond_20
    return v2

    .line 123
    .end local v3    # "start":I
    :cond_21
    :goto_21
    return v2
.end method

.method greylist-max-o finishInit()V
    .registers 1

    .line 77
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 205
    const-class v0, Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist performFiltering(Ljava/lang/CharSequence;I)V
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "keyCode"    # I

    .line 95
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 96
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getSelectionEnd()I

    move-result v0

    .line 97
    .local v0, "end":I
    iget-object v1, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v1, p1, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 99
    .local v1, "start":I
    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/widget/MultiAutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;III)V

    .line 100
    .end local v0    # "end":I
    .end local v1    # "start":I
    goto :goto_21

    .line 101
    :cond_14
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->dismissDropDown()V

    .line 103
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 104
    .local v0, "f":Landroid/widget/Filter;
    if-eqz v0, :cond_21

    .line 105
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 108
    .end local v0    # "f":Landroid/widget/Filter;
    :cond_21
    :goto_21
    return-void
.end method

.method protected whitelist performFiltering(Ljava/lang/CharSequence;III)V
    .registers 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "keyCode"    # I

    .line 173
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 174
    return-void
.end method

.method public whitelist performValidation()V
    .registers 9

    .line 141
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getValidator()Landroid/widget/AutoCompleteTextView$Validator;

    move-result-object v0

    .line 143
    .local v0, "v":Landroid/widget/AutoCompleteTextView$Validator;
    if-eqz v0, :cond_4b

    iget-object v1, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-nez v1, :cond_b

    goto :goto_4b

    .line 147
    :cond_b
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 148
    .local v1, "e":Landroid/text/Editable;
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    .line 149
    .local v2, "i":I
    :goto_17
    if-lez v2, :cond_4a

    .line 150
    iget-object v3, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v3, v1, v2}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 151
    .local v3, "start":I
    iget-object v4, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v4, v1, v3}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 153
    .local v4, "end":I
    invoke-interface {v1, v3, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 154
    .local v5, "sub":Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 155
    const-string v6, ""

    invoke-interface {v1, v3, v2, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_48

    .line 156
    :cond_35
    invoke-interface {v0, v5}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_48

    .line 157
    iget-object v6, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    .line 158
    invoke-interface {v0, v5}, Landroid/widget/AutoCompleteTextView$Validator;->fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 157
    invoke-interface {v1, v3, v2, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 161
    :cond_48
    :goto_48
    move v2, v3

    .line 162
    .end local v3    # "start":I
    .end local v4    # "end":I
    .end local v5    # "sub":Ljava/lang/CharSequence;
    goto :goto_17

    .line 163
    :cond_4a
    return-void

    .line 144
    .end local v1    # "e":Landroid/text/Editable;
    .end local v2    # "i":I
    :cond_4b
    :goto_4b
    return-void
.end method

.method protected whitelist replaceText(Ljava/lang/CharSequence;)V
    .registers 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 191
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->clearComposingText()V

    .line 193
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getSelectionEnd()I

    move-result v0

    .line 194
    .local v0, "end":I
    iget-object v1, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 196
    .local v1, "start":I
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 197
    .local v2, "editable":Landroid/text/Editable;
    invoke-static {v2, v1, v0}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, "original":Ljava/lang/String;
    invoke-static {v2, v1, v0, v3}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 200
    iget-object v4, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v4, p1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v2, v1, v0, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 201
    return-void
.end method

.method public whitelist setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V
    .registers 2
    .param p1, "t"    # Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    .line 84
    iput-object p1, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    .line 85
    return-void
.end method
