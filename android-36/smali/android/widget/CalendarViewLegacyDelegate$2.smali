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
.field final synthetic blacklist this$0:Landroid/widget/CalendarViewLegacyDelegate;


# direct methods
.method constructor blacklist <init>(Landroid/widget/CalendarViewLegacyDelegate;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/CalendarViewLegacyDelegate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 759
    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$2;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onScroll(Landroid/widget/AbsListView;III)V
    .registers 6
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .line 767
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$2;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$monScroll(Landroid/widget/CalendarViewLegacyDelegate;Landroid/widget/AbsListView;III)V

    .line 769
    return-void
.end method

.method public whitelist onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .line 761
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$2;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v0, p1, p2}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$monScrollStateChanged(Landroid/widget/CalendarViewLegacyDelegate;Landroid/widget/AbsListView;I)V

    .line 762
    return-void
.end method
