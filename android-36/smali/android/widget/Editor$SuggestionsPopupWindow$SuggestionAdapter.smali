.class Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;
.super Landroid/widget/BaseAdapter;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$SuggestionsPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionAdapter"
.end annotation


# instance fields
.field private greylist-max-o mInflater:Landroid/view/LayoutInflater;

.field final synthetic blacklist this$1:Landroid/widget/Editor$SuggestionsPopupWindow;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 4302
    iput-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4303
    iget-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-static {p1}, Landroid/widget/Editor$SuggestionsPopupWindow;->-$$Nest$fgetmContext(Landroid/widget/Editor$SuggestionsPopupWindow;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/widget/Editor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V

    return-void
.end method


# virtual methods
.method public whitelist getCount()I
    .registers 2

    .line 4308
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-static {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->-$$Nest$fgetmNumberOfSuggestions(Landroid/widget/Editor$SuggestionsPopupWindow;)I

    move-result v0

    return v0
.end method

.method public whitelist getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .line 4313
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-static {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->-$$Nest$fgetmSuggestionInfos(Landroid/widget/Editor$SuggestionsPopupWindow;)[Landroid/widget/Editor$SuggestionInfo;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public whitelist getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .line 4318
    int-to-long v0, p1

    return-wide v0
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 4323
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    .line 4325
    .local v0, "textView":Landroid/widget/TextView;
    if-nez v0, :cond_19

    .line 4326
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v2, v2, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget v2, v2, Landroid/widget/TextView;->mTextEditSuggestionItemLayout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    .line 4330
    :cond_19
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-static {v1}, Landroid/widget/Editor$SuggestionsPopupWindow;->-$$Nest$fgetmSuggestionInfos(Landroid/widget/Editor$SuggestionsPopupWindow;)[Landroid/widget/Editor$SuggestionInfo;

    move-result-object v1

    aget-object v1, v1, p1

    .line 4331
    .local v1, "suggestionInfo":Landroid/widget/Editor$SuggestionInfo;
    iget-object v2, v1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4332
    return-object v0
.end method
