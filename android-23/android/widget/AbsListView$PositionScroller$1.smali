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
.field final synthetic this$1:Landroid/widget/AbsListView$PositionScroller;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Landroid/widget/AbsListView$PositionScroller;I)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/AbsListView$PositionScroller;
    .param p2, "val$position"    # I

    #@0
    .prologue
    .line 7000
    iput-object p1, p0, Landroid/widget/AbsListView$PositionScroller$1;->this$1:Landroid/widget/AbsListView$PositionScroller;

    #@2
    iput p2, p0, Landroid/widget/AbsListView$PositionScroller$1;->val$position:I

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 7002
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller$1;->this$1:Landroid/widget/AbsListView$PositionScroller;

    #@2
    iget v1, p0, Landroid/widget/AbsListView$PositionScroller$1;->val$position:I

    #@4
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$PositionScroller;->start(I)V

    #@7
    .line 7001
    return-void
.end method
