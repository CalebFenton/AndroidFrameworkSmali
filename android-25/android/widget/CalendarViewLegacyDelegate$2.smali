.class Landroid/widget/CalendarViewLegacyDelegate$2;
.super Ljava/lang/Object;
.source "CalendarViewLegacyDelegate.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/CalendarViewLegacyDelegate;->setUpListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/CalendarViewLegacyDelegate;


# direct methods
.method constructor <init>(Landroid/widget/CalendarViewLegacyDelegate;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/CalendarViewLegacyDelegate;

    #@0
    .prologue
    .line 737
    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$2;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    #@0
    .prologue
    .line 745
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$2;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@2
    invoke-static {v0, p1, p2, p3, p4}, Landroid/widget/CalendarViewLegacyDelegate;->-wrap2(Landroid/widget/CalendarViewLegacyDelegate;Landroid/widget/AbsListView;III)V

    #@5
    .line 744
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    #@0
    .prologue
    .line 739
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$2;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@2
    invoke-static {v0, p1, p2}, Landroid/widget/CalendarViewLegacyDelegate;->-wrap1(Landroid/widget/CalendarViewLegacyDelegate;Landroid/widget/AbsListView;I)V

    #@5
    .line 738
    return-void
.end method
