.class Lcom/android/internal/view/FloatingActionMode$3;
.super Ljava/lang/Object;
.source "FloatingActionMode.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/FloatingActionMode;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/view/FloatingActionMode;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/view/FloatingActionMode;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/view/FloatingActionMode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/android/internal/view/FloatingActionMode$3;->this$0:Lcom/android/internal/view/FloatingActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 5
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 97
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode$3;->this$0:Lcom/android/internal/view/FloatingActionMode;

    invoke-static {v0}, Lcom/android/internal/view/FloatingActionMode;->-$$Nest$fgetmCallback(Lcom/android/internal/view/FloatingActionMode;)Landroid/view/ActionMode$Callback2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode$3;->this$0:Lcom/android/internal/view/FloatingActionMode;

    invoke-virtual {v0, v1, p2}, Landroid/view/ActionMode$Callback2;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public blacklist onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 2
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 93
    return-void
.end method
