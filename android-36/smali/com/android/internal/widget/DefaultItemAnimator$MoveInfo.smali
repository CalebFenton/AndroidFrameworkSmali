.class Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/DefaultItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveInfo"
.end annotation


# instance fields
.field public blacklist fromX:I

.field public blacklist fromY:I

.field public blacklist holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

.field public blacklist toX:I

.field public blacklist toY:I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)V
    .registers 6
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 64
    iput p2, p0, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->fromX:I

    .line 65
    iput p3, p0, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->fromY:I

    .line 66
    iput p4, p0, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->toX:I

    .line 67
    iput p5, p0, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->toY:I

    .line 68
    return-void
.end method
