.class Lcom/android/internal/view/inline/InlineTooltipUi$1;
.super Ljava/lang/Object;
.source "InlineTooltipUi.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/inline/InlineTooltipUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/view/inline/InlineTooltipUi;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/view/inline/InlineTooltipUi;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/view/inline/InlineTooltipUi;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/android/internal/view/inline/InlineTooltipUi$1;->this$0:Lcom/android/internal/view/inline/InlineTooltipUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .line 73
    return-void
.end method

.method public whitelist onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi$1;->this$0:Lcom/android/internal/view/inline/InlineTooltipUi;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/view/inline/InlineTooltipUi;->-$$Nest$fputmHasEverDetached(Lcom/android/internal/view/inline/InlineTooltipUi;Z)V

    .line 78
    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi$1;->this$0:Lcom/android/internal/view/inline/InlineTooltipUi;

    invoke-virtual {v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->dismiss()V

    .line 79
    return-void
.end method
