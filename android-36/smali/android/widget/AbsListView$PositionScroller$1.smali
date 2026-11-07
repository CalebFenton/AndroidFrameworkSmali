.class Landroid/widget/AbsListView$PositionScroller$1;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsListView$PositionScroller;->start(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/AbsListView$PositionScroller;

.field final synthetic blacklist val$position:I


# direct methods
.method constructor blacklist <init>(Landroid/widget/AbsListView$PositionScroller;I)V
    .registers 3
    .param p1, "this$1"    # Landroid/widget/AbsListView$PositionScroller;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7819
    iput-object p1, p0, Landroid/widget/AbsListView$PositionScroller$1;->this$1:Landroid/widget/AbsListView$PositionScroller;

    iput p2, p0, Landroid/widget/AbsListView$PositionScroller$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 7821
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller$1;->this$1:Landroid/widget/AbsListView$PositionScroller;

    iget v1, p0, Landroid/widget/AbsListView$PositionScroller$1;->val$position:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$PositionScroller;->start(I)V

    .line 7822
    return-void
.end method
