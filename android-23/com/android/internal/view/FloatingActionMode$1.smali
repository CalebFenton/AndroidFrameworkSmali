.class Lcom/android/internal/view/FloatingActionMode$1;
.super Ljava/lang/Object;
.source "FloatingActionMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/FloatingActionMode;
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
    .line 55
    iput-object p1, p0, Lcom/android/internal/view/FloatingActionMode$1;->this$0:Lcom/android/internal/view/FloatingActionMode;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode$1;->this$0:Lcom/android/internal/view/FloatingActionMode;

    #@2
    invoke-static {v0}, Lcom/android/internal/view/FloatingActionMode;->-get1(Lcom/android/internal/view/FloatingActionMode;)Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    invoke-virtual {v0, v1}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->setMoving(Z)V

    #@a
    .line 58
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode$1;->this$0:Lcom/android/internal/view/FloatingActionMode;

    #@c
    invoke-static {v0}, Lcom/android/internal/view/FloatingActionMode;->-get1(Lcom/android/internal/view/FloatingActionMode;)Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->updateToolbarVisibility()V

    #@13
    .line 56
    return-void
.end method
