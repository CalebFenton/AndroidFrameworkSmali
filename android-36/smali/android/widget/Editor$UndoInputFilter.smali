.class public Landroid/widget/Editor$UndoInputFilter;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UndoInputFilter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$UndoInputFilter$MergeMode;
    }
.end annotation


# static fields
.field private static final greylist-max-o MERGE_EDIT_MODE_FORCE_MERGE:I = 0x0

.field private static final greylist-max-o MERGE_EDIT_MODE_NEVER_MERGE:I = 0x1

.field private static final greylist-max-o MERGE_EDIT_MODE_NORMAL:I = 0x2


# instance fields
.field private final greylist-max-o mEditor:Landroid/widget/Editor;

.field private greylist-max-o mExpanding:Z

.field private greylist-max-o mHasComposition:Z

.field private greylist-max-o mIsUserEdit:Z

.field private greylist-max-o mPreviousOperationWasInSameBatchEdit:Z


# direct methods
.method public constructor greylist-max-o <init>(Landroid/widget/Editor;)V
    .registers 2
    .param p1, "editor"    # Landroid/widget/Editor;

    .line 7527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7528
    iput-object p1, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    .line 7529
    return-void
.end method

.method private greylist-max-o canUndoEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Z
    .registers 9
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .line 7679
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mAllowUndo:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 7681
    return v1

    .line 7684
    :cond_8
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmUndoManager(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/UndoManager;->isInUndo()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 7686
    return v1

    .line 7692
    :cond_15
    invoke-static {p1, p2, p3}, Landroid/widget/Editor;->-$$Nest$smisValidRange(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p4, p5, p6}, Landroid/widget/Editor;->-$$Nest$smisValidRange(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_29

    .line 7699
    :cond_22
    if-ne p2, p3, :cond_27

    if-ne p5, p6, :cond_27

    .line 7701
    return v1

    .line 7704
    :cond_27
    const/4 v0, 0x1

    return v0

    .line 7694
    :cond_29
    :goto_29
    return v1
.end method

.method private greylist-max-o getLastEdit()Landroid/widget/Editor$EditOperation;
    .registers 5

    .line 7636
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmUndoManager(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v0

    .line 7637
    .local v0, "um":Landroid/content/UndoManager;
    const-class v1, Landroid/widget/Editor$EditOperation;

    iget-object v2, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmUndoOwner(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UndoManager;->getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;I)Landroid/content/UndoOperation;

    move-result-object v1

    check-cast v1, Landroid/widget/Editor$EditOperation;

    return-object v1
.end method

.method private greylist-max-o handleEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;IIZ)V
    .registers 15
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I
    .param p7, "shouldCreateSeparateState"    # Z

    .line 7617
    invoke-direct {p0}, Landroid/widget/Editor$UndoInputFilter;->isInTextWatcher()Z

    move-result v0

    if-nez v0, :cond_11

    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    if-eqz v0, :cond_b

    goto :goto_11

    .line 7619
    :cond_b
    if-eqz p7, :cond_f

    .line 7620
    const/4 v0, 0x1

    .local v0, "mergeMode":I
    goto :goto_12

    .line 7622
    .end local v0    # "mergeMode":I
    :cond_f
    const/4 v0, 0x2

    .restart local v0    # "mergeMode":I
    goto :goto_12

    .line 7618
    .end local v0    # "mergeMode":I
    :cond_11
    :goto_11
    const/4 v0, 0x0

    .line 7625
    .restart local v0    # "mergeMode":I
    :goto_12
    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v5

    .line 7626
    .local v5, "newText":Ljava/lang/String;
    invoke-static {p4, p5, p6}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v3

    .line 7627
    .local v3, "oldText":Ljava/lang/String;
    new-instance v1, Landroid/widget/Editor$EditOperation;

    iget-object v2, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    iget-boolean v6, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    move v4, p5

    .end local p5    # "dstart":I
    .local v4, "dstart":I
    invoke-direct/range {v1 .. v6}, Landroid/widget/Editor$EditOperation;-><init>(Landroid/widget/Editor;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 7629
    .local v1, "edit":Landroid/widget/Editor$EditOperation;
    iget-boolean p5, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    if-eqz p5, :cond_37

    invoke-static {v1}, Landroid/widget/Editor$EditOperation;->-$$Nest$fgetmNewText(Landroid/widget/Editor$EditOperation;)Ljava/lang/String;

    move-result-object p5

    invoke-static {v1}, Landroid/widget/Editor$EditOperation;->-$$Nest$fgetmOldText(Landroid/widget/Editor$EditOperation;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_37

    .line 7630
    return-void

    .line 7632
    :cond_37
    invoke-direct {p0, v1, v0}, Landroid/widget/Editor$UndoInputFilter;->recordEdit(Landroid/widget/Editor$EditOperation;I)V

    .line 7633
    return-void
.end method

.method private static greylist-max-o isComposition(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0, "source"    # Ljava/lang/CharSequence;

    .line 7708
    instance-of v0, p0, Landroid/text/Spannable;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 7709
    return v1

    .line 7712
    :cond_6
    move-object v0, p0

    check-cast v0, Landroid/text/Spannable;

    .line 7713
    .local v0, "text":Landroid/text/Spannable;
    invoke-static {v0}, Lcom/android/internal/inputmethod/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    .line 7714
    .local v2, "composeBegin":I
    invoke-static {v0}, Lcom/android/internal/inputmethod/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v3

    .line 7715
    .local v3, "composeEnd":I
    if-ge v2, v3, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method private greylist-max-o isInTextWatcher()Z
    .registers 3

    .line 7719
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 7720
    .local v0, "text":Ljava/lang/CharSequence;
    instance-of v1, v0, Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_19

    move-object v1, v0

    check-cast v1, Landroid/text/SpannableStringBuilder;

    .line 7721
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->getTextWatcherDepth()I

    move-result v1

    if-lez v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    .line 7720
    :goto_1a
    return v1
.end method

.method private greylist-max-o recordEdit(Landroid/widget/Editor$EditOperation;I)V
    .registers 7
    .param p1, "edit"    # Landroid/widget/Editor$EditOperation;
    .param p2, "mergeMode"    # I

    .line 7646
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmUndoManager(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v0

    .line 7647
    .local v0, "um":Landroid/content/UndoManager;
    const-string v1, "Edit text"

    invoke-virtual {v0, v1}, Landroid/content/UndoManager;->beginUpdate(Ljava/lang/CharSequence;)V

    .line 7648
    invoke-direct {p0}, Landroid/widget/Editor$UndoInputFilter;->getLastEdit()Landroid/widget/Editor$EditOperation;

    move-result-object v1

    .line 7649
    .local v1, "lastEdit":Landroid/widget/Editor$EditOperation;
    const/4 v2, 0x0

    if-nez v1, :cond_16

    .line 7652
    invoke-virtual {v0, p1, v2}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    goto :goto_43

    .line 7653
    :cond_16
    if-nez p2, :cond_1c

    .line 7657
    invoke-virtual {v1, p1}, Landroid/widget/Editor$EditOperation;->forceMergeWith(Landroid/widget/Editor$EditOperation;)V

    goto :goto_43

    .line 7658
    :cond_1c
    iget-boolean v3, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    if-nez v3, :cond_2d

    .line 7662
    iget-object v3, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmUndoOwner(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/UndoManager;->commitState(Landroid/content/UndoOwner;)I

    .line 7663
    invoke-virtual {v0, p1, v2}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    goto :goto_43

    .line 7664
    :cond_2d
    const/4 v3, 0x2

    if-ne p2, v3, :cond_37

    invoke-static {v1, p1}, Landroid/widget/Editor$EditOperation;->-$$Nest$mmergeWith(Landroid/widget/Editor$EditOperation;Landroid/widget/Editor$EditOperation;)Z

    move-result v3

    if-eqz v3, :cond_37

    goto :goto_43

    .line 7670
    :cond_37
    iget-object v3, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmUndoOwner(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/UndoManager;->commitState(Landroid/content/UndoOwner;)I

    .line 7671
    invoke-virtual {v0, p1, v2}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    .line 7673
    :goto_43
    iget-boolean v2, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    iput-boolean v2, p0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    .line 7674
    invoke-virtual {v0}, Landroid/content/UndoManager;->endUpdate()V

    .line 7675
    return-void
.end method


# virtual methods
.method public greylist-max-o beginBatchEdit()V
    .registers 2

    .line 7550
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    .line 7551
    return-void
.end method

.method public greylist-max-o endBatchEdit()V
    .registers 2

    .line 7555
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    .line 7556
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    .line 7557
    return-void
.end method

.method public whitelist filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 18
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .line 7568
    invoke-direct/range {p0 .. p6}, Landroid/widget/Editor$UndoInputFilter;->canUndoEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Z

    move-result v1

    const/4 v8, 0x0

    if-nez v1, :cond_8

    .line 7569
    return-object v8

    .line 7572
    :cond_8
    iget-boolean v9, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    .line 7573
    .local v9, "hadComposition":Z
    invoke-static {p1}, Landroid/widget/Editor$UndoInputFilter;->isComposition(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    .line 7574
    iget-boolean v10, p0, Landroid/widget/Editor$UndoInputFilter;->mExpanding:Z

    .line 7575
    .local v10, "wasExpanding":Z
    const/4 v1, 0x0

    .line 7576
    .local v1, "shouldCreateSeparateState":Z
    sub-int v2, p3, p2

    sub-int v3, p6, p5

    if-eq v2, v3, :cond_2d

    .line 7577
    sub-int v2, p3, p2

    sub-int v3, p6, p5

    if-le v2, v3, :cond_21

    const/4 v2, 0x1

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    :goto_22
    iput-boolean v2, p0, Landroid/widget/Editor$UndoInputFilter;->mExpanding:Z

    .line 7578
    if-eqz v9, :cond_2d

    iget-boolean v2, p0, Landroid/widget/Editor$UndoInputFilter;->mExpanding:Z

    if-eq v2, v10, :cond_2d

    .line 7579
    const/4 v1, 0x1

    move v7, v1

    goto :goto_2e

    .line 7584
    :cond_2d
    move v7, v1

    .end local v1    # "shouldCreateSeparateState":Z
    .local v7, "shouldCreateSeparateState":Z
    :goto_2e
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/widget/Editor$UndoInputFilter;->handleEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;IIZ)V

    .line 7585
    return-object v8
.end method

.method greylist-max-o freezeLastEdit()V
    .registers 3

    .line 7589
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmUndoManager(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v0

    const-string v1, "Edit text"

    invoke-virtual {v0, v1}, Landroid/content/UndoManager;->beginUpdate(Ljava/lang/CharSequence;)V

    .line 7590
    invoke-direct {p0}, Landroid/widget/Editor$UndoInputFilter;->getLastEdit()Landroid/widget/Editor$EditOperation;

    move-result-object v0

    .line 7591
    .local v0, "lastEdit":Landroid/widget/Editor$EditOperation;
    if-eqz v0, :cond_15

    .line 7592
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/Editor$EditOperation;->-$$Nest$fputmFrozen(Landroid/widget/Editor$EditOperation;Z)V

    .line 7594
    :cond_15
    iget-object v1, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmUndoManager(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/UndoManager;->endUpdate()V

    .line 7595
    return-void
.end method

.method public greylist-max-o restoreInstanceState(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 7539
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    .line 7540
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    move v0, v1

    goto :goto_16

    :cond_15
    move v0, v2

    :goto_16
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    .line 7541
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20

    move v0, v1

    goto :goto_21

    :cond_20
    move v0, v2

    :goto_21
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mExpanding:Z

    .line 7542
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_2b

    :cond_2a
    move v1, v2

    :goto_2b
    iput-boolean v1, p0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    .line 7543
    return-void
.end method

.method public greylist-max-o saveInstanceState(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 7532
    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7533
    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7534
    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mExpanding:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7535
    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7536
    return-void
.end method
