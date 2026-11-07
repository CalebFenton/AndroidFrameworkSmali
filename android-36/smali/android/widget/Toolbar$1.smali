.class Landroid/widget/Toolbar$1;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroid/widget/ActionMenuView$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/Toolbar;


# direct methods
.method constructor blacklist <init>(Landroid/widget/Toolbar;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/Toolbar;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 199
    iput-object p1, p0, Landroid/widget/Toolbar$1;->this$0:Landroid/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 202
    iget-object v0, p0, Landroid/widget/Toolbar$1;->this$0:Landroid/widget/Toolbar;

    invoke-static {v0}, Landroid/widget/Toolbar;->-$$Nest$fgetmOnMenuItemClickListener(Landroid/widget/Toolbar;)Landroid/widget/Toolbar$OnMenuItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 203
    iget-object v0, p0, Landroid/widget/Toolbar$1;->this$0:Landroid/widget/Toolbar;

    invoke-static {v0}, Landroid/widget/Toolbar;->-$$Nest$fgetmOnMenuItemClickListener(Landroid/widget/Toolbar;)Landroid/widget/Toolbar$OnMenuItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/Toolbar$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 205
    :cond_13
    const/4 v0, 0x0

    return v0
.end method
