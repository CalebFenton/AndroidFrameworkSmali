.class Landroid/widget/ListPopupWindow$DropDownListView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ListPopupWindow$DropDownListView;->clickPressedItem(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/ListPopupWindow$DropDownListView;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$id:J

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Landroid/widget/ListPopupWindow$DropDownListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/ListPopupWindow$DropDownListView;
    .param p2, "val$child"    # Landroid/view/View;
    .param p3, "val$position"    # I
    .param p4, "val$id"    # J

    #@0
    .prologue
    .line 1646
    iput-object p1, p0, Landroid/widget/ListPopupWindow$DropDownListView$2;->this$1:Landroid/widget/ListPopupWindow$DropDownListView;

    #@2
    iput-object p2, p0, Landroid/widget/ListPopupWindow$DropDownListView$2;->val$child:Landroid/view/View;

    #@4
    iput p3, p0, Landroid/widget/ListPopupWindow$DropDownListView$2;->val$position:I

    #@6
    iput-wide p4, p0, Landroid/widget/ListPopupWindow$DropDownListView$2;->val$id:J

    #@8
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 1649
    iget-object v0, p0, Landroid/widget/ListPopupWindow$DropDownListView$2;->this$1:Landroid/widget/ListPopupWindow$DropDownListView;

    #@2
    iget-object v1, p0, Landroid/widget/ListPopupWindow$DropDownListView$2;->val$child:Landroid/view/View;

    #@4
    iget v2, p0, Landroid/widget/ListPopupWindow$DropDownListView$2;->val$position:I

    #@6
    iget-wide v4, p0, Landroid/widget/ListPopupWindow$DropDownListView$2;->val$id:J

    #@8
    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/widget/ListPopupWindow$DropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    #@b
    .line 1648
    return-void
.end method
