.class Lcom/android/internal/view/FloatingActionMode$4;
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
    .line 111
    iput-object p1, p0, Lcom/android/internal/view/FloatingActionMode$4;->this$0:Lcom/android/internal/view/FloatingActionMode;

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
    .line 114
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode$4;->this$0:Lcom/android/internal/view/FloatingActionMode;

    #@2
    invoke-static {v0}, Lcom/android/internal/view/FloatingActionMode;->-get2(Lcom/android/internal/view/FloatingActionMode;)Lcom/android/internal/view/menu/MenuBuilder;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    #@a
    move-result v0

    #@b
    return v0
.end method
