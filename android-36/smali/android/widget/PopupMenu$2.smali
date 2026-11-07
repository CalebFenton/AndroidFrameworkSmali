.class Landroid/widget/PopupMenu$2;
.super Ljava/lang/Object;
.source "PopupMenu.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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

    .line 121
    iput-object p1, p0, Landroid/widget/PopupMenu$2;->this$0:Landroid/widget/PopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDismiss()V
    .registers 3

    .line 124
    iget-object v0, p0, Landroid/widget/PopupMenu$2;->this$0:Landroid/widget/PopupMenu;

    invoke-static {v0}, Landroid/widget/PopupMenu;->-$$Nest$fgetmOnDismissListener(Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 125
    iget-object v0, p0, Landroid/widget/PopupMenu$2;->this$0:Landroid/widget/PopupMenu;

    invoke-static {v0}, Landroid/widget/PopupMenu;->-$$Nest$fgetmOnDismissListener(Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu$OnDismissListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/PopupMenu$2;->this$0:Landroid/widget/PopupMenu;

    invoke-interface {v0, v1}, Landroid/widget/PopupMenu$OnDismissListener;->onDismiss(Landroid/widget/PopupMenu;)V

    .line 127
    :cond_13
    return-void
.end method
