.class Landroid/view/autofill/AutofillManager$TrackedViews;
.super Ljava/lang/Object;
.source "AutofillManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/AutofillManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrackedViews"
.end annotation


# instance fields
.field blacklist mHasNewTrackedView:Z

.field private final blacklist mInvisibleDialogTrackedIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mInvisibleTrackedIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mIsTrackedSaveView:Z

.field private final blacklist mVisibleDialogTrackedIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mVisibleTrackedIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/view/autofill/AutofillManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmInvisibleTrackedIds(Landroid/view/autofill/AutofillManager$TrackedViews;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVisibleTrackedIds(Landroid/view/autofill/AutofillManager$TrackedViews;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/view/autofill/AutofillManager;[Landroid/view/autofill/AutofillId;[Landroid/view/autofill/AutofillId;)V
    .registers 6
    .param p2, "trackedIds"    # [Landroid/view/autofill/AutofillId;
    .param p3, "allTrackedIds"    # [Landroid/view/autofill/AutofillId;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 4519
    iput-object p1, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4520
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    .line 4521
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    .line 4522
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 4523
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mIsTrackedSaveView:Z

    .line 4524
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    invoke-direct {p0, p2, v0, v1}, Landroid/view/autofill/AutofillManager$TrackedViews;->initialTrackedViews([Landroid/view/autofill/AutofillId;Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 4527
    :cond_23
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleDialogTrackedIds:Landroid/util/ArraySet;

    .line 4528
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleDialogTrackedIds:Landroid/util/ArraySet;

    .line 4529
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 4530
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleDialogTrackedIds:Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleDialogTrackedIds:Landroid/util/ArraySet;

    invoke-direct {p0, p3, v0, v1}, Landroid/view/autofill/AutofillManager$TrackedViews;->initialTrackedViews([Landroid/view/autofill/AutofillId;Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 4532
    invoke-static {p1}, Landroid/view/autofill/AutofillManager;->-$$Nest$fgetmAllTrackedViews(Landroid/view/autofill/AutofillManager;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 4535
    :cond_49
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_a7

    .line 4536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrackedViews(trackedIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "):  mVisibleTrackedIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mInvisibleTrackedIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " allTrackedIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4539
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mVisibleDialogTrackedIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleDialogTrackedIds:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mInvisibleDialogTrackedIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleDialogTrackedIds:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4536
    const-string v1, "AutofillManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4544
    :cond_a7
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mIsTrackedSaveView:Z

    if-eqz v0, :cond_b7

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 4545
    const/4 v0, 0x4

    invoke-static {p1, v0}, Landroid/view/autofill/AutofillManager;->-$$Nest$mfinishSessionLocked(Landroid/view/autofill/AutofillManager;I)V

    .line 4547
    :cond_b7
    return-void
.end method

.method private greylist-max-o addToSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet<",
            "TT;>;TT;)",
            "Landroid/util/ArraySet<",
            "TT;>;"
        }
    .end annotation

    .line 4480
    .local p1, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .local p2, "valueToAdd":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_9

    .line 4481
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    move-object p1, v0

    .line 4484
    :cond_9
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4486
    return-object p1
.end method

.method private blacklist initialTrackedViews([Landroid/view/autofill/AutofillId;Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 10
    .param p1, "trackedIds"    # [Landroid/view/autofill/AutofillId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/util/ArraySet<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Landroid/util/ArraySet<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 4553
    .local p2, "visibleSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .local p3, "invisibleSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v0}, Landroid/view/autofill/AutofillManager;->-$$Nest$mgetClient(Landroid/view/autofill/AutofillManager;)Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 4554
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    if-nez v0, :cond_f

    goto :goto_40

    .line 4557
    :cond_f
    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientIsVisibleForAutofill()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 4558
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_20

    const-string v1, "AutofillManager"

    const-string v2, "client is visible, check tracked ids"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4559
    :cond_20
    invoke-interface {v0, p1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetViewVisibility([Landroid/view/autofill/AutofillId;)[Z

    move-result-object v1

    .local v1, "isVisible":[Z
    goto :goto_28

    .line 4562
    .end local v1    # "isVisible":[Z
    :cond_25
    array-length v1, p1

    new-array v1, v1, [Z

    .line 4565
    .restart local v1    # "isVisible":[Z
    :goto_28
    array-length v2, p1

    .line 4566
    .local v2, "numIds":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2a
    if-ge v3, v2, :cond_3f

    .line 4567
    aget-object v4, p1, v3

    .line 4568
    .local v4, "id":Landroid/view/autofill/AutofillId;
    invoke-virtual {v4}, Landroid/view/autofill/AutofillId;->resetSessionId()V

    .line 4570
    aget-boolean v5, v1, v3

    if-eqz v5, :cond_39

    .line 4571
    invoke-direct {p0, p2, v4}, Landroid/view/autofill/AutofillManager$TrackedViews;->addToSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    goto :goto_3c

    .line 4573
    :cond_39
    invoke-direct {p0, p3, v4}, Landroid/view/autofill/AutofillManager$TrackedViews;->addToSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    .line 4566
    .end local v4    # "id":Landroid/view/autofill/AutofillId;
    :goto_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 4576
    .end local v3    # "i":I
    :cond_3f
    return-void

    .line 4555
    .end local v1    # "isVisible":[Z
    .end local v2    # "numIds":I
    :cond_40
    :goto_40
    return-void
.end method

.method private greylist-max-o isInSet(Landroid/util/ArraySet;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 4465
    .local p1, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_a

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private blacklist processNoVisibleTrackedAllViews()V
    .registers 3

    .line 4692
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->this$0:Landroid/view/autofill/AutofillManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$fputmShowAutofillDialogCalled(Landroid/view/autofill/AutofillManager;Z)V

    .line 4693
    return-void
.end method

.method private greylist-max-o removeFromSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet<",
            "TT;>;TT;)",
            "Landroid/util/ArraySet<",
            "TT;>;"
        }
    .end annotation

    .line 4501
    .local p1, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .local p2, "valueToRemove":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 4502
    return-object v0

    .line 4505
    :cond_4
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 4507
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 4508
    return-object v0

    .line 4511
    :cond_e
    return-object p1
.end method


# virtual methods
.method blacklist checkViewState(Landroid/view/autofill/AutofillId;)V
    .registers 4
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 4696
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mHasNewTrackedView:Z

    if-eqz v0, :cond_5

    .line 4697
    return-void

    .line 4700
    :cond_5
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v0}, Landroid/view/autofill/AutofillManager;->-$$Nest$fgetmIsFillRequested(Landroid/view/autofill/AutofillManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4701
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mHasNewTrackedView:Z

    .line 4702
    return-void
.end method

.method greylist-max-o notifyViewVisibilityChangedLocked(Landroid/view/autofill/AutofillId;Z)V
    .registers 6
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "isVisible"    # Z

    .line 4586
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    const-string v1, "AutofillManager"

    if-eqz v0, :cond_26

    .line 4587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyViewVisibilityChangedLocked(): id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " isVisible="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4591
    :cond_26
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v0}, Landroid/view/autofill/AutofillManager;->-$$Nest$misClientVisibleForAutofillLocked(Landroid/view/autofill/AutofillManager;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 4592
    if-eqz p2, :cond_55

    .line 4593
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    invoke-direct {p0, v0, p1}, Landroid/view/autofill/AutofillManager$TrackedViews;->isInSet(Landroid/util/ArraySet;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 4594
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    invoke-direct {p0, v0, p1}, Landroid/view/autofill/AutofillManager$TrackedViews;->removeFromSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    .line 4595
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    invoke-direct {p0, v0, p1}, Landroid/view/autofill/AutofillManager$TrackedViews;->addToSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    .line 4597
    :cond_42
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleDialogTrackedIds:Landroid/util/ArraySet;

    invoke-direct {p0, v0, p1}, Landroid/view/autofill/AutofillManager$TrackedViews;->isInSet(Landroid/util/ArraySet;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 4598
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleDialogTrackedIds:Landroid/util/ArraySet;

    invoke-direct {p0, v0, p1}, Landroid/view/autofill/AutofillManager$TrackedViews;->removeFromSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    .line 4599
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleDialogTrackedIds:Landroid/util/ArraySet;

    invoke-direct {p0, v0, p1}, Landroid/view/autofill/AutofillManager$TrackedViews;->addToSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    goto :goto_83

    .line 4602
    :cond_55
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    invoke-direct {p0, v0, p1}, Landroid/view/autofill/AutofillManager$TrackedViews;->isInSet(Landroid/util/ArraySet;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 4603
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    invoke-direct {p0, v0, p1}, Landroid/view/autofill/AutofillManager$TrackedViews;->removeFromSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    .line 4604
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    invoke-direct {p0, v0, p1}, Landroid/view/autofill/AutofillManager$TrackedViews;->addToSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    .line 4606
    :cond_67
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleDialogTrackedIds:Landroid/util/ArraySet;

    invoke-direct {p0, v0, p1}, Landroid/view/autofill/AutofillManager$TrackedViews;->isInSet(Landroid/util/ArraySet;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 4607
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleDialogTrackedIds:Landroid/util/ArraySet;

    invoke-direct {p0, v0, p1}, Landroid/view/autofill/AutofillManager$TrackedViews;->removeFromSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    .line 4608
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleDialogTrackedIds:Landroid/util/ArraySet;

    invoke-direct {p0, v0, p1}, Landroid/view/autofill/AutofillManager$TrackedViews;->addToSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    goto :goto_83

    .line 4612
    :cond_7a
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_83

    .line 4615
    const-string v0, "notifyViewVisibilityChangedLocked(): ignoring view visibility change since activity has stopped"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4620
    :cond_83
    :goto_83
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mIsTrackedSaveView:Z

    if-eqz v0, :cond_b1

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 4621
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_ab

    .line 4622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No more visible tracked save ids. Invisible = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4625
    :cond_ab
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->this$0:Landroid/view/autofill/AutofillManager;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Landroid/view/autofill/AutofillManager;->-$$Nest$mfinishSessionLocked(Landroid/view/autofill/AutofillManager;I)V

    .line 4628
    :cond_b1
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleDialogTrackedIds:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 4629
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_d5

    .line 4630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No more visible tracked fill dialog ids. Invisible = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleDialogTrackedIds:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4633
    :cond_d5
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager$TrackedViews;->processNoVisibleTrackedAllViews()V

    .line 4635
    :cond_d8
    return-void
.end method

.method blacklist onVisibleForAutofillChangedInternalLocked(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Landroid/util/ArraySet<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 4676
    .local p1, "visibleSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .local p2, "invisibleSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_26

    .line 4677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVisibleForAutofillChangedLocked(): inv= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " vis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4681
    :cond_26
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4682
    .local v0, "allTrackedIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 4683
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 4684
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    .line 4685
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 4686
    invoke-virtual {p2}, Landroid/util/ArraySet;->clear()V

    .line 4687
    invoke-static {v0}, Landroid/view/autofill/Helper;->toArray(Ljava/util/Collection;)[Landroid/view/autofill/AutofillId;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Landroid/view/autofill/AutofillManager$TrackedViews;->initialTrackedViews([Landroid/view/autofill/AutofillId;Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 4689
    :cond_44
    return-void
.end method

.method greylist-max-o onVisibleForAutofillChangedLocked()V
    .registers 6

    .line 4646
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v0}, Landroid/view/autofill/AutofillManager;->-$$Nest$mgetClient(Landroid/view/autofill/AutofillManager;)Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 4647
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    const-string v1, "AutofillManager"

    if-eqz v0, :cond_40

    .line 4648
    sget-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_32

    .line 4649
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVisibleForAutofillChangedLocked(): inv= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4653
    :cond_32
    iget-object v2, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    iget-object v3, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    invoke-virtual {p0, v2, v3}, Landroid/view/autofill/AutofillManager$TrackedViews;->onVisibleForAutofillChangedInternalLocked(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 4654
    iget-object v2, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleDialogTrackedIds:Landroid/util/ArraySet;

    iget-object v3, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleDialogTrackedIds:Landroid/util/ArraySet;

    invoke-virtual {p0, v2, v3}, Landroid/view/autofill/AutofillManager$TrackedViews;->onVisibleForAutofillChangedInternalLocked(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 4658
    :cond_40
    iget-boolean v2, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mIsTrackedSaveView:Z

    const-string v3, "onVisibleForAutofillChangedLocked(): no more visible ids"

    if-eqz v2, :cond_5b

    iget-object v2, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 4659
    sget-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_55

    .line 4660
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4662
    :cond_55
    iget-object v2, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->this$0:Landroid/view/autofill/AutofillManager;

    const/4 v4, 0x4

    invoke-static {v2, v4}, Landroid/view/autofill/AutofillManager;->-$$Nest$mfinishSessionLocked(Landroid/view/autofill/AutofillManager;I)V

    .line 4664
    :cond_5b
    iget-object v2, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleDialogTrackedIds:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 4665
    sget-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_6a

    .line 4666
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4668
    :cond_6a
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager$TrackedViews;->processNoVisibleTrackedAllViews()V

    .line 4670
    :cond_6d
    return-void
.end method
