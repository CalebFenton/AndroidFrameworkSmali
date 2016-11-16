.class Landroid/widget/RelativeLayout$DependencyGraph$Node;
.super Ljava/lang/Object;
.source "RelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RelativeLayout$DependencyGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Node"
.end annotation


# static fields
.field private static final POOL_LIMIT:I = 0x64

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final dependencies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation
.end field

.field final dependents:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            "Landroid/widget/RelativeLayout$DependencyGraph;",
            ">;"
        }
    .end annotation
.end field

.field view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 1870
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    #@2
    const/16 v1, 0x64

    #@4
    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    #@7
    .line 1869
    sput-object v0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@9
    .line 1845
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1856
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    .line 1855
    iput-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Landroid/util/ArrayMap;

    #@a
    .line 1861
    new-instance v0, Landroid/util/SparseArray;

    #@c
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@f
    iput-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    #@11
    .line 1845
    return-void
.end method

.method static acquire(Landroid/view/View;)Landroid/widget/RelativeLayout$DependencyGraph$Node;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1873
    sget-object v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@2
    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    #@8
    .line 1874
    .local v0, "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    if-nez v0, :cond_0

    #@a
    .line 1875
    new-instance v0, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    #@c
    .end local v0    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    invoke-direct {v0}, Landroid/widget/RelativeLayout$DependencyGraph$Node;-><init>()V

    #@f
    .line 1877
    .restart local v0    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :cond_0
    iput-object p0, v0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    #@11
    .line 1878
    return-object v0
.end method


# virtual methods
.method release()V
    .locals 1

    #@0
    .prologue
    .line 1882
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    #@3
    .line 1883
    iget-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    #@8
    .line 1884
    iget-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    #@a
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    #@d
    .line 1886
    sget-object v0, Landroid/widget/RelativeLayout$DependencyGraph$Node;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@f
    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    #@12
    .line 1881
    return-void
.end method