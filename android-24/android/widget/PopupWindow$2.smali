.class Landroid/widget/PopupWindow$2;
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
    .line 215
    iput-object p1, p0, Landroid/widget/PopupWindow$2;->this$0:Landroid/widget/PopupWindow;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 10

    #@0
    .prologue
    const/4 v9, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 218
    iget-object v0, p0, Landroid/widget/PopupWindow$2;->this$0:Landroid/widget/PopupWindow;

    #@4
    invoke-static {v0}, Landroid/widget/PopupWindow;->-get2(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_0

    #@a
    iget-object v0, p0, Landroid/widget/PopupWindow$2;->this$0:Landroid/widget/PopupWindow;

    #@c
    invoke-static {v0}, Landroid/widget/PopupWindow;->-get2(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/view/View;

    #@16
    move-object v1, v0

    #@17
    .line 219
    .local v1, "anchor":Landroid/view/View;
    :cond_0
    if-eqz v1, :cond_1

    #@19
    iget-object v0, p0, Landroid/widget/PopupWindow$2;->this$0:Landroid/widget/PopupWindow;

    #@1b
    invoke-static {v0}, Landroid/widget/PopupWindow;->-get6(Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow$PopupDecorView;

    #@1e
    move-result-object v0

    #@1f
    if-eqz v0, :cond_1

    #@21
    .line 221
    iget-object v0, p0, Landroid/widget/PopupWindow$2;->this$0:Landroid/widget/PopupWindow;

    #@23
    invoke-static {v0}, Landroid/widget/PopupWindow;->-get6(Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow$PopupDecorView;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@2a
    move-result-object v2

    #@2b
    .line 220
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    #@2d
    .line 223
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    iget-object v8, p0, Landroid/widget/PopupWindow$2;->this$0:Landroid/widget/PopupWindow;

    #@2f
    iget-object v0, p0, Landroid/widget/PopupWindow$2;->this$0:Landroid/widget/PopupWindow;

    #@31
    iget-object v3, p0, Landroid/widget/PopupWindow$2;->this$0:Landroid/widget/PopupWindow;

    #@33
    invoke-static {v3}, Landroid/widget/PopupWindow;->-get3(Landroid/widget/PopupWindow;)I

    #@36
    move-result v3

    #@37
    iget-object v4, p0, Landroid/widget/PopupWindow$2;->this$0:Landroid/widget/PopupWindow;

    #@39
    invoke-static {v4}, Landroid/widget/PopupWindow;->-get4(Landroid/widget/PopupWindow;)I

    #@3c
    move-result v4

    #@3d
    .line 224
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    #@3f
    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    #@41
    iget-object v7, p0, Landroid/widget/PopupWindow$2;->this$0:Landroid/widget/PopupWindow;

    #@43
    invoke-static {v7}, Landroid/widget/PopupWindow;->-get5(Landroid/widget/PopupWindow;)I

    #@46
    move-result v7

    #@47
    .line 223
    invoke-static/range {v0 .. v7}, Landroid/widget/PopupWindow;->-wrap1(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIII)Z

    #@4a
    move-result v0

    #@4b
    invoke-static {v8, v0}, Landroid/widget/PopupWindow;->-wrap3(Landroid/widget/PopupWindow;Z)V

    #@4e
    .line 225
    iget-object v3, p0, Landroid/widget/PopupWindow$2;->this$0:Landroid/widget/PopupWindow;

    #@50
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    #@52
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    #@54
    const/4 v8, 0x1

    #@55
    move v6, v9

    #@56
    move v7, v9

    #@57
    invoke-virtual/range {v3 .. v8}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    #@5a
    .line 217
    .end local v2    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    return-void
.end method
