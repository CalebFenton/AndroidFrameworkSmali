.class Landroid/widget/AbsListView$PositionScroller$3;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsListView$PositionScroller;->startWithOffset(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/AbsListView$PositionScroller;

.field final synthetic val$duration:I

.field final synthetic val$position:I

.field final synthetic val$postOffset:I


# direct methods
.method constructor <init>(Landroid/widget/AbsListView$PositionScroller;III)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/AbsListView$PositionScroller;
    .param p2, "val$position"    # I
    .param p3, "val$postOffset"    # I
    .param p4, "val$duration"    # I

    #@0
    .prologue
    .line 7133
    iput-object p1, p0, Landroid/widget/AbsListView$PositionScroller$3;->this$1:Landroid/widget/AbsListView$PositionScroller;

    #@2
    iput p2, p0, Landroid/widget/AbsListView$PositionScroller$3;->val$position:I

    #@4
    iput p3, p0, Landroid/widget/AbsListView$PositionScroller$3;->val$postOffset:I

    #@6
    iput p4, p0, Landroid/widget/AbsListView$PositionScroller$3;->val$duration:I

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 7135
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller$3;->this$1:Landroid/widget/AbsListView$PositionScroller;

    #@2
    iget v1, p0, Landroid/widget/AbsListView$PositionScroller$3;->val$position:I

    #@4
    iget v2, p0, Landroid/widget/AbsListView$PositionScroller$3;->val$postOffset:I

    #@6
    iget v3, p0, Landroid/widget/AbsListView$PositionScroller$3;->val$duration:I

    #@8
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView$PositionScroller;->startWithOffset(III)V

    #@b
    .line 7134
    return-void
.end method
