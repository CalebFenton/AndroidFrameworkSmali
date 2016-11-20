.class Landroid/widget/DropDownListView$ResolveHoverRunnable;
.super Ljava/lang/Object;
.source "DropDownListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DropDownListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResolveHoverRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DropDownListView;


# direct methods
.method private constructor <init>(Landroid/widget/DropDownListView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/DropDownListView;

    #@0
    .prologue
    .line 353
    iput-object p1, p0, Landroid/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/widget/DropDownListView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/DropDownListView;Landroid/widget/DropDownListView$ResolveHoverRunnable;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/DropDownListView;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/DropDownListView$ResolveHoverRunnable;-><init>(Landroid/widget/DropDownListView;)V

    #@3
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    #@0
    .prologue
    .line 362
    iget-object v0, p0, Landroid/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/widget/DropDownListView;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, v1}, Landroid/widget/DropDownListView;->-set0(Landroid/widget/DropDownListView;Landroid/widget/DropDownListView$ResolveHoverRunnable;)Landroid/widget/DropDownListView$ResolveHoverRunnable;

    #@6
    .line 363
    iget-object v0, p0, Landroid/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/widget/DropDownListView;

    #@8
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@b
    .line 361
    return-void
.end method

.method public post()V
    .locals 1

    #@0
    .prologue
    .line 367
    iget-object v0, p0, Landroid/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/widget/DropDownListView;

    #@2
    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    #@5
    .line 366
    return-void
.end method

.method public run()V
    .locals 2

    #@0
    .prologue
    .line 357
    iget-object v0, p0, Landroid/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/widget/DropDownListView;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, v1}, Landroid/widget/DropDownListView;->-set0(Landroid/widget/DropDownListView;Landroid/widget/DropDownListView$ResolveHoverRunnable;)Landroid/widget/DropDownListView$ResolveHoverRunnable;

    #@6
    .line 358
    iget-object v0, p0, Landroid/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/widget/DropDownListView;

    #@8
    invoke-virtual {v0}, Landroid/widget/DropDownListView;->drawableStateChanged()V

    #@b
    .line 355
    return-void
.end method
