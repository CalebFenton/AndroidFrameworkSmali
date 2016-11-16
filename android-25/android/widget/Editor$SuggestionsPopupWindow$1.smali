.class Landroid/widget/Editor$SuggestionsPopupWindow$1;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$SuggestionsPopupWindow;->initContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$SuggestionsPopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/Editor$SuggestionsPopupWindow;

    #@0
    .prologue
    .line 3370
    iput-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 3373
    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@3
    iget-object v6, v6, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@5
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@7
    invoke-static {v7}, Landroid/widget/Editor$SuggestionsPopupWindow;->-get2(Landroid/widget/Editor$SuggestionsPopupWindow;)Landroid/widget/Editor$SuggestionSpanInfo;

    #@a
    move-result-object v7

    #@b
    invoke-static {v6, v7}, Landroid/widget/Editor;->-wrap1(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;

    #@e
    move-result-object v2

    #@f
    .line 3374
    .local v2, "misspelledSpan":Landroid/text/style/SuggestionSpan;
    if-nez v2, :cond_0

    #@11
    .line 3376
    return-void

    #@12
    .line 3378
    :cond_0
    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@14
    iget-object v6, v6, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@16
    invoke-static {v6}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@19
    move-result-object v6

    #@1a
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Landroid/text/Editable;

    #@20
    .line 3379
    .local v0, "editable":Landroid/text/Editable;
    invoke-interface {v0, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    #@23
    move-result v5

    #@24
    .line 3380
    .local v5, "spanStart":I
    invoke-interface {v0, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    #@27
    move-result v4

    #@28
    .line 3381
    .local v4, "spanEnd":I
    if-ltz v5, :cond_1

    #@2a
    if-gt v4, v5, :cond_2

    #@2c
    .line 3382
    :cond_1
    return-void

    #@2d
    .line 3384
    :cond_2
    invoke-static {v0, v5, v4}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    .line 3386
    .local v3, "originalText":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    #@33
    const-string/jumbo v6, "com.android.settings.USER_DICTIONARY_INSERT"

    #@36
    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@39
    .line 3387
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "word"

    #@3c
    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@3f
    .line 3388
    const-string/jumbo v6, "locale"

    #@42
    .line 3389
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@44
    iget-object v7, v7, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@46
    invoke-static {v7}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@49
    move-result-object v7

    #@4a
    invoke-virtual {v7}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    #@4d
    move-result-object v7

    #@4e
    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@51
    move-result-object v7

    #@52
    .line 3388
    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@55
    .line 3390
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    #@58
    move-result v6

    #@59
    const/high16 v7, 0x10000000

    #@5b
    or-int/2addr v6, v7

    #@5c
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@5f
    .line 3391
    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@61
    iget-object v6, v6, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@63
    invoke-static {v6}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@66
    move-result-object v6

    #@67
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@6a
    move-result-object v6

    #@6b
    invoke-virtual {v6, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@6e
    .line 3394
    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@70
    invoke-static {v6}, Landroid/widget/Editor$SuggestionsPopupWindow;->-get2(Landroid/widget/Editor$SuggestionsPopupWindow;)Landroid/widget/Editor$SuggestionSpanInfo;

    #@73
    move-result-object v6

    #@74
    iget-object v6, v6, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    #@76
    invoke-interface {v0, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    #@79
    .line 3395
    invoke-static {v0, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@7c
    .line 3396
    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@7e
    iget-object v6, v6, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@80
    invoke-static {v6, v5, v4, v8}, Landroid/widget/Editor;->-wrap22(Landroid/widget/Editor;IIZ)V

    #@83
    .line 3397
    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@85
    invoke-static {v6}, Landroid/widget/Editor$SuggestionsPopupWindow;->-wrap0(Landroid/widget/Editor$SuggestionsPopupWindow;)V

    #@88
    .line 3371
    return-void
.end method
