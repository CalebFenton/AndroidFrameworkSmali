.class interface abstract Lcom/android/internal/widget/AdapterHelper$Callback;
.super Ljava/lang/Object;
.source "AdapterHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/AdapterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callback"
.end annotation


# virtual methods
.method public abstract blacklist findViewHolder(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
.end method

.method public abstract blacklist markViewHoldersUpdated(IILjava/lang/Object;)V
.end method

.method public abstract blacklist offsetPositionsForAdd(II)V
.end method

.method public abstract blacklist offsetPositionsForMove(II)V
.end method

.method public abstract blacklist offsetPositionsForRemovingInvisible(II)V
.end method

.method public abstract blacklist offsetPositionsForRemovingLaidOutOrNewView(II)V
.end method

.method public abstract blacklist onDispatchFirstPass(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V
.end method

.method public abstract blacklist onDispatchSecondPass(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V
.end method
