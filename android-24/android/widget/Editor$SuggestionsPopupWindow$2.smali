.class Landroid/widget/Editor$SuggestionsPopupWindow$2;
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
    .line 3403
    iput-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$2;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 3405
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow$2;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@2
    iget-object v3, v3, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@4
    invoke-static {v3}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/text/Editable;

    #@e
    .line 3407
    .local v0, "editable":Landroid/text/Editable;
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow$2;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@10
    iget-object v3, v3, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@12
    iget-object v3, v3, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    #@14
    invoke-interface {v0, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    #@17
    move-result v2

    #@18
    .line 3408
    .local v2, "spanUnionStart":I
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow$2;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@1a
    iget-object v3, v3, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@1c
    iget-object v3, v3, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    #@1e
    invoke-interface {v0, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    #@21
    move-result v1

    #@22
    .line 3409
    .local v1, "spanUnionEnd":I
    if-ltz v2, :cond_2

    #@24
    if-le v1, v2, :cond_2

    #@26
    .line 3412
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    #@29
    move-result v3

    #@2a
    if-ge v1, v3, :cond_1

    #@2c
    .line 3413
    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    #@2f
    move-result v3

    #@30
    invoke-static {v3}, Ljava/lang/Character;->isSpaceChar(C)Z

    #@33
    move-result v3

    #@34
    .line 3412
    if-eqz v3, :cond_1

    #@36
    .line 3414
    if-eqz v2, :cond_0

    #@38
    .line 3415
    add-int/lit8 v3, v2, -0x1

    #@3a
    invoke-interface {v0, v3}, Landroid/text/Editable;->charAt(I)C

    #@3d
    move-result v3

    #@3e
    invoke-static {v3}, Ljava/lang/Character;->isSpaceChar(C)Z

    #@41
    move-result v3

    #@42
    .line 3412
    if-eqz v3, :cond_1

    #@44
    .line 3416
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@46
    .line 3418
    :cond_1
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow$2;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@48
    iget-object v3, v3, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@4a
    invoke-static {v3}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v3, v2, v1}, Landroid/widget/TextView;->deleteText_internal(II)V

    #@51
    .line 3420
    :cond_2
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow$2;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@53
    invoke-static {v3}, Landroid/widget/Editor$SuggestionsPopupWindow;->-wrap0(Landroid/widget/Editor$SuggestionsPopupWindow;)V

    #@56
    .line 3404
    return-void
.end method
