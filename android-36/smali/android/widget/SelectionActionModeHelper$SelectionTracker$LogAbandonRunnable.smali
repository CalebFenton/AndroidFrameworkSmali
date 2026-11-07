.class final Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;
.super Ljava/lang/Object;
.source "SelectionActionModeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SelectionActionModeHelper$SelectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LogAbandonRunnable"
.end annotation


# instance fields
.field private greylist-max-o mIsPending:Z

.field final synthetic blacklist this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 686
    iput-object p1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/SelectionActionModeHelper$SelectionTracker;Landroid/widget/SelectionActionModeHelper-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;-><init>(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)V

    return-void
.end method


# virtual methods
.method greylist-max-o flush()V
    .registers 2

    .line 701
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->-$$Nest$fgetmTextView(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 702
    invoke-virtual {p0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->run()V

    .line 703
    return-void
.end method

.method public whitelist test-api run()V
    .registers 8

    .line 707
    iget-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->mIsPending:Z

    if-eqz v0, :cond_34

    .line 708
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->-$$Nest$fgetmLogger(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    move-result-object v1

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->-$$Nest$fgetmSelectionStart(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)I

    move-result v2

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->-$$Nest$fgetmSelectionEnd(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v4, 0x6b

    invoke-virtual/range {v1 .. v6}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->logSelectionAction(IIILjava/lang/String;Landroid/view/textclassifier/TextClassification;)V

    .line 712
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->-$$Nest$fputmSelectionEnd(Landroid/widget/SelectionActionModeHelper$SelectionTracker;I)V

    invoke-static {v0, v2}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->-$$Nest$fputmSelectionStart(Landroid/widget/SelectionActionModeHelper$SelectionTracker;I)V

    .line 713
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->-$$Nest$fgetmLogger(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->endTextClassificationSession()V

    .line 714
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->mIsPending:Z

    .line 716
    :cond_34
    return-void
.end method

.method greylist-max-o schedule(I)V
    .registers 5
    .param p1, "delayMillis"    # I

    .line 691
    iget-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->mIsPending:Z

    if-eqz v0, :cond_e

    .line 692
    const-string v0, "SelectActionModeHelper"

    const-string v1, "Force flushing abandon due to new scheduling request"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    invoke-virtual {p0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->flush()V

    .line 695
    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->mIsPending:Z

    .line 696
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->-$$Nest$fgetmTextView(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)Landroid/widget/TextView;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 697
    return-void
.end method
