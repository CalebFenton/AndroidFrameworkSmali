.class Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;
.super Ljava/lang/Object;
.source "CalendarViewLegacyDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CalendarViewLegacyDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollStateRunnable"
.end annotation


# instance fields
.field private blacklist mNewState:I

.field private blacklist mView:Landroid/widget/AbsListView;

.field final synthetic blacklist this$0:Landroid/widget/CalendarViewLegacyDelegate;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/CalendarViewLegacyDelegate;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 962
    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/CalendarViewLegacyDelegate;Landroid/widget/CalendarViewLegacyDelegate-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;-><init>(Landroid/widget/CalendarViewLegacyDelegate;)V

    return-void
.end method


# virtual methods
.method public blacklist doScrollStateChange(Landroid/widget/AbsListView;I)V
    .registers 6
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .line 975
    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    .line 976
    iput p2, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mNewState:I

    .line 977
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    iget-object v0, v0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v0, p0}, Landroid/widget/CalendarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 978
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    iget-object v0, v0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    const-wide/16 v1, 0x28

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/CalendarView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 979
    return-void
.end method

.method public whitelist test-api run()V
    .registers 6

    .line 982
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mNewState:I

    invoke-static {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fputmCurrentScrollState(Landroid/widget/CalendarViewLegacyDelegate;I)V

    .line 984
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mNewState:I

    if-nez v0, :cond_4b

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmPreviousScrollState(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v0

    if-eqz v0, :cond_4b

    .line 986
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 987
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_1d

    .line 989
    return-void

    .line 991
    :cond_1d
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmListScrollTopOffset(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 992
    .local v1, "dist":I
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmListScrollTopOffset(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v2

    if-le v1, v2, :cond_4b

    .line 993
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmIsScrollingUp(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v2

    const/16 v3, 0x1f4

    if-eqz v2, :cond_46

    .line 994
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {v2, v4, v3}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_4b

    .line 997
    :cond_46
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v1, v3}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 1001
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "dist":I
    :cond_4b
    :goto_4b
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mNewState:I

    invoke-static {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fputmPreviousScrollState(Landroid/widget/CalendarViewLegacyDelegate;I)V

    .line 1002
    return-void
.end method
