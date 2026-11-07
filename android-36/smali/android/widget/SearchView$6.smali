.class Landroid/widget/SearchView$6;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/SearchView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/SearchView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/SearchView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1063
    iput-object p1, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 1066
    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-$$Nest$fgetmSearchable(Landroid/widget/SearchView;)Landroid/app/SearchableInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1067
    return v1

    .line 1077
    :cond_a
    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-$$Nest$fgetmSearchSrcTextView(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-$$Nest$fgetmSearchSrcTextView(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v0

    .line 1078
    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2a

    .line 1079
    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-static {v0, p1, p2, p3}, Landroid/widget/SearchView;->-$$Nest$monSuggestionsKey(Landroid/widget/SearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1084
    :cond_2a
    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-$$Nest$fgetmSearchSrcTextView(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/SearchView$SearchAutoComplete;->-$$Nest$misEmpty(Landroid/widget/SearchView$SearchAutoComplete;)Z

    move-result v0

    if-nez v0, :cond_93

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 1085
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_63

    .line 1086
    const/16 v0, 0x42

    if-eq p2, v0, :cond_4b

    const/16 v0, 0xa0

    if-ne p2, v0, :cond_63

    .line 1088
    :cond_4b
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    .line 1091
    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    iget-object v3, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-static {v3}, Landroid/widget/SearchView;->-$$Nest$fgetmSearchSrcTextView(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 1092
    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1091
    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v3}, Landroid/widget/SearchView;->-$$Nest$mlaunchQuerySearch(Landroid/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V

    .line 1093
    return v2

    .line 1096
    :cond_63
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_93

    .line 1097
    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-$$Nest$fgetmSearchable(Landroid/widget/SearchView;)Landroid/app/SearchableInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    .line 1098
    .local v0, "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_93

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_93

    .line 1099
    iget-object v1, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-static {v4}, Landroid/widget/SearchView;->-$$Nest$fgetmSearchSrcTextView(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v4

    .line 1100
    invoke-virtual {v4}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1099
    invoke-static {v1, p2, v3, v4}, Landroid/widget/SearchView;->-$$Nest$mlaunchQuerySearch(Landroid/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V

    .line 1101
    return v2

    .line 1105
    .end local v0    # "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    :cond_93
    return v1
.end method
