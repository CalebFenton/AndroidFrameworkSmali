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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AutoCompleteTextView$PopupDataSetObserver$1;
    }
.end annotation


# instance fields
.field private final mViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/AutoCompleteTextView;",
            ">;"
        }
    .end annotation
.end field

.field private final updateRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;)Ljava/lang/ref/WeakReference;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;->mViewReference:Ljava/lang/ref/WeakReference;

    #@2
    return-object v0
.end method

.method private constructor <init>(Landroid/widget/AutoCompleteTextView;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AutoCompleteTextView;

    #@0
    .prologue
    .line 1273
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    #@3
    .line 1289
    new-instance v0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver$1;

    #@5
    invoke-direct {v0, p0}, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver$1;-><init>(Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;)V

    #@8
    iput-object v0, p0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;->updateRunnable:Ljava/lang/Runnable;

    #@a
    .line 1274
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@c
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@f
    iput-object v0, p0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;->mViewReference:Ljava/lang/ref/WeakReference;

    #@11
    .line 1273
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AutoCompleteTextView;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;-><init>(Landroid/widget/AutoCompleteTextView;)V

    #@3
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    #@0
    .prologue
    .line 1279
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;->mViewReference:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/widget/AutoCompleteTextView;

    #@8
    .line 1280
    .local v0, "textView":Landroid/widget/AutoCompleteTextView;
    if-eqz v0, :cond_0

    #@a
    invoke-static {v0}, Landroid/widget/AutoCompleteTextView;->-get0(Landroid/widget/AutoCompleteTextView;)Landroid/widget/ListAdapter;

    #@d
    move-result-object v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 1285
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;->updateRunnable:Ljava/lang/Runnable;

    #@12
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->post(Ljava/lang/Runnable;)Z

    #@15
    .line 1278
    :cond_0
    return-void
.end method
