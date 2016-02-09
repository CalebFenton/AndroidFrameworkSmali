.class Lcom/android/internal/view/FloatingActionMode$3;
.super Ljava/lang/Object;
.source "FloatingActionMode.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/FloatingActionMode;->setFloatingToolbar(Lcom/android/internal/widget/FloatingToolbar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/FloatingActionMode;


# direct methods
.method constructor <init>(Lcom/android/internal/view/FloatingActionMode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/view/FloatingActionMode;

    #@0
    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/internal/view/FloatingActionMode$3;->this$0:Lcom/android/internal/view/FloatingActionMode;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode$3;->this$0:Lcom/android/internal/view/FloatingActionMode;

    #@2
    invoke-static {v0}, Lcom/android/internal/view/FloatingActionMode;->-get0(Lcom/android/internal/view/FloatingActionMode;)Landroid/view/ActionMode$Callback2;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode$3;->this$0:Lcom/android/internal/view/FloatingActionMode;

    #@8
    invoke-virtual {v0, v1, p1}, Landroid/view/ActionMode$Callback2;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method
