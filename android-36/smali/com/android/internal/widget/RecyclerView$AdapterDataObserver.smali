.class public abstract Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AdapterDataObserver"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 10686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onChanged()V
    .registers 1

    .line 10689
    return-void
.end method

.method public blacklist onItemRangeChanged(II)V
    .registers 3
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 10693
    return-void
.end method

.method public blacklist onItemRangeChanged(IILjava/lang/Object;)V
    .registers 4
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 10698
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(II)V

    .line 10699
    return-void
.end method

.method public blacklist onItemRangeInserted(II)V
    .registers 3
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 10703
    return-void
.end method

.method public blacklist onItemRangeMoved(III)V
    .registers 4
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .line 10711
    return-void
.end method

.method public blacklist onItemRangeRemoved(II)V
    .registers 3
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 10707
    return-void
.end method
