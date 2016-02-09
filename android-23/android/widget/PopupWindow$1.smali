.class Landroid/widget/PopupWindow$1;
.super Ljava/lang/Object;
.source "PopupWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/PopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/PopupWindow;

    #@0
    .prologue
    .line 164
    iput-object p1, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 9

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    .line 167
    iget-object v0, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    #@3
    invoke-static {v0}, Landroid/widget/PopupWindow;->-get2(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_1

    #@9
    iget-object v0, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    #@b
    invoke-static {v0}, Landroid/widget/PopupWindow;->-get2(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroid/view/View;

    #@15
    .line 168
    :goto_0
    if-eqz v1, :cond_0

    #@17
    iget-object v0, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    #@19
    invoke-static {v0}, Landroid/widget/PopupWindow;->-get6(Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow$PopupDecorView;

    #@1c
    move-result-object v0

    #@1d
    if-eqz v0, :cond_0

    #@1f
    .line 170
    iget-object v0, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    #@21
    invoke-static {v0}, Landroid/widget/PopupWindow;->-get6(Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow$PopupDecorView;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@28
    move-result-object v2

    #@29
    .line 169
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    #@2b
    .line 172
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    iget-object v7, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    #@2d
    iget-object v0, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    #@2f
    iget-object v3, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    #@31
    invoke-static {v3}, Landroid/widget/PopupWindow;->-get3(Landroid/widget/PopupWindow;)I

    #@34
    move-result v3

    #@35
    iget-object v4, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    #@37
    invoke-static {v4}, Landroid/widget/PopupWindow;->-get4(Landroid/widget/PopupWindow;)I

    #@3a
    move-result v4

    #@3b
    .line 173
    iget-object v5, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    #@3d
    invoke-static {v5}, Landroid/widget/PopupWindow;->-get5(Landroid/widget/PopupWindow;)I

    #@40
    move-result v5

    #@41
    .line 172
    invoke-static/range {v0 .. v5}, Landroid/widget/PopupWindow;->-wrap1(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    #@44
    move-result v0

    #@45
    invoke-static {v7, v0}, Landroid/widget/PopupWindow;->-wrap3(Landroid/widget/PopupWindow;Z)V

    #@48
    .line 174
    iget-object v3, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    #@4a
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    #@4c
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    #@4e
    const/4 v8, 0x1

    #@4f
    move v7, v6

    #@50
    invoke-virtual/range {v3 .. v8}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    #@53
    .line 166
    .end local v2    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void

    #@54
    .line 167
    :cond_1
    const/4 v1, 0x0

    #@55
    .local v1, "anchor":Landroid/view/View;
    goto :goto_0
.end method
