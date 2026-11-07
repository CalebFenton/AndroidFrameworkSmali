.class Landroid/widget/TableRow$ChildrenTracker;
.super Ljava/lang/Object;
.source "TableRow.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TableRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildrenTracker"
.end annotation


# instance fields
.field private greylist-max-o listener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field final synthetic blacklist this$0:Landroid/widget/TableRow;


# direct methods
.method static bridge synthetic blacklist -$$Nest$msetOnHierarchyChangeListener(Landroid/widget/TableRow$ChildrenTracker;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/TableRow$ChildrenTracker;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/widget/TableRow;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 527
    iput-object p1, p0, Landroid/widget/TableRow$ChildrenTracker;->this$0:Landroid/widget/TableRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/TableRow;Landroid/widget/TableRow-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/TableRow$ChildrenTracker;-><init>(Landroid/widget/TableRow;)V

    return-void
.end method

.method private greylist-max-o setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 531
    iput-object p1, p0, Landroid/widget/TableRow$ChildrenTracker;->listener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 532
    return-void
.end method


# virtual methods
.method public whitelist onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .line 536
    iget-object v0, p0, Landroid/widget/TableRow$ChildrenTracker;->this$0:Landroid/widget/TableRow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/TableRow;->-$$Nest$fputmColumnToChildIndex(Landroid/widget/TableRow;Landroid/util/SparseIntArray;)V

    .line 538
    iget-object v0, p0, Landroid/widget/TableRow$ChildrenTracker;->listener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_f

    .line 539
    iget-object v0, p0, Landroid/widget/TableRow$ChildrenTracker;->listener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 541
    :cond_f
    return-void
.end method

.method public whitelist onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .line 545
    iget-object v0, p0, Landroid/widget/TableRow$ChildrenTracker;->this$0:Landroid/widget/TableRow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/TableRow;->-$$Nest$fputmColumnToChildIndex(Landroid/widget/TableRow;Landroid/util/SparseIntArray;)V

    .line 547
    iget-object v0, p0, Landroid/widget/TableRow$ChildrenTracker;->listener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_f

    .line 548
    iget-object v0, p0, Landroid/widget/TableRow$ChildrenTracker;->listener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 550
    :cond_f
    return-void
.end method
