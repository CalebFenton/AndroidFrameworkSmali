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
.field private mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 61
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 65
    const v0, 0x101006b

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 69
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 68
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
    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 73
    return-void
.end method


# virtual methods
.method public enoughToFilter()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 119
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    #@4
    move-result-object v2

    #@5
    .line 121
    .local v2, "text":Landroid/text/Editable;
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getSelectionEnd()I

    #@8
    move-result v0

    #@9
    .line 122
    .local v0, "end":I
    if-ltz v0, :cond_0

    #@b
    iget-object v3, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    #@d
    if-nez v3, :cond_1

    #@f
    .line 123
    :cond_0
    return v5

    #@10
    .line 126
    :cond_1
    iget-object v3, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    #@12
    invoke-interface {v3, v2, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    #@15
    move-result v1

    #@16
    .line 128
    .local v1, "start":I
    sub-int v3, v0, v1

    #@18
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getThreshold()I

    #@1b
    move-result v4

    #@1c
    if-lt v3, v4, :cond_2

    #@1e
    .line 129
    const/4 v3, 0x1

    #@1f
    return v3

    #@20
    .line 131
    :cond_2
    return v5
.end method

.method finishInit()V
    .locals 0

    #@0
    .prologue
    .line 77
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 205
    const-class v0, Landroid/widget/MultiAutoCompleteTextView;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "keyCode"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 95
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->enoughToFilter()Z

    #@4
    move-result v3

    #@5
    if-eqz v3, :cond_1

    #@7
    .line 96
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getSelectionEnd()I

    #@a
    move-result v0

    #@b
    .line 97
    .local v0, "end":I
    iget-object v3, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    #@d
    invoke-interface {v3, p1, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    #@10
    move-result v2

    #@11
    .line 99
    .local v2, "start":I
    invoke-virtual {p0, p1, v2, v0, p2}, Landroid/widget/MultiAutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;III)V

    #@14
    .line 94
    .end local v0    # "end":I
    .end local v2    # "start":I
    :cond_0
    :goto_0
    return-void

    #@15
    .line 101
    :cond_1
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->dismissDropDown()V

    #@18
    .line 103
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getFilter()Landroid/widget/Filter;

    #@1b
    move-result-object v1

    #@1c
    .line 104
    .local v1, "f":Landroid/widget/Filter;
    if-eqz v1, :cond_0

    #@1e
    .line 105
    invoke-virtual {v1, v4}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    #@21
    goto :goto_0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "keyCode"    # I

    #@0
    .prologue
    .line 173
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getFilter()Landroid/widget/Filter;

    #@3
    move-result-object v0

    #@4
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    #@b
    .line 172
    return-void
.end method

.method public performValidation()V
    .locals 8

    #@0
    .prologue
    .line 141
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getValidator()Landroid/widget/AutoCompleteTextView$Validator;

    #@3
    move-result-object v5

    #@4
    .line 143
    .local v5, "v":Landroid/widget/AutoCompleteTextView$Validator;
    if-eqz v5, :cond_0

    #@6
    iget-object v6, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    #@8
    if-nez v6, :cond_1

    #@a
    .line 144
    :cond_0
    return-void

    #@b
    .line 147
    :cond_1
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    #@e
    move-result-object v0

    #@f
    .line 148
    .local v0, "e":Landroid/text/Editable;
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    #@12
    move-result-object v6

    #@13
    invoke-interface {v6}, Landroid/text/Editable;->length()I

    #@16
    move-result v2

    #@17
    .line 149
    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_4

    #@19
    .line 150
    iget-object v6, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    #@1b
    invoke-interface {v6, v0, v2}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    #@1e
    move-result v3

    #@1f
    .line 151
    .local v3, "start":I
    iget-object v6, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    #@21
    invoke-interface {v6, v0, v3}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    #@24
    move-result v1

    #@25
    .line 153
    .local v1, "end":I
    invoke-interface {v0, v3, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    #@28
    move-result-object v4

    #@29
    .line 154
    .local v4, "sub":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2c
    move-result v6

    #@2d
    if-eqz v6, :cond_3

    #@2f
    .line 155
    const-string/jumbo v6, ""

    #@32
    invoke-interface {v0, v3, v2, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    #@35
    .line 161
    :cond_2
    :goto_1
    move v2, v3

    #@36
    goto :goto_0

    #@37
    .line 156
    :cond_3
    invoke-interface {v5, v4}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    #@3a
    move-result v6

    #@3b
    if-nez v6, :cond_2

    #@3d
    .line 158
    iget-object v6, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    #@3f
    invoke-interface {v5, v4}, Landroid/widget/AutoCompleteTextView$Validator;->fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@42
    move-result-object v7

    #@43
    invoke-interface {v6, v7}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@46
    move-result-object v6

    #@47
    .line 157
    invoke-interface {v0, v3, v2, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    #@4a
    goto :goto_1

    #@4b
    .line 140
    .end local v1    # "end":I
    .end local v3    # "start":I
    .end local v4    # "sub":Ljava/lang/CharSequence;
    :cond_4
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 191
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->clearComposingText()V

    #@3
    .line 193
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getSelectionEnd()I

    #@6
    move-result v1

    #@7
    .line 194
    .local v1, "end":I
    iget-object v4, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    #@9
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    #@c
    move-result-object v5

    #@d
    invoke-interface {v4, v5, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    #@10
    move-result v3

    #@11
    .line 196
    .local v3, "start":I
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    #@14
    move-result-object v0

    #@15
    .line 197
    .local v0, "editable":Landroid/text/Editable;
    invoke-static {v0, v3, v1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    .line 199
    .local v2, "original":Ljava/lang/String;
    invoke-static {v0, v3, v1, v2}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    #@1c
    .line 200
    iget-object v4, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    #@1e
    invoke-interface {v4, p1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@21
    move-result-object v4

    #@22
    invoke-interface {v0, v3, v1, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    #@25
    .line 190
    return-void
.end method

.method public setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V
    .locals 0
    .param p1, "t"    # Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    #@0
    .prologue
    .line 84
    iput-object p1, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    #@2
    .line 83
    return-void
.end method
