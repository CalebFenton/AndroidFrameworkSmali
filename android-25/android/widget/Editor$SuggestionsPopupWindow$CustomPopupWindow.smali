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
.method private constructor <init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/Editor$SuggestionsPopupWindow;

    #@0
    .prologue
    .line 3289
    iput-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@2
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/Editor$SuggestionsPopupWindow;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V

    #@3
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    #@0
    .prologue
    .line 3293
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 3294
    return-void

    #@7
    .line 3296
    :cond_0
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    #@a
    .line 3297
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@c
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@e
    invoke-static {v0}, Landroid/widget/Editor;->-wrap2(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@14
    invoke-virtual {v0, v1}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    #@17
    .line 3300
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@19
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@1b
    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroid/text/Spannable;

    #@25
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@27
    iget-object v1, v1, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@29
    iget-object v1, v1, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    #@2b
    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@2e
    .line 3302
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@30
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@32
    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@35
    move-result-object v0

    #@36
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@38
    invoke-static {v1}, Landroid/widget/Editor$SuggestionsPopupWindow;->-get1(Landroid/widget/Editor$SuggestionsPopupWindow;)Z

    #@3b
    move-result v1

    #@3c
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    #@3f
    .line 3303
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@41
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@43
    invoke-virtual {v0}, Landroid/widget/Editor;->hasInsertionController()Z

    #@46
    move-result v0

    #@47
    if-eqz v0, :cond_1

    #@49
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@4b
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@4d
    invoke-virtual {v0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    #@50
    move-result v0

    #@51
    if-eqz v0, :cond_2

    #@53
    .line 3292
    :cond_1
    :goto_0
    return-void

    #@54
    .line 3304
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@56
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@58
    invoke-virtual {v0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    #@5b
    move-result-object v0

    #@5c
    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    #@5f
    goto :goto_0
.end method
