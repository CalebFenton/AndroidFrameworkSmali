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
.field final synthetic this$0:Landroid/widget/Toolbar;


# direct methods
.method constructor <init>(Landroid/widget/Toolbar;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Toolbar;

    #@0
    .prologue
    .line 158
    iput-object p1, p0, Landroid/widget/Toolbar$1;->this$0:Landroid/widget/Toolbar;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 161
    iget-object v0, p0, Landroid/widget/Toolbar$1;->this$0:Landroid/widget/Toolbar;

    #@2
    invoke-static {v0}, Landroid/widget/Toolbar;->-get2(Landroid/widget/Toolbar;)Landroid/widget/Toolbar$OnMenuItemClickListener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 162
    iget-object v0, p0, Landroid/widget/Toolbar$1;->this$0:Landroid/widget/Toolbar;

    #@a
    invoke-static {v0}, Landroid/widget/Toolbar;->-get2(Landroid/widget/Toolbar;)Landroid/widget/Toolbar$OnMenuItemClickListener;

    #@d
    move-result-object v0

    #@e
    invoke-interface {v0, p1}, Landroid/widget/Toolbar$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    #@11
    move-result v0

    #@12
    return v0

    #@13
    .line 164
    :cond_0
    const/4 v0, 0x0

    #@14
    return v0
.end method
