.class public Lcom/android/internal/widget/RecyclerView$State;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/RecyclerView$State$LayoutState;
    }
.end annotation


# static fields
.field static final blacklist STEP_ANIMATIONS:I = 0x4

.field static final blacklist STEP_LAYOUT:I = 0x2

.field static final blacklist STEP_START:I = 0x1


# instance fields
.field private blacklist mData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mDeletedInvisibleItemCountSincePreviousLayout:I

.field blacklist mFocusedItemId:J

.field blacklist mFocusedItemPosition:I

.field blacklist mFocusedSubChildId:I

.field blacklist mInPreLayout:Z

.field blacklist mIsMeasuring:Z

.field blacklist mItemCount:I

.field blacklist mLayoutStep:I

.field blacklist mPreviousLayoutItemCount:I

.field blacklist mRunPredictiveAnimations:Z

.field blacklist mRunSimpleAnimations:Z

.field blacklist mStructureChanged:Z

.field private blacklist mTargetPosition:I

.field blacklist mTrackOldChangeHolders:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmTargetPosition(Lcom/android/internal/widget/RecyclerView$State;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/widget/RecyclerView$State;->mTargetPosition:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 11264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11279
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mTargetPosition:I

    .line 11290
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    .line 11296
    iput v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 11308
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mLayoutStep:I

    .line 11314
    iput v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mItemCount:I

    .line 11316
    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    .line 11318
    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    .line 11320
    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    .line 11322
    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 11328
    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 11330
    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    return-void
.end method


# virtual methods
.method blacklist assertLayoutStep(I)V
    .registers 5
    .param p1, "accepted"    # I

    .line 11270
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mLayoutStep:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_6

    .line 11275
    return-void

    .line 11271
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout state should be one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11272
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but it is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/RecyclerView$State;->mLayoutStep:I

    .line 11273
    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist didStructureChange()Z
    .registers 2

    .line 11487
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    return v0
.end method

.method public blacklist get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .line 11441
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_6

    .line 11442
    const/4 v0, 0x0

    return-object v0

    .line 11444
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getItemCount()I
    .registers 3

    .line 11515
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    if-eqz v0, :cond_a

    .line 11516
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    iget v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    sub-int/2addr v0, v1

    goto :goto_c

    .line 11517
    :cond_a
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mItemCount:I

    .line 11515
    :goto_c
    return v0
.end method

.method public blacklist getTargetScrollPosition()I
    .registers 2

    .line 11470
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mTargetPosition:I

    return v0
.end method

.method public blacklist hasTargetScrollPosition()Z
    .registers 3

    .line 11479
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mTargetPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist isMeasuring()Z
    .registers 2

    .line 11387
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mIsMeasuring:Z

    return v0
.end method

.method public blacklist isPreLayout()Z
    .registers 2

    .line 11395
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    return v0
.end method

.method blacklist prepareForNestedPrefetch(Lcom/android/internal/widget/RecyclerView$Adapter;)V
    .registers 3
    .param p1, "adapter"    # Lcom/android/internal/widget/RecyclerView$Adapter;

    .line 11364
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mLayoutStep:I

    .line 11365
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mItemCount:I

    .line 11366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    .line 11367
    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    .line 11368
    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    .line 11369
    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 11370
    return-void
.end method

.method public blacklist put(ILjava/lang/Object;)V
    .registers 4
    .param p1, "resourceId"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .line 11456
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    .line 11457
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    .line 11459
    :cond_b
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11460
    return-void
.end method

.method public blacklist remove(I)V
    .registers 3
    .param p1, "resourceId"    # I

    .line 11426
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    .line 11427
    return-void

    .line 11429
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 11430
    return-void
.end method

.method blacklist reset()Lcom/android/internal/widget/RecyclerView$State;
    .registers 2

    .line 11346
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mTargetPosition:I

    .line 11347
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-eqz v0, :cond_c

    .line 11348
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 11350
    :cond_c
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mItemCount:I

    .line 11351
    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    .line 11352
    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 11353
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 11522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State{mTargetPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mTargetPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreviousLayoutItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStructureChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInPreLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRunSimpleAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRunPredictiveAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist willRunPredictiveAnimations()Z
    .registers 2

    .line 11406
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    return v0
.end method

.method public blacklist willRunSimpleAnimations()Z
    .registers 2

    .line 11417
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    return v0
.end method
