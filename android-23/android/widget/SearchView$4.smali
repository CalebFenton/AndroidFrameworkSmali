.class Landroid/widget/SearchView$4;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 924
    iput-object p1, p0, Landroid/widget/SearchView$4;->this$0:Landroid/widget/SearchView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 927
    iget-object v0, p0, Landroid/widget/SearchView$4;->this$0:Landroid/widget/SearchView;

    #@2
    invoke-static {v0}, Landroid/widget/SearchView;->-get3(Landroid/widget/SearchView;)Landroid/widget/ImageView;

    #@5
    move-result-object v0

    #@6
    if-ne p1, v0, :cond_1

    #@8
    .line 928
    iget-object v0, p0, Landroid/widget/SearchView$4;->this$0:Landroid/widget/SearchView;

    #@a
    invoke-static {v0}, Landroid/widget/SearchView;->-wrap7(Landroid/widget/SearchView;)V

    #@d
    .line 926
    :cond_0
    :goto_0
    return-void

    #@e
    .line 929
    :cond_1
    iget-object v0, p0, Landroid/widget/SearchView$4;->this$0:Landroid/widget/SearchView;

    #@10
    invoke-static {v0}, Landroid/widget/SearchView;->-get0(Landroid/widget/SearchView;)Landroid/widget/ImageView;

    #@13
    move-result-object v0

    #@14
    if-ne p1, v0, :cond_2

    #@16
    .line 930
    iget-object v0, p0, Landroid/widget/SearchView$4;->this$0:Landroid/widget/SearchView;

    #@18
    invoke-static {v0}, Landroid/widget/SearchView;->-wrap6(Landroid/widget/SearchView;)V

    #@1b
    goto :goto_0

    #@1c
    .line 931
    :cond_2
    iget-object v0, p0, Landroid/widget/SearchView$4;->this$0:Landroid/widget/SearchView;

    #@1e
    invoke-static {v0}, Landroid/widget/SearchView;->-get1(Landroid/widget/SearchView;)Landroid/widget/ImageView;

    #@21
    move-result-object v0

    #@22
    if-ne p1, v0, :cond_3

    #@24
    .line 932
    iget-object v0, p0, Landroid/widget/SearchView$4;->this$0:Landroid/widget/SearchView;

    #@26
    invoke-static {v0}, Landroid/widget/SearchView;->-wrap8(Landroid/widget/SearchView;)V

    #@29
    goto :goto_0

    #@2a
    .line 933
    :cond_3
    iget-object v0, p0, Landroid/widget/SearchView$4;->this$0:Landroid/widget/SearchView;

    #@2c
    invoke-static {v0}, Landroid/widget/SearchView;->-get7(Landroid/widget/SearchView;)Landroid/widget/ImageView;

    #@2f
    move-result-object v0

    #@30
    if-ne p1, v0, :cond_4

    #@32
    .line 934
    iget-object v0, p0, Landroid/widget/SearchView$4;->this$0:Landroid/widget/SearchView;

    #@34
    invoke-static {v0}, Landroid/widget/SearchView;->-wrap10(Landroid/widget/SearchView;)V

    #@37
    goto :goto_0

    #@38
    .line 935
    :cond_4
    iget-object v0, p0, Landroid/widget/SearchView$4;->this$0:Landroid/widget/SearchView;

    #@3a
    invoke-static {v0}, Landroid/widget/SearchView;->-get4(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    #@3d
    move-result-object v0

    #@3e
    if-ne p1, v0, :cond_0

    #@40
    .line 936
    iget-object v0, p0, Landroid/widget/SearchView$4;->this$0:Landroid/widget/SearchView;

    #@42
    invoke-static {v0}, Landroid/widget/SearchView;->-wrap4(Landroid/widget/SearchView;)V

    #@45
    goto :goto_0
.end method
