.class Lcom/android/internal/widget/ToolbarWidgetWrapper$1;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ToolbarWidgetWrapper;-><init>(Landroid/widget/Toolbar;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

.field final synthetic this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ToolbarWidgetWrapper;)V
    .locals 7
    .param p1, "this$0"    # Lcom/android/internal/widget/ToolbarWidgetWrapper;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 177
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 178
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuItem;

    #@8
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    #@a
    invoke-static {v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->-get2(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Landroid/widget/Toolbar;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    #@11
    move-result-object v1

    #@12
    .line 179
    iget-object v3, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    #@14
    invoke-static {v3}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->-get1(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Ljava/lang/CharSequence;

    #@17
    move-result-object v6

    #@18
    const v3, 0x102002c

    #@1b
    move v4, v2

    #@1c
    move v5, v2

    #@1d
    .line 178
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    #@20
    iput-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;->mNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    #@22
    .line 177
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    #@2
    invoke-static {v0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->-get3(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Landroid/view/Window$Callback;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    #@a
    invoke-static {v0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->-get0(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 183
    iget-object v0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    #@12
    invoke-static {v0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->-get3(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Landroid/view/Window$Callback;

    #@15
    move-result-object v0

    #@16
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;->mNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    #@18
    const/4 v2, 0x0

    #@19
    invoke-interface {v0, v2, v1}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    #@1c
    .line 181
    :cond_0
    return-void
.end method
