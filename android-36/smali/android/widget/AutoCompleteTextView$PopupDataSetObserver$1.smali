.class Landroid/widget/AutoCompleteTextView$PopupDataSetObserver$1;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;


# direct methods
.method constructor blacklist <init>(Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1553
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver$1;->this$0:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 1556
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver$1;->this$0:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-static {v0}, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;->-$$Nest$fgetmViewReference(Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 1557
    .local v0, "textView":Landroid/widget/AutoCompleteTextView;
    if-nez v0, :cond_f

    .line 1558
    return-void

    .line 1560
    :cond_f
    invoke-static {v0}, Landroid/widget/AutoCompleteTextView;->-$$Nest$fgetmAdapter(Landroid/widget/AutoCompleteTextView;)Landroid/widget/ListAdapter;

    move-result-object v1

    .line 1561
    .local v1, "adapter":Landroid/widget/ListAdapter;
    if-nez v1, :cond_16

    .line 1562
    return-void

    .line 1564
    :cond_16
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    invoke-static {v0, v2}, Landroid/widget/AutoCompleteTextView;->-$$Nest$mupdateDropDownForFilter(Landroid/widget/AutoCompleteTextView;I)V

    .line 1565
    return-void
.end method
