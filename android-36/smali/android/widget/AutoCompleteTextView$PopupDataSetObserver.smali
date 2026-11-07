.class Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "AutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PopupDataSetObserver"
.end annotation


# instance fields
.field private final greylist-max-o mViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/AutoCompleteTextView;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o updateRunnable:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmViewReference(Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;->mViewReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private constructor greylist-max-o <init>(Landroid/widget/AutoCompleteTextView;)V
    .registers 3
    .param p1, "view"    # Landroid/widget/AutoCompleteTextView;

    .line 1537
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 1553
    new-instance v0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver$1;

    invoke-direct {v0, p0}, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver$1;-><init>(Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;)V

    iput-object v0, p0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;->updateRunnable:Ljava/lang/Runnable;

    .line 1538
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;->mViewReference:Ljava/lang/ref/WeakReference;

    .line 1539
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;-><init>(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public whitelist onChanged()V
    .registers 3

    .line 1543
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;->mViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 1544
    .local v0, "textView":Landroid/widget/AutoCompleteTextView;
    if-eqz v0, :cond_15

    invoke-static {v0}, Landroid/widget/AutoCompleteTextView;->-$$Nest$fgetmAdapter(Landroid/widget/AutoCompleteTextView;)Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 1549
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;->updateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->post(Ljava/lang/Runnable;)Z

    .line 1551
    :cond_15
    return-void
.end method
