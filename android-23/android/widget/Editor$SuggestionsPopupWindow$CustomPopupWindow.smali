.class Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;
.super Landroid/widget/PopupWindow;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$SuggestionsPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomPopupWindow"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$SuggestionsPopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/content/Context;I)V
    .locals 1
    .param p1, "this$1"    # Landroid/widget/Editor$SuggestionsPopupWindow;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 2648
    iput-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@2
    .line 2649
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, p2, v0, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 2648
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    #@0
    .prologue
    .line 2654
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    #@3
    .line 2656
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@5
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@7
    invoke-static {v0}, Landroid/widget/Editor;->-wrap2(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    #@a
    move-result-object v0

    #@b
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@d
    invoke-virtual {v0, v1}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    #@10
    .line 2659
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@12
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@14
    invoke-static {v0}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Landroid/text/Spannable;

    #@1e
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@20
    iget-object v1, v1, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@22
    iget-object v1, v1, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    #@24
    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@27
    .line 2661
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@29
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@2b
    invoke-static {v0}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@2e
    move-result-object v0

    #@2f
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@31
    invoke-static {v1}, Landroid/widget/Editor$SuggestionsPopupWindow;->-get0(Landroid/widget/Editor$SuggestionsPopupWindow;)Z

    #@34
    move-result v1

    #@35
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    #@38
    .line 2662
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@3a
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@3c
    invoke-virtual {v0}, Landroid/widget/Editor;->hasInsertionController()Z

    #@3f
    move-result v0

    #@40
    if-eqz v0, :cond_0

    #@42
    .line 2663
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@44
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@46
    invoke-virtual {v0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    #@4d
    .line 2653
    :cond_0
    return-void
.end method
