.class Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$SuggestionsPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionInfo"
.end annotation


# instance fields
.field highlightSpan:Landroid/text/style/TextAppearanceSpan;

.field suggestionEnd:I

.field suggestionIndex:I

.field suggestionSpan:Landroid/text/style/SuggestionSpan;

.field suggestionStart:I

.field text:Landroid/text/SpannableStringBuilder;

.field final synthetic this$1:Landroid/widget/Editor$SuggestionsPopupWindow;


# direct methods
.method private constructor <init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V
    .locals 3
    .param p1, "this$1"    # Landroid/widget/Editor$SuggestionsPopupWindow;

    #@0
    .prologue
    .line 2706
    iput-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 2710
    new-instance v0, Landroid/text/SpannableStringBuilder;

    #@7
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    #@a
    iput-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    #@c
    .line 2711
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    #@e
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@10
    iget-object v1, v1, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@12
    invoke-static {v1}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@19
    move-result-object v1

    #@1a
    .line 2712
    const v2, 0x1030118

    #@1d
    .line 2711
    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    #@20
    iput-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->highlightSpan:Landroid/text/style/TextAppearanceSpan;

    #@22
    .line 2706
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/Editor$SuggestionsPopupWindow;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V

    #@3
    return-void
.end method
