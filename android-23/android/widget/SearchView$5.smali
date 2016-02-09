.class Landroid/widget/SearchView$5;
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
.field final synthetic this$0:Landroid/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/widget/SearchView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SearchView;

    #@0
    .prologue
    .line 973
    iput-object p1, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 976
    iget-object v1, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    #@5
    invoke-static {v1}, Landroid/widget/SearchView;->-get5(Landroid/widget/SearchView;)Landroid/app/SearchableInfo;

    #@8
    move-result-object v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 977
    return v3

    #@c
    .line 987
    :cond_0
    iget-object v1, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    #@e
    invoke-static {v1}, Landroid/widget/SearchView;->-get4(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Landroid/widget/SearchView$SearchAutoComplete;->isPopupShowing()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 988
    iget-object v1, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    #@1a
    invoke-static {v1}, Landroid/widget/SearchView;->-get4(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Landroid/widget/SearchView$SearchAutoComplete;->getListSelection()I

    #@21
    move-result v1

    #@22
    const/4 v2, -0x1

    #@23
    if-eq v1, v2, :cond_1

    #@25
    .line 989
    iget-object v1, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    #@27
    invoke-static {v1, p1, p2, p3}, Landroid/widget/SearchView;->-wrap2(Landroid/widget/SearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    #@2a
    move-result v1

    #@2b
    return v1

    #@2c
    .line 994
    :cond_1
    iget-object v1, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    #@2e
    invoke-static {v1}, Landroid/widget/SearchView;->-get4(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    #@31
    move-result-object v1

    #@32
    invoke-static {v1}, Landroid/widget/SearchView$SearchAutoComplete;->-wrap0(Landroid/widget/SearchView$SearchAutoComplete;)Z

    #@35
    move-result v1

    #@36
    if-nez v1, :cond_3

    #@38
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@3b
    move-result v1

    #@3c
    if-eqz v1, :cond_3

    #@3e
    .line 995
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    #@41
    move-result v1

    #@42
    if-ne v1, v5, :cond_2

    #@44
    .line 996
    const/16 v1, 0x42

    #@46
    if-ne p2, v1, :cond_2

    #@48
    .line 997
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    #@4b
    .line 1000
    iget-object v1, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    #@4d
    iget-object v2, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    #@4f
    invoke-static {v2}, Landroid/widget/SearchView;->-get4(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    #@56
    move-result-object v2

    #@57
    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    #@5a
    move-result-object v2

    #@5b
    invoke-static {v1, v3, v4, v2}, Landroid/widget/SearchView;->-wrap5(Landroid/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V

    #@5e
    .line 1002
    return v5

    #@5f
    .line 1005
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    #@62
    move-result v1

    #@63
    if-nez v1, :cond_3

    #@65
    .line 1006
    iget-object v1, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    #@67
    invoke-static {v1}, Landroid/widget/SearchView;->-get5(Landroid/widget/SearchView;)Landroid/app/SearchableInfo;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {v1, p2}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    #@6e
    move-result-object v0

    #@6f
    .line 1007
    .local v0, "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_3

    #@71
    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    #@74
    move-result-object v1

    #@75
    if-eqz v1, :cond_3

    #@77
    .line 1008
    iget-object v1, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    #@79
    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    #@7c
    move-result-object v2

    #@7d
    iget-object v3, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    #@7f
    invoke-static {v3}, Landroid/widget/SearchView;->-get4(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    #@82
    move-result-object v3

    #@83
    invoke-virtual {v3}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    #@86
    move-result-object v3

    #@87
    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    #@8a
    move-result-object v3

    #@8b
    invoke-static {v1, p2, v2, v3}, Landroid/widget/SearchView;->-wrap5(Landroid/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V

    #@8e
    .line 1010
    return v5

    #@8f
    .line 1014
    .end local v0    # "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    :cond_3
    return v3
.end method
