.class Lcom/android/internal/view/inline/InlineTooltipUi$2;
.super Ljava/lang/Object;
.source "InlineTooltipUi.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/inline/InlineTooltipUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist mHeight:I

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

    .line 83
    iput-object p1, p0, Lcom/android/internal/view/inline/InlineTooltipUi$2;->this$0:Lcom/android/internal/view/inline/InlineTooltipUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 88
    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi$2;->this$0:Lcom/android/internal/view/inline/InlineTooltipUi;

    invoke-static {v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->-$$Nest$fgetmHasEverDetached(Lcom/android/internal/view/inline/InlineTooltipUi;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 92
    return-void

    .line 95
    :cond_9
    iget v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi$2;->mHeight:I

    sub-int v1, p5, p3

    if-eq v0, v1, :cond_18

    .line 96
    sub-int v0, p5, p3

    iput v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi$2;->mHeight:I

    .line 97
    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi$2;->this$0:Lcom/android/internal/view/inline/InlineTooltipUi;

    invoke-static {v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->-$$Nest$madjustPosition(Lcom/android/internal/view/inline/InlineTooltipUi;)V

    .line 99
    :cond_18
    return-void
.end method
