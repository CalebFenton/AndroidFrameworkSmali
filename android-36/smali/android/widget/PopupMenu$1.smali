.class Landroid/widget/PopupMenu$1;
.super Ljava/lang/Object;
.source "PopupMenu.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/PopupMenu;


# direct methods
.method constructor blacklist <init>(Landroid/widget/PopupMenu;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/PopupMenu;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 105
    iput-object p1, p0, Landroid/widget/PopupMenu$1;->this$0:Landroid/widget/PopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 108
    iget-object v0, p0, Landroid/widget/PopupMenu$1;->this$0:Landroid/widget/PopupMenu;

    invoke-static {v0}, Landroid/widget/PopupMenu;->-$$Nest$fgetmMenuItemClickListener(Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu$OnMenuItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 109
    iget-object v0, p0, Landroid/widget/PopupMenu$1;->this$0:Landroid/widget/PopupMenu;

    invoke-static {v0}, Landroid/widget/PopupMenu;->-$$Nest$fgetmMenuItemClickListener(Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu$OnMenuItemClickListener;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/widget/PopupMenu$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 111
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 2
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 116
    return-void
.end method
