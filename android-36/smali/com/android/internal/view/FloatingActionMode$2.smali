.class Lcom/android/internal/view/FloatingActionMode$2;
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

    .line 71
    iput-object p1, p0, Lcom/android/internal/view/FloatingActionMode$2;->this$0:Lcom/android/internal/view/FloatingActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode$2;->this$0:Lcom/android/internal/view/FloatingActionMode;

    invoke-static {v0}, Lcom/android/internal/view/FloatingActionMode;->-$$Nest$misViewStillActive(Lcom/android/internal/view/FloatingActionMode;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 74
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode$2;->this$0:Lcom/android/internal/view/FloatingActionMode;

    invoke-static {v0}, Lcom/android/internal/view/FloatingActionMode;->-$$Nest$fgetmFloatingToolbarVisibilityHelper(Lcom/android/internal/view/FloatingActionMode;)Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->setHideRequested(Z)V

    .line 75
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode$2;->this$0:Lcom/android/internal/view/FloatingActionMode;

    invoke-static {v0}, Lcom/android/internal/view/FloatingActionMode;->-$$Nest$fgetmFloatingToolbarVisibilityHelper(Lcom/android/internal/view/FloatingActionMode;)Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->updateToolbarVisibility()V

    .line 77
    :cond_1b
    return-void
.end method
