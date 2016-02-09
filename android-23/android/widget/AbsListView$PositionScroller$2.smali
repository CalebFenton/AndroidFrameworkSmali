.class Landroid/widget/AbsListView$PositionScroller$2;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsListView$PositionScroller;->start(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/AbsListView$PositionScroller;

.field final synthetic val$boundPosition:I

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Landroid/widget/AbsListView$PositionScroller;II)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/AbsListView$PositionScroller;
    .param p2, "val$position"    # I
    .param p3, "val$boundPosition"    # I

    #@0
    .prologue
    .line 7053
    iput-object p1, p0, Landroid/widget/AbsListView$PositionScroller$2;->this$1:Landroid/widget/AbsListView$PositionScroller;

    #@2
    iput p2, p0, Landroid/widget/AbsListView$PositionScroller$2;->val$position:I

    #@4
    iput p3, p0, Landroid/widget/AbsListView$PositionScroller$2;->val$boundPosition:I

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 7055
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller$2;->this$1:Landroid/widget/AbsListView$PositionScroller;

    #@2
    iget v1, p0, Landroid/widget/AbsListView$PositionScroller$2;->val$position:I

    #@4
    iget v2, p0, Landroid/widget/AbsListView$PositionScroller$2;->val$boundPosition:I

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView$PositionScroller;->start(II)V

    #@9
    .line 7054
    return-void
.end method
