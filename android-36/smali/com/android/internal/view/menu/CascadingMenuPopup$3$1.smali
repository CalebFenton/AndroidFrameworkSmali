.class Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/menu/CascadingMenuPopup$3;->onItemHoverEnter(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/view/menu/CascadingMenuPopup$3;

.field final synthetic blacklist val$item:Landroid/view/MenuItem;

.field final synthetic blacklist val$menu:Lcom/android/internal/view/menu/MenuBuilder;

.field final synthetic blacklist val$nextInfo:Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/view/menu/CascadingMenuPopup$3;Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;Landroid/view/MenuItem;Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 5
    .param p1, "this$1"    # Lcom/android/internal/view/menu/CascadingMenuPopup$3;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;->this$1:Lcom/android/internal/view/menu/CascadingMenuPopup$3;

    iput-object p2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;->val$nextInfo:Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iput-object p3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;->val$item:Landroid/view/MenuItem;

    iput-object p4, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;->val$menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 158
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;->val$nextInfo:Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 161
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;->this$1:Lcom/android/internal/view/menu/CascadingMenuPopup$3;

    iget-object v0, v0, Lcom/android/internal/view/menu/CascadingMenuPopup$3;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-$$Nest$fputmShouldCloseImmediately(Lcom/android/internal/view/menu/CascadingMenuPopup;Z)V

    .line 162
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;->val$nextInfo:Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v0, v0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 163
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;->this$1:Lcom/android/internal/view/menu/CascadingMenuPopup$3;

    iget-object v0, v0, Lcom/android/internal/view/menu/CascadingMenuPopup$3;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    invoke-static {v0, v1}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-$$Nest$fputmShouldCloseImmediately(Lcom/android/internal/view/menu/CascadingMenuPopup;Z)V

    .line 167
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;->val$item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;->val$item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 168
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;->val$menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;->val$item:Landroid/view/MenuItem;

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 170
    :cond_32
    return-void
.end method
