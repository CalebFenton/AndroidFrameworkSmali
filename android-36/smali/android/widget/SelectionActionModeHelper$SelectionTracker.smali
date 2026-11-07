.class final Landroid/widget/SelectionActionModeHelper$SelectionTracker;
.super Ljava/lang/Object;
.source "SelectionActionModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SelectionActionModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SelectionTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;
    }
.end annotation


# instance fields
.field private greylist-max-o mAllowReset:Z

.field private final greylist-max-o mDelayedLogAbandon:Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;

.field private greylist-max-o mLogger:Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

.field private greylist-max-o mOriginalEnd:I

.field private greylist-max-o mOriginalStart:I

.field private greylist-max-o mSelectionEnd:I

.field private greylist-max-o mSelectionStart:I

.field private final greylist-max-o mTextView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLogger(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;
    .registers 1

    iget-object p0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mLogger:Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectionEnd(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)I
    .registers 1

    iget p0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionEnd:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectionStart(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)I
    .registers 1

    iget p0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionStart:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTextView(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSelectionEnd(Landroid/widget/SelectionActionModeHelper$SelectionTracker;I)V
    .registers 2

    iput p1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionEnd:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSelectionStart(Landroid/widget/SelectionActionModeHelper$SelectionTracker;I)V
    .registers 2

    iput p1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionStart:I

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/widget/TextView;)V
    .registers 4
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    new-instance v0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;-><init>(Landroid/widget/SelectionActionModeHelper$SelectionTracker;Landroid/widget/SelectionActionModeHelper-IA;)V

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mDelayedLogAbandon:Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;

    .line 548
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mTextView:Landroid/widget/TextView;

    .line 549
    new-instance v0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    invoke-direct {v0, p1}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mLogger:Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    .line 550
    return-void
.end method

.method private greylist-max-o isSelectionStarted()Z
    .registers 3

    .line 682
    iget v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionStart:I

    if-ltz v0, :cond_10

    iget v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionEnd:I

    if-ltz v0, :cond_10

    iget v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionStart:I

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionEnd:I

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private greylist-max-o maybeInvalidateLogger()V
    .registers 3

    .line 676
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mLogger:Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->isEditTextLogger()Z

    move-result v0

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    if-eq v0, v1, :cond_17

    .line 677
    new-instance v0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mLogger:Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    .line 679
    :cond_17
    return-void
.end method

.method private greylist-max-o onClassifiedSelection(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .registers 4
    .param p1, "result"    # Landroid/widget/SelectionActionModeHelper$SelectionResult;

    .line 592
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->isSelectionStarted()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 593
    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-$$Nest$fgetmStart(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v0

    iput v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionStart:I

    .line 594
    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-$$Nest$fgetmEnd(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v0

    iput v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionEnd:I

    .line 595
    iget v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionStart:I

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mOriginalStart:I

    if-ne v0, v1, :cond_21

    iget v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionEnd:I

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mOriginalEnd:I

    if-eq v0, v1, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    :goto_22
    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mAllowReset:Z

    .line 597
    :cond_24
    return-void
.end method


# virtual methods
.method public greylist-max-o onLinkSelected(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .registers 2
    .param p1, "result"    # Landroid/widget/SelectionActionModeHelper$SelectionResult;

    .line 587
    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onClassifiedSelection(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    .line 589
    return-void
.end method

.method public greylist-max-o onOriginalSelection(Ljava/lang/CharSequence;IIZ)V
    .registers 12
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "selectionStart"    # I
    .param p3, "selectionEnd"    # I
    .param p4, "isLink"    # Z

    .line 559
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mDelayedLogAbandon:Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->flush()V

    .line 561
    iput p2, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionStart:I

    iput p2, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mOriginalStart:I

    .line 562
    iput p3, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionEnd:I

    iput p3, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mOriginalEnd:I

    .line 563
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mAllowReset:Z

    .line 564
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->maybeInvalidateLogger()V

    .line 565
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mLogger:Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mTextView:Landroid/widget/TextView;

    .line 566
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextClassificationSession()Landroid/view/textclassifier/TextClassifier;

    move-result-object v2

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mTextView:Landroid/widget/TextView;

    .line 567
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextClassificationContext()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v3

    .line 570
    if-eqz p4, :cond_25

    const/4 v0, 0x2

    goto :goto_26

    :cond_25
    const/4 v0, 0x1

    :goto_26
    move v6, v0

    .line 565
    move-object v4, p1

    move v5, p2

    .end local p1    # "text":Ljava/lang/CharSequence;
    .end local p2    # "selectionStart":I
    .local v4, "text":Ljava/lang/CharSequence;
    .local v5, "selectionStart":I
    invoke-virtual/range {v1 .. v6}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->logSelectionStarted(Landroid/view/textclassifier/TextClassifier;Landroid/view/textclassifier/TextClassificationContext;Ljava/lang/CharSequence;II)V

    .line 571
    return-void
.end method

.method public blacklist onSelectionAction(IIILjava/lang/String;Landroid/view/textclassifier/TextClassification;)V
    .registers 13
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I
    .param p3, "action"    # I
    .param p4, "actionLabel"    # Ljava/lang/String;
    .param p5, "classification"    # Landroid/view/textclassifier/TextClassification;

    .line 632
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->isSelectionStarted()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 633
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mAllowReset:Z

    .line 634
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mLogger:Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "selectionStart":I
    .end local p2    # "selectionEnd":I
    .end local p3    # "action":I
    .end local p4    # "actionLabel":Ljava/lang/String;
    .end local p5    # "classification":Landroid/view/textclassifier/TextClassification;
    .local v2, "selectionStart":I
    .local v3, "selectionEnd":I
    .local v4, "action":I
    .local v5, "actionLabel":Ljava/lang/String;
    .local v6, "classification":Landroid/view/textclassifier/TextClassification;
    invoke-virtual/range {v1 .. v6}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->logSelectionAction(IIILjava/lang/String;Landroid/view/textclassifier/TextClassification;)V

    goto :goto_19

    .line 632
    .end local v2    # "selectionStart":I
    .end local v3    # "selectionEnd":I
    .end local v4    # "action":I
    .end local v5    # "actionLabel":Ljava/lang/String;
    .end local v6    # "classification":Landroid/view/textclassifier/TextClassification;
    .restart local p1    # "selectionStart":I
    .restart local p2    # "selectionEnd":I
    .restart local p3    # "action":I
    .restart local p4    # "actionLabel":Ljava/lang/String;
    .restart local p5    # "classification":Landroid/view/textclassifier/TextClassification;
    :cond_14
    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 637
    .end local p1    # "selectionStart":I
    .end local p2    # "selectionEnd":I
    .end local p3    # "action":I
    .end local p4    # "actionLabel":Ljava/lang/String;
    .end local p5    # "classification":Landroid/view/textclassifier/TextClassification;
    .restart local v2    # "selectionStart":I
    .restart local v3    # "selectionEnd":I
    .restart local v4    # "action":I
    .restart local v5    # "actionLabel":Ljava/lang/String;
    .restart local v6    # "classification":Landroid/view/textclassifier/TextClassification;
    :goto_19
    return-void
.end method

.method public greylist-max-o onSelectionDestroyed()V
    .registers 3

    .line 618
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mAllowReset:Z

    .line 619
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->notifyContentCaptureTextChanged()V

    .line 621
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mDelayedLogAbandon:Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->schedule(I)V

    .line 622
    return-void
.end method

.method public greylist-max-o onSelectionUpdated(IILandroid/view/textclassifier/TextClassification;)V
    .registers 6
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I
    .param p3, "classification"    # Landroid/view/textclassifier/TextClassification;

    .line 605
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->isSelectionStarted()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 606
    iput p1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionStart:I

    .line 607
    iput p2, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionEnd:I

    .line 608
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mAllowReset:Z

    .line 609
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->notifyContentCaptureTextChanged()V

    .line 610
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mLogger:Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->logSelectionModified(IILandroid/view/textclassifier/TextClassification;Landroid/view/textclassifier/TextSelection;)V

    .line 612
    :cond_18
    return-void
.end method

.method public greylist-max-o onSmartSelection(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .registers 7
    .param p1, "result"    # Landroid/widget/SelectionActionModeHelper$SelectionResult;

    .line 577
    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onClassifiedSelection(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    .line 578
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->notifyContentCaptureTextChanged()V

    .line 579
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mLogger:Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-$$Nest$fgetmStart(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v1

    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-$$Nest$fgetmEnd(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v2

    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-$$Nest$fgetmClassification(Landroid/widget/SelectionActionModeHelper$SelectionResult;)Landroid/view/textclassifier/TextClassification;

    move-result-object v3

    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-$$Nest$fgetmSelection(Landroid/widget/SelectionActionModeHelper$SelectionResult;)Landroid/view/textclassifier/TextSelection;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->logSelectionModified(IILandroid/view/textclassifier/TextClassification;Landroid/view/textclassifier/TextSelection;)V

    .line 581
    return-void
.end method

.method public greylist-max-o onTextChanged(IILandroid/view/textclassifier/TextClassification;)V
    .registers 11
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "classification"    # Landroid/view/textclassifier/TextClassification;

    .line 668
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->isSelectionStarted()Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionStart:I

    if-ne p1, v0, :cond_19

    iget v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionEnd:I

    if-ne p2, v0, :cond_19

    .line 669
    const/16 v4, 0x64

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v6, p3

    .end local p1    # "start":I
    .end local p2    # "end":I
    .end local p3    # "classification":Landroid/view/textclassifier/TextClassification;
    .local v2, "start":I
    .local v3, "end":I
    .local v6, "classification":Landroid/view/textclassifier/TextClassification;
    invoke-virtual/range {v1 .. v6}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onSelectionAction(IIILjava/lang/String;Landroid/view/textclassifier/TextClassification;)V

    goto :goto_1c

    .line 668
    .end local v2    # "start":I
    .end local v3    # "end":I
    .end local v6    # "classification":Landroid/view/textclassifier/TextClassification;
    .restart local p1    # "start":I
    .restart local p2    # "end":I
    .restart local p3    # "classification":Landroid/view/textclassifier/TextClassification;
    :cond_19
    move v2, p1

    move v3, p2

    move-object v6, p3

    .line 673
    .end local p1    # "start":I
    .end local p2    # "end":I
    .end local p3    # "classification":Landroid/view/textclassifier/TextClassification;
    .restart local v2    # "start":I
    .restart local v3    # "end":I
    .restart local v6    # "classification":Landroid/view/textclassifier/TextClassification;
    :goto_1c
    return-void
.end method

.method public greylist-max-o resetSelection(ILandroid/widget/Editor;)Z
    .registers 15
    .param p1, "textIndex"    # I
    .param p2, "editor"    # Landroid/widget/Editor;

    .line 646
    invoke-virtual {p2}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 647
    .local v0, "textView":Landroid/widget/TextView;
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->isSelectionStarted()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_42

    iget-boolean v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mAllowReset:Z

    if-eqz v1, :cond_42

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionStart:I

    if-lt p1, v1, :cond_42

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionEnd:I

    if-gt p1, v1, :cond_42

    .line 650
    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper;->-$$Nest$smgetText(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_42

    .line 651
    iput-boolean v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mAllowReset:Z

    .line 652
    invoke-virtual {p2}, Landroid/widget/Editor;->selectCurrentWord()Z

    move-result v1

    .line 653
    .local v1, "selected":Z
    if-eqz v1, :cond_41

    .line 654
    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper;->-$$Nest$smsortSelectionIndicesFromTextView(Landroid/widget/TextView;)[I

    move-result-object v3

    .line 655
    .local v3, "sortedSelectionIndices":[I
    aget v4, v3, v2

    iput v4, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionStart:I

    .line 656
    const/4 v4, 0x1

    aget v5, v3, v4

    iput v5, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionEnd:I

    .line 657
    iget-object v6, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mLogger:Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    aget v7, v3, v2

    aget v8, v3, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v9, 0xc9

    invoke-virtual/range {v6 .. v11}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->logSelectionAction(IIILjava/lang/String;Landroid/view/textclassifier/TextClassification;)V

    .line 662
    .end local v3    # "sortedSelectionIndices":[I
    :cond_41
    return v1

    .line 664
    .end local v1    # "selected":Z
    :cond_42
    return v2
.end method
